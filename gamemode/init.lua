DEFINE_BASECLASS("gamemode_base")

AddCSLuaFile("cl_init.lua")
AddCSLuaFile("Shared/DefaultPlayerClass.lua")
AddCSLuaFile("Clientside/CameraControl.lua")
AddCSLuaFile("Shared/MovementControl.lua")
AddCSLuaFile("Shared/LookControl.lua")

include("Serverside/PlayerClassControl.lua")
include("Shared/DefaultPlayerClass.lua")
include("Shared/MovementControl.lua")
include("Shared/LookControl.lua")

function GM:Initialize()
	PlayerClassControl_LoadClasses()
	MovementControl_AddHook()
end

function GM:PlayerSpawn(ply, transitioned)
	PlayerClassControl_PlayerSpawned(ply)

	BaseClass.PlayerSpawn(self, ply, transitioned)

	LookControl_LookAxis(ply)
end