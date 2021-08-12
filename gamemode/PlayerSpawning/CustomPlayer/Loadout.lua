function Loadout(args)
    args.Player:RemoveAllAmmo()
    args.Player:GiveAmmo(256, "Pistol", true)
    args.Player:Give("weapon_pistol")
    args.Player:Give("weapon_crowbar")
end