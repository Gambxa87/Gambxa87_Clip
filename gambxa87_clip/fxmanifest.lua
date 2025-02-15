shared_script '@testov_xyz/ai_module_fg-obfuscated.lua'
shared_script '@testov_xyz/shared_fg-obfuscated.lua'
fx_version 'cerulean'
games {'gta5'}
lua54 "yes"
author "Luca"
description "TestoV"
version "1.0.0"
client_scripts {
    '@es_extended/locale.lua',
    'config.lua',
    'client/client.lua',
}
server_scripts {
    '@es_extended/locale.lua',
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'server/server.lua',
}
