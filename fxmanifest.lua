fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'script - notaskun / design - victoria'
description 'Command /spawn [ID] / custom ui / by 404devs'

version '1.0.0'

shared_scripts {
    '@es_extended/imports.lua',
    'config.lua'
}

client_scripts {
    'config.lua',
    'client/skun-client.lua'
}

server_scripts {
    'server/skun-server.lua'
}

ui_page 'web/index.html'

files {
    'web/index.html',
    'web/script.js',
    'web/style.css'
}
