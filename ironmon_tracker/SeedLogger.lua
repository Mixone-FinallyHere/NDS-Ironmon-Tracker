local function SeedLogger(initialProgram, initialGameName)
    local PastRun = dofile(Paths.FOLDERS.DATA_FOLDER .. "/PastRun.lua")
    local StatisticsOrganizer = dofile(Paths.FOLDERS.DATA_FOLDER .. "/StatisticsOrganizer.lua")

    local pastRuns = {}
    local self = {}

    local program = initialProgram
    local gameName = initialGameName
    local totalRuns = 0
    local pastHashLogged = nil
    local pastRunKeyList = {}

    local encodingConstants = {
        POKEMON_KEY_LIST = {
            "ability",
            "alternateForm",
            "curHP",
            "friendship",
            "heldItem",
            "isEgg",
            "isFemale",
            "level",
            "move1",
            "move2",
            "move3",
            "move4",
            "move1PP",
            "move2PP",
            "move3PP",
            "move4PP",
            "nature",
            "pid",
            "pokemonID",
            "HP",
            "ATK",
            "DEF",
            "SPA",
            "SPD",
            "SPE",
            "status"
        }
    }

    self.SORT_METHODS = {
        NEWEST = 0,
        OLDEST = 1,
        A_TO_Z = 2
    }

    local function filterPastRunsByBadgeCount(pastRunHashes, badgeCount)
        local newHashes = {}
        for _, hash in pairs(pastRunHashes) do
            local run = pastRuns[hash]
            if run.getBadgeCount() >= badgeCount then
                table.insert(newHashes, hash)
            end
        end
        return newHashes
    end

    function self.getTotalRunsPastLab()
        return #pastRunKeyList
    end

    function self.getTotalRuns()
        return totalRuns
    end

    --convert to comma separated values to save space (pickle will eat space and make past run loading slow)
    local function pokemonToCSV(pokemon)
        local CSV = ""
        for _, key in pairs(encodingConstants.POKEMON_KEY_LIST) do
            if not pokemon[key] then
                print(key)
                return nil
            end
            CSV = CSV .. pokemon[key] .. ","
        end
        CSV = CSV:sub(1, -2) .. "\n"
        return CSV
    end

    local function decodeCSVPokemon(input)
        local pokemonValues = MiscUtils.split(input, ",")
        local pokemon = {}
        for i, value in pairs(pokemonValues) do
            local key = encodingConstants.POKEMON_KEY_LIST[i]
            pokemon[key] = tonumber(value)
        end
        pokemon.moveIDs = {
            pokemon.move1,
            pokemon.move2,
            pokemon.move3,
            pokemon.move4
        }
        pokemon.movePPs = {
            pokemon.move1PP,
            pokemon.move2PP,
            pokemon.move3PP,
            pokemon.move4PP
        }
        pokemon.stats = {
            HP = pokemon.HP,
            ATK = pokemon.ATK,
            DEF = pokemon.DEF,
            SPA = pokemon.SPA,
            SPD = pokemon.SPD,
            SPE = pokemon.SPE
        }
        program.addAdditionalDataToPokemon(pokemon)
        return pokemon
    end

    local function decodeCSVBadgeSet(input)
        local badgeValues = MiscUtils.split(input, ",")
        local badges = {}
        for index, badgeValue in pairs(badgeValues) do
            badges[index] = tonumber(badgeValue)
        end
        return badges
    end

    local function badgeSetToCSV(badgeSet)
        local CSV = ""
        for _, badge in pairs(badgeSet) do
            CSV = CSV .. badge .. ","
        end
        CSV = CSV:sub(1, -2) .. "\n"
        return CSV
    end

    local function runToCSV(runHash, pastRun)
        local CSV = "log start\n"
        CSV = CSV .. runHash .. "\n"
        CSV = CSV .. pastRun.getDate() .. ","..pastRun.getSeconds().."\n"
        CSV = CSV .. pokemonToCSV(pastRun.getFaintedPokemon())
        CSV = CSV .. pokemonToCSV(pastRun.getEnemyPokemon())
        local badges = pastRun.getBadges()
        CSV = CSV .. badgeSetToCSV(badges.firstSet)
        CSV = CSV .. badgeSetToCSV(badges.secondSet)
        CSV = CSV .. pastRun.getLocation() .. "\n"
        CSV = CSV .. pastRun.getProgress() .. "\n"
        return CSV
    end

    local function parsePastRunFromLineLocation(lines, lineStart)
        local date, seconds = lines[lineStart]:match("(.*),(.*)")
        seconds = tonumber(seconds)
        local faintedPokemonCSV = lines[lineStart + 1]
        local enemyPokemonCSV = lines[lineStart + 2]
        local badgeSet1CSV = lines[lineStart + 3]
        local badgeSet2CSV = lines[lineStart + 4]
        local location = lines[lineStart + 5]
        local faintedPokemon = decodeCSVPokemon(faintedPokemonCSV)
        local enemyPokemon = decodeCSVPokemon(enemyPokemonCSV)
        local badgeSet1 = decodeCSVBadgeSet(badgeSet1CSV)
        local badgeSet2 = decodeCSVBadgeSet(badgeSet2CSV)
        local badges = {
            ["firstSet"] = badgeSet1,
            ["secondSet"] = badgeSet2
        }
        local progress = tonumber(lines[lineStart + 6])
        local pastRun = PastRun(date, seconds, faintedPokemon, enemyPokemon, location, badges, progress)
        return pastRun
    end

    local function loadPastRuns()
        pastRuns = {}
        local lines = {}
        local fileName = gameName .. ".pastlog"
        local currentRunIndex = 1
        if MiscUtils.fileExists(fileName) then
            for line in io.lines(fileName) do
                table.insert(lines, line)
            end
            if #lines > 0 then
                totalRuns = tonumber(lines[1], 10)
                for index, line in pairs(lines) do
                    if line == "log start" then
                        local pastRunHash = lines[index + 1]
                        local pastRun = parsePastRunFromLineLocation(lines, index + 2)
                        pastRuns[pastRunHash] = pastRun
                        pastRunKeyList[currentRunIndex] = pastRunHash
                        currentRunIndex = currentRunIndex + 1
                    end
                end
            end
        end
    end

    local function saveRunsToFile()
        local fileName = gameName .. ".pastlog"
        --empties the file before beginning appending process
        io.open(fileName, "w"):close()
        local completeRunString = totalRuns .. "\n"
        for runHash, run in pairs(pastRuns) do
            local runCSV = runToCSV(runHash, run)
            completeRunString = completeRunString .. runCSV
        end
        MiscUtils.appendStringToFile(fileName, completeRunString)
    end

    local function sortPastRunKeys(keys, runComparingFunction)
        table.sort(
            keys,
            function(hash1, hash2)
                local pastRun1, pastRun2 = pastRuns[hash1], pastRuns[hash2]
                return runComparingFunction(pastRun1, pastRun2)
            end
        )
    end

    function self.getPastRuns()
        return pastRuns
    end

    function self.getPastRunHashesNewestFirst()
        local keys = MiscUtils.shallowCopy(pastRunKeyList)
        local function sortFunction(pastRun1, pastRun2)
            return pastRun1.getSeconds() > pastRun2.getSeconds()
        end
        sortPastRunKeys(keys, sortFunction)
        return keys 
    end

    function self.getPastRunHashesOldestFirst()
        local keys = MiscUtils.shallowCopy(pastRunKeyList)
        local function sortFunction(pastRun1, pastRun2)
            return pastRun1.getSeconds() < pastRun2.getSeconds()
        end
        sortPastRunKeys(keys, sortFunction)
        return keys 
    end
    
    function self.getPastRunHashesAToZ()
        local keys = MiscUtils.shallowCopy(pastRunKeyList)
        local function sortFunction(pastRun1, pastRun2)
            return pastRun1.getFaintedPokemon().name < pastRun2.getFaintedPokemon().name
        end
        sortPastRunKeys(keys, sortFunction)
        return keys 
    end

    function self.getPastRunHashesSorted(sortMethod, badgeFilter)
        local sortMethodToFunction = {
            [self.SORT_METHODS.A_TO_Z] = self.getPastRunHashesAToZ,
            [self.SORT_METHODS.NEWEST] = self.getPastRunHashesNewestFirst,
            [self.SORT_METHODS.OLDEST] = self.getPastRunHashesOldestFirst,
        }
        local pastRunHashes = sortMethodToFunction[sortMethod]()
        return filterPastRunsByBadgeCount(pastRunHashes, badgeFilter)
    end

    function self.getDefaultPastRun()
        return PastRun(
            "",
            0,
            MiscUtils.shallowCopy(MiscConstants.DEFAULT_POKEMON),
            MiscUtils.shallowCopy(MiscConstants.DEFAULT_POKEMON),
            "",
            {
                firstSet = {0, 0, 0, 0, 0, 0, 0, 0},
                secondSet = {0, 0, 0, 0, 0, 0, 0, 0}
            },
            0
        )
    end

    --keep past lab, but no badge records to a maximum of 100 to prevent large file
    local function capLabRuns()
        local keys = self.getPastRunHashesNewestFirst()
        local labKeys = {}
            for _, key in pairs(keys) do
                local run = pastRuns[key]
                if run.getProgress() == PlaythroughConstants.PROGRESS.PAST_LAB and run.getBadgeCount() == 0 then
                    table.insert(labKeys, key)
                end
            end
        if #labKeys > 100 then
            for i = 101, #labKeys, 1 do
                local key = labKeys[i]
                pastRuns[key] = nil
            end
        end
    end

    function self.logRun(pastRun)
        totalRuns = totalRuns + 1
        local ROMHash = gameinfo.getromhash()
        if pastHashLogged ~= ROMHash then
            if pastRun.getProgress() > PlaythroughConstants.PROGRESS.NOWHERE then
                if not pastRuns[ROMHash] then
                    print("logging run")
                    pastRuns[ROMHash] = pastRun
                    table.insert(pastRunKeyList, ROMHash)
                    capLabRuns()
                    pastHashLogged = ROMHash
                end
            end
        end
        saveRunsToFile()
    end

    loadPastRuns()

    return self
end

return SeedLogger
