# WeaponClip - FiveM Script

## 🔧 Description
This FiveM script allows players to use weapon magazines to reload their firearms. It ensures that only weapons currently in hand can be reloaded and prevents exceeding the maximum ammunition limit.

## 🛠️ Features
- Adds a realistic weapon magazine system.
- Prevents reloading if no weapon is equipped.
- Displays notifications for various states (magazine usage, no weapon, max ammo reached).
- Optional progress bar integration.

## 👤 Requirements
- [ESX Framework](https://github.com/esx-framework/esx_core) or compatible framework.

## 🔄 Installation
1. Download the script and place it in your FiveM resources folder.
2. Add `ensure weaponclip` to your `server.cfg`.
3. Configure the settings in `config.lua` as needed.

## ⚙️ Configuration
Modify `config.lua` to customize the script:

```lua
Config.Language = {
    ['clip_used'] = "You have used a magazine!",
    ['no_weapon'] = "No weapon in hand!",
    ['progressbar_message'] = "Weapon magazine is being used...",
    ['ammo_full'] = "You already have maximum ammunition!"
}

Config.ProgressbarActiv = false -- If set to true, make sure to change the export in client.lua at line 39.
```

## ⚒️ Usage
- Players can use a weapon magazine item to reload their equipped firearm.
- If no weapon is equipped, a notification will inform the player.
- If the player's ammo is already full, reloading will be blocked.

## 🛡️ Commands & Exports
- This script can be triggered through a client-side event:

```lua
TriggerClientEvent('esx:showNotification', source, "You have no magazine left.")
```

## ✨ Future Updates
- Custom animations for reloading.
- Support for more weapon types.
- Configurable magazine capacities.

## ⚖️ License
This project is licensed under the MIT License. You are free to modify and distribute it as needed.

## 🌟 Credits
Developed by **YourName**. Feel free to contribute or suggest improvements!

---

Enjoy the script! If you have any issues, create a GitHub issue or reach out in the FiveM community.

