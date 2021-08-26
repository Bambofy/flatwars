
-- makes sure that the player is looking along the x axis.
function LookControl_LookAxis(ply)
	local player_position
	local target_position

	player_position = ply:GetPos()
	target_position = player_position + Vector(0, 255, 0)
	
	ply:SetEyeAngles((target_position - player_position):Angle())
end

function LookControl_AddHook()
	local look_point
	local screenWidth, screenHeight
	local centerPointX, centerPointY
	local screenWidthHalved, screenHeightHalved

	screenWidth = ScrW()
	screenHeight = ScrH()
	centerPointX = screenWidth / 2.0
	centerPointY = screenHeight / 2.0
	screenWidthHalved = screenWidth / 2.0
	screenHeightHalved = screenHeight / 2.0
	look_point = Vector(0, 0, 0)

	hook.Add("InputMouseApply", "LockToPitchOnly", function(user_command, x, y, angle)

		look_point.x = look_point.x + x
		look_point.y = look_point.y + y

		look_point.x = math.Clamp(look_point.x, -screenWidthHalved, screenWidthHalved)
		look_point.y = math.Clamp(look_point.y, -screenHeightHalved, screenHeightHalved)

		local player_position
		local target_position
		local look_angle

		player_position = LocalPlayer():GetPos()
		target_position = Vector(player_position.x, player_position.y, player_position.z)
		target_position.y = target_position.y - look_point.x
		target_position.z = target_position.z - look_point.y 

		look_angle = ((target_position - player_position):Angle())

		user_command:SetViewAngles( look_angle )

		return true

	end)

	hook.Add("HUDPaint", "HUDPaint_Crosshairs", function()
		local crosshairCenterX, crosshairCenterY

		crosshairCenterX = centerPointX + look_point.x
		crosshairCenterY = centerPointY + look_point.y

		surface.SetDrawColor(255, 255, 255, 200)

		-- rectangle vertical
		surface.DrawRect(crosshairCenterX - ScreenScale(2), crosshairCenterY - ScreenScale(8), ScreenScale(4), ScreenScale(16))
		-- rectangle horizontal
		surface.DrawRect(crosshairCenterX - ScreenScale(8), crosshairCenterY - ScreenScale(2), ScreenScale(16), ScreenScale(4))
	end)
end