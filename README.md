# FiveM Script (ESX): Choose Your Spawn Location!

`skun-spawn` is a script for FiveM that allows players to choose their spawn location using a NUI menu. The script works so that an administrator enters `/spawn <playerId>`, and at that moment, the player can choose where they want to teleport.

## Requirements

- es_extended

## Installation

1. **Download the script:**

   Copy or download the repository to your server.

2. **Place the files:**

   Place the `skun-spawn` folder in the `resources` directory on your server.

3. **Add to `server.cfg`:**

   Add `start skun-spawn` to your `server.cfg` file to ensure the script starts with the server.

4. **Configuration:**

   Configure the script by editing the `config.lua` file in the `skun-spawn` folder.

   ```lua
   Config = {}

   Config.Spawns = {
       vector4(0, 0, 0, 0), -- Add your first spawn point here
       vector4(0, 0, 0, 0), -- Add your second spawn point here
       vector4(0, 0, 0, 0)  -- Add your third spawn point here
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
   ```

## Usage

- **Opening the spawn menu:**

  An administrator can open the spawn menu for a player using the command `/spawn <playerId>`. This command is only available to players in the groups defined in `Config.AdminGroups`.

  ```lua
  /spawn <playerId>
  ```

- **Choosing a spawn location:**

  A player can choose a spawn location from the NUI menu. After selecting a location, the player will be teleported to the chosen point, and a notification will appear on the screen.

## Files

- `config.lua`: Configuration file for the script.
- `client/skun-client.lua`: Client script handling NUI and player teleportation.
- `server/skun-server.lua`: Server script handling administrative commands.

## Author

- Author: [notaskun](https://github.com/skunpro) - Back-End / [victoria](https://github.com/deryys) - Front-End
- Contact: [Discord](https://discord.gg/404devs)
