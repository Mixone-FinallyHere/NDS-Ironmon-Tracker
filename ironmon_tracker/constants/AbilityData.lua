AbilityData = {}

AbilityData.ABILITIES =
    MiscUtils.readOnly(
    {
        {
            id = 0,
            name = "---",
            description = ""
        },
        {
            id = 1,
            name = "Stench",
            description = {
                "Helps repel wild Pokemon.",
                "Has a 10% chance of making target Pok\233mon flinch with each hit."
            }
        },
        {
            id = 2,
            name = "Drizzle",
            description = "Summons rain that lasts indefinitely upon entering battle."
        },
        {
            id = 3,
            name = "Speed Boost",
            description = "Raises Speed one stage after each turn."
        },
        {
            id = 4,
            name = "Battle Armor",
            description = "Protects against critical hits."
        },
        {
            id = 5,
            name = "Sturdy",
            description = {
                "Prevents OHKO moves like Guillotine from working.",
                "Prevents being KOed from full HP, and this includes moves such as Guillotine and Sheer Cold."
            }
        },
        {
            id = 6,
            name = "Damp",
            description = "Prevents self destruct, explosion, and aftermath from working while the Pok\233mon is in battle."
        },
        {
            id = 7,
            name = "Limber",
            description = "Prevents paralysis."
        },
        {
            id = 8,
            name = "Sand Veil",
            description = "Increases evasion to 1.25x during a sandstorm. Protects against sandstorm damage."
        },
        {
            id = 9,
            name = "Static",
            description = "Has a 30% chance of paralyzing attacking Pok\233mon on contact."
        },
        {
            id = 10,
            name = "Volt Absorb",
            description = "Absorbs electric moves, healing for 1/4 max HP."
        },
        {
            id = 11,
            name = "Water Absorb",
            description = "Absorbs water moves, healing for 1/4 max HP."
        },
        {
            id = 12,
            name = "Oblivious",
            description = "Prevents infatuation and protects against captivate."
        },
        {
            id = 13,
            name = "Cloud Nine",
            description = "Negates all effects of weather, but does not prevent the weather itself."
        },
        {
            id = 14,
            name = "Compoundeyes",
            description = "Increases moves' accuracy to 1.3x."
        },
        {
            id = 15,
            name = "Insomnia",
            description = "Prevents sleep."
        },
        {
            id = 16,
            name = "Color Change",
            description = "Changes type to match when hit by a damaging move."
        },
        {
            id = 17,
            name = "Immunity",
            description = "Prevents poison."
        },
        {
            id = 18,
            name = "Flash Fire",
            description = "Protects against fire moves. Once one has been blocked, the Pok\233mon's own Fire moves inflict 1.5x damage until it leaves battle."
        },
        {
            id = 19,
            name = "Shield Dust",
            description = "Protects against incoming moves' extra effects."
        },
        {
            id = 20,
            name = "Own Tempo",
            description = "Prevents confusion."
        },
        {
            id = 21,
            name = "Suction Cups",
            description = "Prevents being forced out of battle by other Pok\233mon's moves."
        },
        {
            id = 22,
            name = "Intimidate",
            description = "Lowers opponents' Attack one stage upon entering battle."
        },
        {
            id = 23,
            name = "Shadow Tag",
            description = "Prevents opponents from fleeing or switching out."
        },
        {
            id = 24,
            name = "Rough Skin",
            description = "Damages attacking Pok\233mon for 1/8 their max HP on contact."
        },
        {
            id = 25,
            name = "Wonder Guard",
            description = "Protects against damaging moves that are not super effective."
        },
        {
            id = 26,
            name = "Levitate",
            description = "Evades ground moves."
        },
        {
            id = 27,
            name = "Effect Spore",
            description = "Has a 30% chance of inflcting either paralysis, poison, or sleep on attacking Pok\233mon on contact."
        },
        {
            id = 28,
            name = "Synchronize",
            description = "Copies burns, paralysis, and poison received onto the Pok\233mon that inflicted them."
        },
        {
            id = 29,
            name = "Clear Body",
            description = "Prevents stats from being lowered by other Pokemon."
        },
        {
            id = 30,
            name = "Natural Cure",
            description = "Cures any major status ailment upon switching out or completing a battle."
        },
        {
            id = 31,
            name = "Lightning Rod",
            description = {
                "Redirects single-target electric moves to this Pok\233mon where possible.",
                "Redirects electric moves to this Pok\233mon and absorbs them, raising Special Attack one stage."
            }
        },
        {
            id = 32,
            name = "Serene Grace",
            description = "Doubles the chance of moves' extra effects occurring."
        },
        {
            id = 33,
            name = "Swift Swim",
            description = "Doubles Speed during rain."
        },
        {
            id = 34,
            name = "Chlorophyll",
            description = "Doubles Speed during strong sunlight."
        },
        {
            id = 35,
            name = "Illuminate",
            description = "Doubles the wild encounter rate."
        },
        {
            id = 36,
            name = "Trace",
            description = "Copies an opponent's ability upon entering battle."
        },
        {
            id = 37,
            name = "Huge Power",
            description = "Doubles Attack in battle."
        },
        {
            id = 38,
            name = "Poison Point",
            description = "Has a 30% chance of poisoning attacking Pok\233mon on contact."
        },
        {
            id = 39,
            name = "Inner Focus",
            description = "Prevents flinching."
        },
        {
            id = 40,
            name = "Magma Armor",
            description = "Prevents freezing."
        },
        {
            id = 41,
            name = "Water Veil",
            description = "Prevents burns."
        },
        {
            id = 42,
            name = "Magnet Pull",
            description = "Prevents steel opponents from fleeing or switching out."
        },
        {
            id = 43,
            name = "Soundproof",
            description = "Protects against sound-based moves."
        },
        {
            id = 44,
            name = "Rain Dish",
            description = "Heals for 1/16 max HP after each turn during rain."
        },
        {
            id = 45,
            name = "Sand Stream",
            description = "Summons a sandstorm that lasts indefinitely upon entering battle."
        },
        {
            id = 46,
            name = "Pressure",
            description = "Increases the PP cost of moves targeting the Pok\233mon by one."
        },
        {
            id = 47,
            name = "Thick Fat",
            description = "Halves damage from fire and ice moves."
        },
        {
            id = 48,
            name = "Early Bird",
            description = "Makes sleep pass twice as quickly."
        },
        {
            id = 49,
            name = "Flame Body",
            description = "Has a 30% chance of burning attacking Pok\233mon on contact."
        },
        {
            id = 50,
            name = "Run Away",
            description = "Ensures success fleeing from wild battles."
        },
        {
            id = 51,
            name = "Keen Eye",
            description = "Prevents accuracy from being lowered."
        },
        {
            id = 52,
            name = "Hyper Cutter",
            description = "Prevents Attack from being lowered by other Pokemon."
        },
        {
            id = 53,
            name = "Pickup",
            description = "Picks up other Pok\233mon's used and Flung held items. May also pick up an item after battle."
        },
        {
            id = 54,
            name = "Truant",
            description = "Skips every second turn."
        },
        {
            id = 55,
            name = "Hustle",
            description = "Strengthens physical moves to inflict 1.5x damage, but decreases their accuracy to 0.8x."
        },
        {
            id = 56,
            name = "Cute Charm",
            description = "Has a 30% chance of infatuating attacking Pok\233mon on contact."
        },
        {
            id = 57,
            name = "Plus",
            description = "Increases Special Attack to 1.5x when a friendly Pok\233mon has plus or minus."
        },
        {
            id = 58,
            name = "Minus",
            description = "Increases Special Attack to 1.5x when a friendly Pok\233mon has plus or minus."
        },
        {
            id = 59,
            name = "Forecast",
            description = "Changes Castform's type and form to match the weather."
        },
        {
            id = 60,
            name = "Sticky Hold",
            description = "Prevents a held item from being removed by other Pokemon."
        },
        {
            id = 61,
            name = "Shed Skin",
            description = "Has a 33% chance of curing any major status ailment after each turn."
        },
        {
            id = 62,
            name = "Guts",
            description = "Increases Attack to 1.5x with a major status ailment."
        },
        {
            id = 63,
            name = "Marvel Scale",
            description = "Increases Defense to 1.5x with a major status ailment."
        },
        {
            id = 64,
            name = "Liquid Ooze",
            description = "Damages opponents using leeching moves for as much as they would heal."
        },
        {
            id = 65,
            name = "Overgrow",
            description = "Strengthens grass moves to inflict 1.5x damage at 1/3 max HP or less."
        },
        {
            id = 66,
            name = "Blaze",
            description = "Strengthens fire moves to inflict 1.5x damage at 1/3 max HP or less."
        },
        {
            id = 67,
            name = "Torrent",
            description = "Strengthens water moves to inflict 1.5x damage at 1/3 max HP or less."
        },
        {
            id = 68,
            name = "Swarm",
            description = "Strengthens bug moves to inflict 1.5x damage at 1/3 max HP or less."
        },
        {
            id = 69,
            name = "Rock Head",
            description = "Protects against recoil damage."
        },
        {
            id = 70,
            name = "Drought",
            description = "Summons strong sunlight that lasts indefinitely upon entering battle."
        },
        {
            id = 71,
            name = "Arena Trap",
            description = "Prevents opponents from fleeing or switching out. Eluded by flying-types and Pok\233mon in the air."
        },
        {
            id = 72,
            name = "Vital Spirit",
            description = "Prevents sleep."
        },
        {
            id = 73,
            name = "White Smoke",
            description = "Prevents stats from being lowered by other Pokemon."
        },
        {
            id = 74,
            name = "Pure Power",
            description = "Doubles Attack in battle."
        },
        {
            id = 75,
            name = "Shell Armor",
            description = "Protects against critical hits."
        },
        {
            id = 76,
            name = "Air Lock",
            description = "Negates all effects of weather, but does not prevent the weather itself."
        },
        {
            id = 77,
            name = "Tangled Feet",
            description = "Doubles evasion when confused."
        },
        {
            id = 78,
            name = "Motor Drive",
            description = "Absorbs electric moves, raising Speed one stage."
        },
        {
            id = 79,
            name = "Rivalry",
            description = "Increases damage inflicted to 1.25x against Pok\233mon of the same gender, but decreases damage to 0.75x against the opposite gender."
        },
        {
            id = 80,
            name = "Steadfast",
            description = "Raises Speed one stage upon flinching."
        },
        {
            id = 81,
            name = "Snow Cloak",
            description = "Increases evasion to 1.25x during hail. Protects against hail damage."
        },
        {
            id = 82,
            name = "Gluttony",
            description = "Makes the Pok\233mon eat any held Berry triggered by low HP below 1/2 its max HP."
        },
        {
            id = 83,
            name = "Anger point",
            description = "Raises Attack to the maximum of six stages upon receiving a critical hit."
        },
        {
            id = 84,
            name = "Unburden",
            description = "Doubles Speed upon using or losing a held item."
        },
        {
            id = 85,
            name = "Heatproof",
            description = "Halves damage from fire moves and burns."
        },
        {
            id = 86,
            name = "Simple",
            description = "Doubles the Pok\233mon's stat modifiers. These doubled modifiers are still capped at -6 or 6 stages."
        },
        {
            id = 87,
            name = "Dry Skin",
            description = "Causes 1/8 max HP in damage each turn during strong sunlight, but heals for 1/8 max HP during rain. Increases damage from fire moves to 1.25x, but absorbs water moves, healing for 1/4 max HP."
        },
        {
            id = 88,
            name = "Download",
            description = "Raises the attack stat corresponding to the opponents' weaker defense one stage upon entering battle."
        },
        {
            id = 89,
            name = "Iron Fist",
            description = "Strengthens punch-based moves to 1.2x their power."
        },
        {
            id = 90,
            name = "Poison Heal",
            description = "Heals for 1/8 max HP after each turn when poisoned in place of damage."
        },
        {
            id = 91,
            name = "Adaptability",
            description = "Increases the same-type attack bonus from 1.5x to 2x."
        },
        {
            id = 92,
            name = "Skill Link",
            description = "Extends two-to-five-hit moves and triple kick to their full length every time."
        },
        {
            id = 93,
            name = "Hydration",
            description = "Cures any major status ailment after each turn during rain."
        },
        {
            id = 94,
            name = "Solar Power",
            description = "Increases Special Attack to 1.5x but costs 1/8 max HP after each turn during strong sunlight."
        },
        {
            id = 95,
            name = "Quick Feet",
            description = "Increases Speed to 1.5x with a major status ailment."
        },
        {
            id = 96,
            name = "Normalize",
            description = "Makes the Pok\233mon's moves all act normal-type."
        },
        {
            id = 97,
            name = "Sniper",
            description = "Strengthens critical hits to inflict 3x damage rather than 2x."
        },
        {
            id = 98,
            name = "Magic Guard",
            description = "Protects against damage not directly caused by a move."
        },
        {
            id = 99,
            name = "No Guard",
            description = "Ensures all moves used by and against the Pok\233mon hit."
        },
        {
            id = 100,
            name = "Stall",
            description = "Makes the Pok\233mon move last within its move's priority bracket."
        },
        {
            id = 101,
            name = "Technician",
            description = "Strengthens moves of 60 base power or less to 1.5x their power."
        },
        {
            id = 102,
            name = "Leaf Guard",
            description = "Protects against major status ailments during strong sunlight."
        },
        {
            id = 103,
            name = "Klutz",
            description = "Verhindert, dass das Pok\233mon ein getragenes Item im Kampf einsetzt."
        },
        {
            id = 104,
            name = "Mold Breaker",
            description = "Bypasses targets' abilities if they could hinder or prevent a move."
        },
        {
            id = 105,
            name = "Super Luck",
            description = "Raises moves' critical hit rates one stage."
        },
        {
            id = 106,
            name = "Aftermath",
            description = "Damages the attacker for 1/4 its max HP when knocked out by a contact move."
        },
        {
            id = 107,
            name = "Anticipation",
            description = "Notifies all trainers upon entering battle if an opponent has a super-effective move, self destruct, explosion, or a one-hit KO move."
        },
        {
            id = 108,
            name = "Forewarn",
            description = "Reveals the opponents' strongest move upon entering battle."
        },
        {
            id = 109,
            name = "Unaware",
            description = "Ignores other Pok\233mon's stat modifiers for damage and accuracy calculation."
        },
        {
            id = 110,
            name = "Tinted Lens",
            description = "Doubles damage inflicted with not-very-effective moves."
        },
        {
            id = 111,
            name = "Filter",
            description = "Decreases damage taken from super-effective moves by 1/4."
        },
        {
            id = 112,
            name = "Slow Start",
            description = "Halves Attack and Speed for five turns upon entering battle."
        },
        {
            id = 113,
            name = "Scrappy",
            description = "Lets the Pok\233mon's normal and fighting moves hit ghost Pokemon."
        },
        {
            id = 114,
            name = "Storm Drain",
            description = {
                "Redirects single-target water moves to this Pokemon.",
                "Redirects single-target water moves to this Pok\233mon and absorbs them, raising Special Attack one stage."
            }
        },
        {
            id = 115,
            name = "Ice Body",
            description = "Heals for 1/16 max HP after each turn during hail. Protects against hail damage."
        },
        {
            id = 116,
            name = "Solid Rock",
            description = "Decreases damage taken from super-effective moves by 1/4."
        },
        {
            id = 117,
            name = "Snow Warning",
            description = "Summons hail that lasts indefinitely upon entering battle."
        },
        {
            id = 118,
            name = "Honey Gather",
            description = "The Pok\233mon may pick up honey after battle."
        },
        {
            id = 119,
            name = "Frisk",
            description = "Enthüllt bei Kampfantritt das getragene Item des Gegners."
        },
        {
            id = 120,
            name = "Reckless",
            description = "Strengthens recoil moves to 1.2x their power."
        },
        {
            id = 121,
            name = "Multitype",
            description = "Changes arceus's type and form to match its held Plate."
        },
        {
            id = 122,
            name = "Flower Gift",
            description = "Increases friendly Pok\233mon's Attack and Special Defense to 1.5x during strong sunlight."
        },
        {
            id = 123,
            name = "Bad Dreams",
            description = "Damages sleeping opponents for 1/8 their max HP after each turn."
        },
        {
            id = 124,
            name = "Pickpocket",
            description = "Steals attacking Pok\233mon's held items on contact."
        },
        {
            id = 125,
            name = "Sheer Force",
            description = "Strengthens moves with extra effects to 1.3x their power, but prevents their extra effects."
        },
        {
            id = 126,
            name = "Contrary",
            description = "Inverts stat changes."
        },
        {
            id = 127,
            name = "Unnerve",
            description = "Prevents opposing Pok\233mon from eating held Berries."
        },
        {
            id = 128,
            name = "Defiant",
            description = "Raises Attack two stages upon having any stat lowered."
        },
        {
            id = 129,
            name = "Defeatist",
            description = "Halves Attack and Special Attack at 50% max HP or less."
        },
        {
            id = 130,
            name = "Cursed Body",
            description = "Has a 30% chance of Disabling any move that hits the Pokemon."
        },
        {
            id = 131,
            name = "Healer",
            description = "Has a 30% chance of curing each adjacent ally of any major status ailment after each turn."
        },
        {
            id = 132,
            name = "Friend Guard",
            description = "Decreases all direct damage taken by friendly Pok\233mon to 0.75x."
        },
        {
            id = 133,
            name = "Weak Armor",
            description = "Raises Speed and lowers Defense by one stage each upon being hit by a physical move."
        },
        {
            id = 134,
            name = "Heavy Metal",
            description = "Doubles the Pok\233mon's weight."
        },
        {
            id = 135,
            name = "Light Metal",
            description = "Halves the Pok\233mon's weight."
        },
        {
            id = 136,
            name = "Multiscale",
            description = "Halves damage taken from full HP."
        },
        {
            id = 137,
            name = "Toxic Boost",
            description = "Increases Attack to 1.5x when poisoned."
        },
        {
            id = 138,
            name = "Flare Boost",
            description = "Increases Special Attack to 1.5x when burned."
        },
        {
            id = 139,
            name = "Harvest",
            description = "Has a 50% chance of restoring a used Berry after each turn if the Pok\233mon has held no items in the meantime."
        },
        {
            id = 140,
            name = "Telepathy",
            description = "Protects against friendly Pok\233mon's damaging moves."
        },
        {
            id = 141,
            name = "Moody",
            description = "Raises a random stat two stages and lowers another one stage after each turn."
        },
        {
            id = 142,
            name = "Overcoat",
            description = "Protects against damage from weather."
        },
        {
            id = 143,
            name = "Poison Touch",
            description = "Has a 30% chance of poisoning target Pok\233mon upon contact."
        },
        {
            id = 144,
            name = "Regenerator",
            description = "Heals for 1/3 max HP upon switching out."
        },
        {
            id = 145,
            name = "Big pecks",
            description = "Schützt vor dem Absenken der defense."
        },
        {
            id = 146,
            name = "Sand Rush",
            description = "Doubles Speed during a sandstorm. Protects against sandstorm damage."
        },
        {
            id = 147,
            name = "Wonder Skin",
            description = "Lowers incoming non-damaging moves' base accuracy to exactly 50%."
        },
        {
            id = 148,
            name = "Analytic",
            description = "Strengthens moves to 1.3x their power when moving last."
        },
        {
            id = 149,
            name = "Illusion",
            description = "Takes the appearance of the last conscious party Pok\233mon upon being sent out until hit by a damaging move."
        },
        {
            id = 150,
            name = "Imposter",
            description = "Transforms upon entering battle."
        },
        {
            id = 151,
            name = "Infiltrator",
            description = "Bypasses light screen, reflect, and safeguard."
        },
        {
            id = 152,
            name = "Mummy",
            description = "Changes attacking Pok\233mon's abilities to Mummy on contact."
        },
        {
            id = 153,
            name = "Moxie",
            description = "Raises Attack one stage upon KOing a Pokemon."
        },
        {
            id = 154,
            name = "Justified",
            description = "Raises Attack one stage upon taking damage from a dark move."
        },
        {
            id = 155,
            name = "Rattled",
            description = "Raises Speed one stage upon being hit by a dark, ghost, or bug move."
        },
        {
            id = 156,
            name = "Magic Bounce",
            description = "Reflects most non-damaging moves back at their user."
        },
        {
            id = 157,
            name = "Sap Sipper",
            description = "Absorbs grass moves, raising Attack one stage."
        },
        {
            id = 158,
            name = "Prankster",
            description = "Raises non-damaging moves' priority by one stage."
        },
        {
            id = 159,
            name = "Sand Force",
            description = "Strengthens rock, ground, and steel moves to 1.3x their power during a sandstorm. Protects against sandstorm damage."
        },
        {
            id = 160,
            name = "Iron Barbs",
            description = "Damages attacking Pok\233mon for 1/8 their max HP on contact."
        },
        {
            id = 161,
            name = "Zen Mode",
            description = "Changes darmanitan's form after each turn depending on its HP: Zen Mode below 50% max HP, and Standard Mode otherwise."
        },
        {
            id = 162,
            name = "Victory Star",
            description = "Increases moves' accuracy to 1.1x for friendly Pokemon."
        },
        {
            id = 163,
            name = "Turboblaze",
            description = "Bypasses targets' abilities if they could hinder or prevent moves."
        },
        {
            id = 164,
            name = "Teravolt",
            description = "Bypasses targets' abilities if they could hinder or prevent moves."
        }
    }
)