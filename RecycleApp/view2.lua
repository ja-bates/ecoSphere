-----------------------------------------------------------------------------------------
--
-- view2.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )
local scene = composer.newScene()

function scene:create( event )
	local sceneGroup = self.view
	local background
  local bluebin
  local greybin

background = display.newImageRect( "recyclescreen.jpg", 720, 1120 )
background.x = display.contentCenterX
background.y = display.contentCenterY - 80

bluebin = display.newImageRect( "blue pin.png", 200, 200)
bluebin.x = display.contentCenterX - 60
bluebin.y = display.contentCenterY + 190

greybin = display.newImageRect( "grey bin.png", 200,200)
greybin.x = display.contentCenterX + 60
greybin.y = display.contentCenterY + 205

	-- create some text
	local title = display.newText( "Track your recycling!", display.contentCenterX, 125, native.systemFont, 32 )
	title:setFillColor( 0 )	-- black

	-- all objects must be added to group (e.g. self.view)
	sceneGroup:insert( background )
	sceneGroup:insert( title )
  sceneGroup:insert(bluebin)
  sceneGroup:insert(greybin)
end

function scene:show( event )
	local sceneGroup = self.view
	local phase = event.phase

	if phase == "will" then
		-- Called when the scene is still off screen and is about to move on screen
	elseif phase == "did" then
		-- Called when the scene is now on screen
		--
		-- INSERT code here to make the scene come alive
		-- e.g. start timers, begin animation, play audio, etc.
	end
end

function scene:hide( event )
	local sceneGroup = self.view
	local phase = event.phase

	if event.phase == "will" then
		-- Called when the scene is on screen and is about to move off screen
		--
		-- INSERT code here to pause the scene
		-- e.g. stop timers, stop animation, unload sounds, etc.)
	elseif phase == "did" then
		-- Called when the scene is now off screen
	end
end

function scene:destroy( event )
	local sceneGroup = self.view

	-- Called prior to the removal of scene's "view" (sceneGroup)
	--
	-- INSERT code here to cleanup the scene
	-- e.g. remove display objects, remove touch listeners, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------

return scene
