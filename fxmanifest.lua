-- Resource Metadata
fx_version 'adamant'
games { 'rdr3', 'gta5' }

author 'Sharky'
description 'Sharky CK'
version '1.5.0'

server_scripts { 
    '@mysql-async/lib/MySQL.lua',
    'server/ck_sv.lua' 
}

dependencies 'mysql-async'
