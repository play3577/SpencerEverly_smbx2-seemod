local eb = {}

local lineguide = require("lineguide")
local npcManager = require("npcManager")
local engineBlocks = require("npcs/ai/engineBlocks")

local npcID = NPC_ID

lineguide.registerNpcs(npcID)

--*********************************************************
--*
--*					Settings
--*
--*********************************************************

npcManager.setNpcSettings(table.join({id = npcID, framespeed = 8}, engineBlocks.engineBlockSharedSettings))
lineguide.properties[npcID] = {lineSpeed = 3}

--*********************************************************
--*
--*					Event Handlers
--*
--*********************************************************

npcManager.registerEvent(npcID, engineBlocks, "onStartNPC", "onStartEngineBlock")
npcManager.registerEvent(npcID, engineBlocks, "onTickNPC", "onTickEngineBlock")
npcManager.registerEvent(npcID, engineBlocks, "onTickEndNPC", "onTickEndEngineBlock")

return eb