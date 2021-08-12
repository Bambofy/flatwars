include("Loadout.lua")

function Register()
    local PLAYER = {}
    PLAYER.WalkSpeed = 200
    PLAYER.RunSpeed  = 400
    PLAYER.Loadout = Loadout
    player_manager.RegisterClass( "player_custom", PLAYER, "player_default" )
end
