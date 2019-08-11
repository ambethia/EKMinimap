----------------------
-- Dont touch this! --
----------------------

local EKMinimap, ns = ...
	ns[1] = {} -- C, config
	ns[2] = {} -- G, globals (Optionnal)

local C, G = unpack(select(2, ...))

	G.Ccolors = (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS)[select(2, UnitClass("player"))] -- Class color / 職業顏色

local MediaFolder = "Interface\\AddOns\\EKMinimap\\Media\\"

------------
-- Golbal --
------------

	C.QuestWatch = true		-- Style Quest Watch Frame / 啟用任務追蹤美化
	C.ClickMenu = true		-- Minimap Click Menu / 啟用右鍵微型選單
	
	-- alt+右鍵按住移動 / alt+right click to drag
	-- 小地圖右鍵微型選單 / right click on minimap: micro menu
	-- 滾輪縮放區域，alt+滾輪縮放大小 / scroll to scale zone, alt+scroll to scale minimap frame

	-- slash cmd / 指令
	-- /rm 重置小地圖位置 / reset minimap frame position
	-- /rq 重置任務追蹤為置 / reset quest watch frame position
	
-------------
-- Texture --
-------------

	G.Tex = "Interface\\Buttons\\WHITE8x8"
	G.glow = MediaFolder.."glow.tga"
	G.mail = MediaFolder.."mail.tga"
	G.diff = MediaFolder.."difficulty.tga"
	G.report = "Interface\\HelpFrame\\HelpIcon-ReportLag.blp"

-----------
-- Fonts --
-----------

	G.font = STANDARD_TEXT_FONT		-- 字型 / Font
	-- Minimap
	G.fontSize = 14
	G.fontFlag = "THINOUTLINE"
	-- QuestWatchFrame
	G.QfontSize = 18
	G.QfontFlag = "OUTLINE"

----------------------
-- Minimap settings --
----------------------

	C.scale = 1  				-- 縮放 / Scale
	C.anchor = "TOPLEFT"		-- 錨點 / Anchor "TOPLEFT" "TOPRIGHT" "BOTTOMLEFT" "BOTTOMRIGHT" etc.
	C.Point = {10, -10}			-- 位置 / Position

--------------------------
-- Quest watch settings --
--------------------------

	C.QWF = {"TOPLEFT", UIParent, "TOPRIGHT", -300, -200}			-- 位置 / Position

-------------
-- Credits --
-------------

	-- Felix S., sakaras, ape47, iMinimap by Chiril, ooMinimap by Ooglogput, intMinimap by Int0xMonkey
	-- NeavUI by Neal
	-- https://www.wowinterface.com/downloads/info13981-NeavUI.html#info
	-- ClickMenu by 10leej
	-- https://www.wowinterface.com/downloads/info22660-ClickMenu.html
	-- rObjectiveTracker by zork
	-- https://www.wowinterface.com/downloads/info18322-rObjectiveTracker.html