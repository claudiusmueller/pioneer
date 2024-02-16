local debugView = require 'pigui.views.debug'
local Game = require 'Game'
local ui = require 'pigui'

local sar_ads = require 'modules.SearchRescue.SearchRescue'

local arraySize = function (array)
	-- Return the size (length) of an array that contains arbitrary entries.
	local n = 0
	for _,_ in pairs(array) do n = n + 1 end
	return n
end

debugView.registerTab('debug-sar', function()
   if not Game.system then return end
   if not ui.beginTabItem("SAR") then return end

   ui.text("SAR ads in system: " .. arraySize(sar_ads))

end
)
