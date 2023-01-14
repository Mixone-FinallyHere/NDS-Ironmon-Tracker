MiscUtils = {}

function MiscUtils.inlineIf(condition, T, F)
    if condition then
        return T
    else
        return F
    end
end

function MiscUtils.readOnly(t)
    local proxy = {}
    local metatable = {
        __index = t,
        __newindex = function()
            error("attempt to update a read-only table", 2)
        end
    }
    setmetatable(proxy, metatable)
    return proxy
end

function MiscUtils.boolToNumber(value)
    return value and 1 or 0
end

function MiscUtils.numberToBool(value)
    if value == 1 then
        return true
    end
    return false
end

function MiscUtils.decreaseTableIndex(index, size)
    return ((index + size - 2) % size) + 1
end

function MiscUtils.increaseTableIndex(index, size)
    return (index % size) + 1
end

function MiscUtils.split(s, delimiter, trimWhitespace)
    local result = {}
    for match in (s .. delimiter):gmatch("(.-)" .. delimiter) do
        if trimWhitespace then
            match = match:gsub("^%s*(.-)%s*$", "%1")
        end
        table.insert(result, match)
    end
    return result
end

function MiscUtils.sortPokemonIDsByName(ids)
    table.sort(
        ids,
        function(k1, k2)
            return PokemonData.POKEMON[k1 + 1].name < PokemonData.POKEMON[k2 + 1].name
        end
    )
end

function MiscUtils.shallowCopy(original)
    local copy = {}
    for key, value in pairs(original) do
        copy[key] = value
    end
    return copy
end

function MiscUtils.tableContains(table, value)
    for _, item in pairs(table) do
        if item == value then
            return true
        end
    end
    return false
end

function MiscUtils.mouseInRange(mouseX, mouseY, controlX, controlY, width, height)
    if mouseX >= controlX and mouseX <= controlX + width then
        if mouseY >= controlY and mouseY <= controlY + height then
            return true
        end
    end
    return false
end

function MiscUtils.round(number)
    return math.floor(number + 0.5)
end

function MiscUtils.splitTableByNumber(tbl, number)
    local sets = {}
    local currentSet = {}
    for index, val in pairs(tbl) do
        if #currentSet == number then
            table.insert(sets, MiscUtils.deepCopy(currentSet))
            currentSet = {}
        end
        table.insert(currentSet, val)
    end
    if #currentSet ~= 0 then
        table.insert(sets, MiscUtils.deepCopy(currentSet))
    end
    return sets
end

function MiscUtils.deepCopy(o, seen)
    seen = seen or {}
    if o == nil then
        return nil
    end
    if seen[o] then
        return seen[o]
    end

    local no
    if type(o) == "table" then
        no = {}
        seen[o] = no

        for k, v in next, o, nil do
            no[MiscUtils.deepCopy(k, seen)] = MiscUtils.deepCopy(v, seen)
        end
        setmetatable(no, MiscUtils.deepCopy(getmetatable(o), seen))
    else -- number, string, boolean, etc
        no = o
    end
    return no
end

function MiscUtils.randomTableValue(t)
    return t[math.random(#t)]
end

function MiscUtils.removeRandomTableValue(t)
    local randomIndex = math.random(#t)
    local value = t[randomIndex]
    table.remove(t, randomIndex)
    return value
end

function MiscUtils.combineTables(t1, t2)
    for _, value in pairs(t2) do
        table.insert(t1, value)
    end
end

function MiscUtils.appendStringToFile(fileName, stringData)
    local file = io.open(fileName, "a")
    if file ~= nil then
        file:write(stringData)
        file:close()
    end
end

function MiscUtils.fileExists(fileName)
    local file = io.open(fileName, "r")
    return file ~= nil and io.close(file)
end

function MiscUtils.saveTableToFile(fileName, tableData)
    local file = io.open(fileName, "w")
    if file ~= nil then
        local data = Pickle.pickle(tableData)
        file:write(data)
        file:close()
    end
end

function MiscUtils.getTableFromFile(fileName)
    local file = io.open(fileName, "r")
    if file ~= nil then
        local fileContents = file:read("*a")
        file:close()
        local savedData
        if fileContents ~= nil and fileContents ~= "" then
            savedData = Pickle.unpickle(fileContents)
            return savedData
        end
    end
end
