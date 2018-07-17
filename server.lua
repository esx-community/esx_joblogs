--Create by
--Alex Garcio(https://github.com/RedAlex)
--Jade Perron(https://github.com/CaptnElizabeth)

ESX                = nil
local LogAmbulance = ""
local LogMecano    = ""
local LogPolice    = ""
local LogSheriff   = ""
local LogTaxi      = ""
local LogConcess   = ""

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function loadLogs()
  LogAmbulance = LoadResourceFile("esx_joblogs", "Logs/ambulance.log") or ""
  LogConcess   = LoadResourceFile("esx_joblogs", "Logs/concess.log") or ""
  LogMecano    = LoadResourceFile("esx_joblogs", "Logs/mecano.log") or ""
  LogPolice    = LoadResourceFile("esx_joblogs", "Logs/police.log") or ""
  LogSheriff   = LoadResourceFile("esx_joblogs", "Logs/sheriff.log") or ""
  LogTaxi      = LoadResourceFile("esx_joblogs", "Logs/taxi.log") or ""
end

function SaveInLog(job, message)
    if job == "ambulance" then
	    LogAmbulance = LogAmbulance .. message .. "\n"
      SaveResourceFile("esx_joblogs", "Logs/ambulance.log", LogAmbulance, -1)
    elseif job == "concess" then
	    LogConcess = LogConcess .. message .. "\n"
      SaveResourceFile("esx_joblogs", "Logs/concess.log", LogConcess, -1)
    elseif job == "mecano" then
	    LogMecano = LogMecano .. message .. "\n"
      SaveResourceFile("esx_joblogs", "Logs/mecano.log", LogMecano, -1)
    elseif job == "police" then
	    LogPolice = LogPolice .. message .. "\n"
      SaveResourceFile("esx_joblogs", "Logs/police.log", LogPolice, -1)
    elseif job == "sheriff" then
	    LogSheriff = LogSheriff .. message .. "\n"
      SaveResourceFile("esx_joblogs", "Logs/sheriff.log", LogSheriff, -1)
    elseif job == "taxi" then
	    LogTaxi = LogTaxi .. message .. "\n"
      SaveResourceFile("esx_joblogs", "Logs/taxi.log", LogTaxi, -1)
    else
      print("Une erreur c'est produite dans esx_joblogs")
    end
end


RegisterServerEvent('esx_joblogs:AddInLog')
AddEventHandler('esx_joblogs:AddInLog', function(job, message)
  local _job = job
  local _message = message
  SaveInLog(_job, _message)
end)


loadLogs()
SaveInLog("ambulance", "Reboot")
SaveInLog("concess", "Reboot")
SaveInLog("mecano", "Reboot")
SaveInLog("police", "Reboot")
SaveInLog("sheriff", "Reboot")
SaveInLog("taxi", "Reboot")