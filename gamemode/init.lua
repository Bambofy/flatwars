DEFINE_BASECLASS( "gamemode_base" )

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile("CLRun.lua")
AddCSLuaFile("PlayerCamera/AddHook.lua")
AddCSLuaFile("PlayerCamera/CalculateView.lua")
AddCSLuaFile("PlayerCamera/ViewCalculations/CalculateAngle.lua")
AddCSLuaFile("PlayerCamera/ViewCalculations/CalculateFOV.lua")
AddCSLuaFile("PlayerCamera/ViewCalculations/CalculateOrigin.lua")
AddCSLuaFile("PlayerCamera/ViewCalculations/ConstructViewObject.lua")

include("SVRun.lua")