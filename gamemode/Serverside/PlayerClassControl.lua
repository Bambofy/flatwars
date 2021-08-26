function PlayerClassControl_LoadClasses()

	--[[ Done automatically by gmod ]]

end

function PlayerClassControl_PlayerSpawned(ply)
	print("PlayerClassControl", "Player spawned")
	player_manager.SetPlayerClass(ply, "player_custom")
end