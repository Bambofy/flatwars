
local CMoveData = FindMetaTable("CMoveData")

function CMoveData:RemoveKeys(keys)
	-- Using bitwise operations to clear the key bits.
	local newbuttons = bit.band(self:GetButtons(), bit.bnot(keys))
	self:SetButtons(newbuttons)
end

function MovementControl_AddHook()
	--[[hook.Add("InputMouseApply", "LockToPitchOnly", function( ccmd, x, y, angle )
		-- By leaving angle.roll and angle.yaw alone, we effectively lock them
		angle.pitch = math.Clamp( angle.pitch + y / 50, -89, 89 )
		ccmd:SetViewAngles( angle )
		return true
	end)]]
	
	hook.Add("SetupMove", "MoveWorldCoordinates", function(ply, move_data, user_command)
		move_data:SetMoveAngles(Angle(0, 0, 0))
		move_data:SetForwardSpeed(0) -- CUserData:RemoveKey(IN_FORWARD | IN_BACK) workaround
	end)
end