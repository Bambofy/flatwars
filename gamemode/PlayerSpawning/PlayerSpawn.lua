DEFINE_BASECLASS( "gamemode_base" )

function GM:PlayerSpawn( pl, transiton )
	player_manager.SetPlayerClass( pl, "player_custom" )
	BaseClass.PlayerSpawn( self, pl, transiton )
end