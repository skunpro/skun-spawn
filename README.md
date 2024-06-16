# Skrypt FiveM (ESX): Wybranie Miejscu Spawnu!

`skun-spawn` to skrypt dla FiveM, który pozwala graczom wybierać miejsce spawnu za pomocą menu NUI. Skrypt działa tak że administrator wpisuje `/spawn <playerId>` i w tym momencie gracz może wybrać gdzie się chce teleportować.

## Wymagania

- es_extended

## Instalacja

1. **Pobierz skrypt:**

   Skopiuj lub pobierz repozytorium na swój serwer.

2. **Umieść pliki:**

   Umieść folder `skun-spawn` w katalogu `resources` na Twoim serwerze.

3. **Dodaj do pliku `server.cfg`:**

   Dodaj `start skun-spawn` do swojego pliku `server.cfg`, aby skrypt został uruchomiony przy starcie serwera.

4. **Konfiguracja:**

   Skonfiguruj skrypt edytując plik `config.lua` w folderze `skun-spawn`.

   ```lua
   Config = {}

   Config.Spawns = {
       vector4(0, 0, 0, 0), -- Dodaj tutaj swój punkt spawnu numer jeden
       vector4(0, 0, 0, 0), -- Dodaj tutaj swój punkt spawnu numer dwa
       vector4(0, 0, 0, 0)  -- Dodaj tutaj swój punkt spawnu numer trzy
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

## Użycie

- **Otwieranie menu spawnu:**

  Administrator może otworzyć menu spawnu dla gracza, używając komendy `/spawn <playerId>`. Komenda ta jest dostępna tylko dla graczy w grupach zdefiniowanych w `Config.AdminGroups`.

  ```lua
  /spawn <playerId>
  ```

- **Wybór miejsca spawnu:**

  Gracz może wybrać miejsce spawnu z menu NUI. Po wyborze miejsca, gracz zostanie przeteleportowany do wybranego punktu, a na ekranie pojawi się powiadomienie.

## Pliki

- `config.lua`: Plik konfiguracji skryptu.
- `client/skun-client.lua`: Skrypt klienta obsługujący NUI i teleportację gracza.
- `server/skun-server.lua`: Skrypt serwera obsługujący komendy administracyjne.
