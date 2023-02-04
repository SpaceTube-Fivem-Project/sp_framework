fx_version 'cerulean'
game 'gta5'

name "sp_framework"
description "This ressource is Framework to Fivem Project"
author "SpaceTube_"
version "1.0.0"
lua54 'yes'

shared_scripts {
	'lang.lua',
	'shared/*.lua',
	'locales/*.lua',
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'config/config.lua',
	'config/config.logs.lua',
	'server/functions/*.lua',
	'server/*.lua'
}

export {
	'getLang',
}

server_export {
	'getLang',
}