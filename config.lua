Config = {}

Config.Spawns = {
    vector4(0, 0, 0, 0), -- Add your spawn number one here!
    vector4(0, 0, 0, 0), -- Add your spawn number two here!
    vector4(0, 0, 0, 0) -- Add your spawn number three here!
}

Config.AdminGroups = {
    "support",
    "mod",
    "admin",
    "superadmin",
    "best"
}


Config.NotificationTexts = {
    spawn_opened = "Spawn menu has been opened for player ID {targetId}.",
    no_permission = "You do not have permission to use this command.",
    invalid_player_id = "Invalid player ID.",
    provide_player_id = "Please provide a player ID.",
    spawn_chosen = "You chose spawn {spawnNumber}.",
    invalid_spawn = "Invalid spawn!"
}