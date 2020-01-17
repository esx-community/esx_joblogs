--Create by
--Alex Garcio(https://github.com/RedAlex)
--Jade Perron(https://github.com/CaptnElizabeth)

fx_version 'adamant'

game 'gta5'

description 'Logs System for esx jobs.'

version '1.0.0'

-- Requiring essentialmode
dependency 'essentialmode'

server_scripts {
  '@es_extended/locale.lua',
  'locales/de.lua',
  'locales/br.lua',
  'locales/en.lua',
  'locales/fr.lua',
  'locales/es.lua',
  'locales/sv.lua',
  'Logs/ambulance.log',
  'Logs/vehicleshop.log',
  'Logs/mecano.log',
  'Logs/police.log',
  'Logs/sheriff.log',
  'Logs/taxi.log',
  'config.lua',
  'server.lua',
}
