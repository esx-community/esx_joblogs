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
  LogConcess   = LoadResourceFile("esx_joblogs", "Logs/concess.log")   or ""
  LogMecano    = LoadResourceFile("esx_joblogs", "Logs/mecano.log")    or ""
  LogPolice    = LoadResourceFile("esx_joblogs", "Logs/police.log")    or ""
  LogSheriff   = LoadResourceFile("esx_joblogs", "Logs/sheriff.log")   or ""
  LogTaxi      = LoadResourceFile("esx_joblogs", "Logs/taxi.log")      or ""
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
AddEventHandler('esx_joblogs:AddInLog', function(job, localetxt, sourcename, targetname)
  local _job        = job
  local _localetxt  = localetxt
  local _sourcename = sourcename
  local _targetname = targetname
  local message     = "["..os.date("%c").."] ' ".. _U(_localetxt, _sourcename, _targetname)
  SaveInLog(_job, message)
end)


loadLogs()
SaveInLog("ambulance", "["..os.date("%c").."] ' ".. _U("reboot"))
SaveInLog("concess", "["..os.date("%c").."] ' ".. _U("reboot"))
SaveInLog("mecano", "["..os.date("%c").."] ' ".. _U("reboot"))
SaveInLog("police", "["..os.date("%c").."] ' ".. _U("reboot"))
SaveInLog("sheriff", "["..os.date("%c").."] ' ".. _U("reboot"))
SaveInLog("taxi", "["..os.date("%c").."] ' ".. _U("reboot"))