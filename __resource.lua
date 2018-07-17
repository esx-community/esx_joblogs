--Create by
--Alex Garcio(https://github.com/RedAlex)
--Jade Perron(https://github.com/CaptnElizabeth)

description 'NukeTown Logs System'

version '1.0.0'

-- Requiring essentialmode
dependency 'essentialmode'

server_scripts {
  'server.lua',
  'Logs/ambulance.log',
  'Logs/concess.log',
  'Logs/mecano.log',
  'Logs/police.log',
  'Logs/sheriff.log',
  'Logs/taxi.log',
}