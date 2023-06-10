-- FX Information
fx_version 'cerulean'
use_experimental_fxv2_oal 'yes'
lua54 'yes'
game 'gta5'

-- Resource Information
name 'mi_worktemplate'
author 'MI_Agimir'
version '1.0.0'
repository 'https://github.com/MIAgimir/MI_WorkTemplate'
description 'Need work? Make a job'

-- Manifest
shared_scripts {
	'@ox_lib/init.lua',
	'config.lua'
}

client_scripts {
    '@ox_core/imports/client.lua',
    'client/jobs.lua',
    'client/util.lua',
    'client/main.lua'
}

server_scripts {
    '@oxmysql/lib/MySQL.lua',
    '@ox_core/imports/server.lua',
    'server/paycheck.lua',
    'server/main.lua'
}

exports = {

}