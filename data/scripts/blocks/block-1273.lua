local blockmanager = require("blockmanager")
local sync = require("blocks/ai/synced")

local blockID = BLOCK_ID

local block = {}

blockmanager.setBlockSettings({
	id = blockID,
	passthrough = true
})

sync.registerSwitchableBlock(blockID, true)

return block