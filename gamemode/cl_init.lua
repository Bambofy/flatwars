DeriveGamemode("sandbox")

include("Clientside/CameraControl.lua")
include("Shared/DefaultPlayerClass.lua")
include("Shared/MovementControl.lua")
include("Shared/LookControl.lua")

function GM:Initialize()
	CameraControl_AddHook()
	MovementControl_AddHook()
	LookControl_AddHook()
end