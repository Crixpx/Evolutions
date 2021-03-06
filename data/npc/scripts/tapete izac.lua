local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

local travelNode = keywordHandler:addKeyword({'infernium'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'You want fly to Infernium for 120 gold coins?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 2, cost = 120, destination = {x=237, y=259, z=8} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'I wouldn\'t go there either.'})

local travelNode = keywordHandler:addKeyword({'flam'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'You want fly to flam for 115 gold coins?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 2, cost = 115, destination = {x=393, y=76, z=5} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'I wouldn\'t go there either.'})

local travelNode = keywordHandler:addKeyword({'saari'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'You want fly to saari for 90 gold coins?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 2, cost = 90, destination = {x=259, y=112, z=5} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'I wouldn\'t go there either.'})

local travelNode = keywordHandler:addKeyword({'mirand theraan'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'You want fly to mirand theraan for 80 gold coins?'})
	travelNode:addChildKeyword({'yes'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 2, cost = 80, destination = {x=297, y=177, z=6} })
	travelNode:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, reset = true, text = 'I wouldn\'t go there either.'})

npcHandler:addModule(FocusModule:new())