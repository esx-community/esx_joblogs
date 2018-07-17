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
  LogAmbulance = LoadResourceFile("NukeTown_logs", "Logs/ambulance.log") or ""
  LogConcess   = LoadResourceFile("NukeTown_logs", "Logs/concess.log") or ""
  LogMecano    = LoadResourceFile("NukeTown_logs", "Logs/mecano.log") or ""
  LogPolice    = LoadResourceFile("NukeTown_logs", "Logs/police.log") or ""
  LogSheriff   = LoadResourceFile("NukeTown_logs", "Logs/sheriff.log") or ""
  LogTaxi      = LoadResourceFile("NukeTown_logs", "Logs/taxi.log") or ""
end

function SaveInLog(job, message)
    if job == "ambulance" then
	    LogAmbulance = LogAmbulance .. message .. "\n"
      SaveResourceFile("NukeTown_logs", "Logs/ambulance.log", LogAmbulance, -1)
    elseif job == "concess" then
	    LogConcess = LogConcess .. message .. "\n"
      SaveResourceFile("NukeTown_logs", "Logs/concess.log", LogConcess, -1)
    elseif job == "mecano" then
	    LogMecano = LogMecano .. message .. "\n"
      SaveResourceFile("NukeTown_logs", "Logs/mecano.log", LogMecano, -1)
    elseif job == "police" then
	    LogPolice = LogPolice .. message .. "\n"
      SaveResourceFile("NukeTown_logs", "Logs/police.log", LogPolice, -1)
    elseif job == "sheriff" then
	    LogSheriff = LogSheriff .. message .. "\n"
      SaveResourceFile("NukeTown_logs", "Logs/sheriff.log", LogSheriff, -1)
    elseif job == "taxi" then
	    LogTaxi = LogTaxi .. message .. "\n"
      SaveResourceFile("NukeTown_logs", "Logs/taxi.log", LogTaxi, -1)
    else
      print("Une erreur c'est produite dans esx_joblogs")
    end
end


RegisterServerEvent('NukeTown_logs:AddInLog')
AddEventHandler('NukeTown_logs:AddInLog', function(job, message)
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