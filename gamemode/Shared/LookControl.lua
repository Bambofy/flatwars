
-- makes sure that the player is looking along the x axis.
function LookControl_LookAxis(ply)
	local player_position
	local target_position

	player_position = ply:GetPos()
	target_position = player_position + Vector(10, 0, 0)
	
	ply:SetEyeAngles((target_position - player_position):Angle())
end

function LookControl_AddHook()
	hook.Add("InputMouseApply", "LockToPitchOnly", function(user_command, x, y, angle)

		-- By leaving angle.roll and angle.yaw alone, we effectively lock them
		--angle.pitch = math.Clamp( angle.pitch + y / 50, -89, 89 )

		--user_command:SetViewAngles( angle )

		--return true

	end)
end