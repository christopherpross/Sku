    local npcKeys = {
        ['name'] = 1, -- string
        ['minLevelHealth'] = 2, -- int
        ['maxLevelHealth'] = 3, -- int
        ['minLevel'] = 4, -- int
        ['maxLevel'] = 5, -- int
        ['rank'] = 6, -- int, see https://github.com/cmangos/issues/wiki/creature_template#rank
        ['spawns'] = 7, -- table {[zoneID(int)] = {coordPair(floatVector2D),...},...}
        ['waypoints'] = 8, -- table {[zoneID(int)] = {coordPair(floatVector2D),...},...}
        ['zoneID'] = 9, -- guess as to where this NPC is most common
        ['questStarts'] = 10, -- table {questID(int),...}
        ['questEnds'] = 11, -- table {questID(int),...}
        ['factionID'] = 12, -- int, see https://github.com/cmangos/issues/wiki/FactionTemplate.dbc
        ['friendlyToFaction'] = 13, -- string, Contains "A" and/or "H" depending on NPC being friendly towards those factions. nil if hostile to both.
        ['subName'] = 14, -- string, The title or function of the NPC, e.g. "Weapon Vendor"
        ['npcFlags'] = 15, -- int, Bitmask containing various flags about the NPCs function (Vendor, Trainer, Flight Master, etc.).
                           -- For flag values see https://github.com/cmangos/mangos-classic/blob/172c005b0a69e342e908f4589b24a6f18246c95e/src/game/Entities/Unit.h#L536
    }
    local zoneIDs = SkuDB.zoneIDs
    local npcFlags = {
        NONE = 0,
        GOSSIP = 1,
        QUEST_GIVER = 2,
        TRAINER = 16,
        VENDOR = 128,
        REPAIR = 4096,
        FLIGHT_MASTER = 8192,
        SPIRIT_HEALER = 16384,
        SPIRIT_GUIDE = 32768,
        INNKEEPER = 65536,
        BANKER = 131072,
        PETITIONER = 262144,
        TABARD_DESIGNER = 524288,
        BATTLEMASTER = 1048576,
        AUCTIONEER = 2097152,
        STABLEMASTER = 4194304,
    }

local SkuCreaturesFixes = {
    [15351] = {
        [npcKeys.spawns] = {
            [zoneIDs.IRONFORGE]={{70.41,91.10}},
            [zoneIDs.SHATTRATH_CITY]={{67.41,33.86}},
            [zoneIDs.DARNASSUS]={{58.02,34.52}},
            [zoneIDs.THE_EXODAR]={{24.55,55.42}},
            [zoneIDs.STORMWIND_CITY]={{83.47,33.66}},
        },
    },
    [23763] = {
        [npcKeys.spawns] = {
            [zoneIDs.HOWLING_FJORD] = {{50.2,29.2},{50.4,26.4},{50.4,27},{50.6,26.6},{51,26.2},{51,27.6},{51.2,25.4},{51.2,28.8},{51.6,25.4},{51.8,27.6},{52,29.6},{52.2,26.4},{52.2,26.6},{52.4,28.6},{52.6,28.6},{52.8,26.4},{52.8,27},{52.8,27.8}},
        },
        [npcKeys.zoneID] = zoneIDs.HOWLING_FJORD,
    },
    [24329] = {
        [npcKeys.spawns] = {
            [zoneIDs.HOWLING_FJORD] = {{72,26.4},{70.3,27.3},{68.7,28.1},{66.5,24.9},{69.7,21.5},{72.6,19.9},{73.6,23.1}},
        },
        [npcKeys.zoneID] = zoneIDs.HOWLING_FJORD,
    },
    [24440] = {
        [npcKeys.spawns] = {
            [zoneIDs.HOWLING_FJORD] = {{30.2,26.4},{30.4,27},{30.6,24},{30.8,23.4},{30.8,26.6},{30.8,28.2},{30.8,28.6},{31,24.6},{31,26.4},{31.2,31},{31.6,27.2},{31.6,27.6},{31.8,26},},
        },
        [npcKeys.zoneID] = zoneIDs.HOWLING_FJORD,
    },
    [24910] = {
        [npcKeys.spawns] = {
            [zoneIDs.HOWLING_FJORD] = {{38.1, 74.8}},
        },
        [npcKeys.zoneID] = zoneIDs.HOWLING_FJORD,
    },
    [25794] = {
        [npcKeys.spawns] = {[zoneIDs.BOREAN_TUNDRA] = {{70.3,36.7},},},
        [npcKeys.zoneID] = zoneIDs.BOREAN_TUNDRA,
    },
    [26170] = {
        [npcKeys.spawns] = {[zoneIDs.BOREAN_TUNDRA] = {{84.8,41.68},},},
    },
    [26647] = {
        [npcKeys.spawns] = {
            [zoneIDs.DRAGONBLIGHT] = {{54.4,23.4}},
        },
        [npcKeys.zoneID] = zoneIDs.DRAGONBLIGHT,
    },
    [26723] = {
        [npcKeys.spawns] = {[zoneIDs.THE_NEXUS] = {{-1,-1}}},
        [npcKeys.zoneID] = zoneIDs.THE_NEXUS,
    },
    [27315] = {
        [npcKeys.spawns] = {
            [zoneIDs.DRAGONBLIGHT] = {{77.2,49.8},{78.2,50.6},{78.8,50.8},{79.8,49.6},{80,49.4},{80,51},{81.8,50.6},{82.2,50.4},{83,49.2},{83,50.2},{83.4,51},{84.2,50.4},{84.6,51.6},{84.8,50.4},}
        },
        [npcKeys.zoneID] = zoneIDs.DRAGONBLIGHT,
    },
    [27959] = {
        [npcKeys.spawns] = {
            [zoneIDs.HOWLING_FJORD] = {{61.1,2}},
        },
        [npcKeys.zoneID] = zoneIDs.HOWLING_FJORD,
    },
    [28026] = {
        [npcKeys.spawns] = {[zoneIDs.ZUL_DRAK]={{35.21,64.79},{37.15,64.77},{36.51,64.55},{37.99,65.5},},},
    },
    [28912] = {
        [npcKeys.waypoints] = {},
    },
    [29173] = {
        [npcKeys.waypoints] = {},
    },
    [38042] = {
        [npcKeys.spawns] = {[zoneIDs.ORGRIMMAR] = {{52.8,76.8}},},
    },
    [38043] = {
        [npcKeys.spawns] = {[zoneIDs.SILVERMOON_CITY] = {{64.6,66.2}},},
    },
    [38044] = {
        [npcKeys.spawns] = {[zoneIDs.THUNDER_BLUFF] = {{44,52.8}},},
    },
    [38045] = {
        [npcKeys.spawns] = {[zoneIDs.UNDERCITY] = {{66.6,38.6}},},
    },
}

    
function SkuDB:WotLKFixCreaturesDB(aTargetTable)
    --SkuDB:FixCreaturesDB(aTargetTable)
    for i, v in pairs(SkuCreaturesFixes) do
       for k, val in pairs(v) do
        if aTargetTable.NpcData.Data[i] then
            aTargetTable.NpcData.Data[i][k] = val
        else
            aTargetTable.NpcData.Data[i] = v
        end
       end
    end
 end