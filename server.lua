--Create by
--Alex Garcio(https://github.com/RedAlex)
--Jade Perron(https://github.com/CaptnElizabeth)

ESX                  = nil
local LogAdmin       = ""
local LogAmbulance   = ""
local LogMecano      = ""
local LogPolice      = ""
local LogSheriff     = ""
local LogTaxi        = ""
local LogVehicleShop = ""

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

function sendToDiscord (canal, name, message, color)
  -- Modify here your discordWebHook username = name, content = message,embeds = embeds
local DiscordWebHook = canal
local embeds = {
    {
        ["title"]= message,
        ["type"]= "rich",
        ["color"] = color,
        ["footer"]=  {
        ["text"]= "Job_logs",
       },
    }
}

  if message == nil or message == '' then return FALSE end
  PerformHttpRequest(DiscordWebHook, function(err, text, headers) end, 'POST', json.encode({ username = name,embeds = embeds}), { ['Content-Type'] = 'application/json' })
end


function loadLogs()
  LogAdmin       = LoadResourceFile("esx_joblogs", "Logs/admin.log")       or ""
  LogAmbulance   = LoadResourceFile("esx_joblogs", "Logs/ambulance.log")   or ""
  LogVehicleShop = LoadResourceFile("esx_joblogs", "Logs/vehicleshop.log") or ""
  LogMecano      = LoadResourceFile("esx_joblogs", "Logs/mecano.log")      or ""
  LogPolice      = LoadResourceFile("esx_joblogs", "Logs/police.log")      or ""
  LogSheriff     = LoadResourceFile("esx_joblogs", "Logs/sheriff.log")     or ""
  LogTaxi        = LoadResourceFile("esx_joblogs", "Logs/taxi.log")        or ""
end


function SaveInLog(job, message)
    if job == "admin" then
        LogAdmin = LogAdmin .. message .. "\n"
        SaveResourceFile("esx_joblogs", "Logs/admin.log", LogAdmin, -1)
          if Config.EnableDiscordLink == true then
            sendToDiscord(Config.webhookadmin, _U('admin_bot_name'), message, Config.orange)
          end
    elseif job == "ambulance" then
        LogAmbulance = LogAmbulance .. message .. "\n"
        SaveResourceFile("esx_joblogs", "Logs/ambulance.log", LogAmbulance, -1)
          if Config.EnableDiscordLink == true then
            sendToDiscord(Config.webhookambulance, _U('ambulance_bot_name'), message, Config.orange)
          end
    elseif job == "vehicleshop" then
        LogVehicleShop = LogVehicleShop .. message .. "\n"
        SaveResourceFile("esx_joblogs", "Logs/vehicleshop.log", LogVehicleShop, -1)
          if Config.EnableDiscordLink == true then
            sendToDiscord(Config.webhookvehicleshop, _U('vehicleshop_bot_name'), message, Config.orange)
          end
    elseif job == "mecano" then
        LogMecano = LogMecano .. message .. "\n"
        SaveResourceFile("esx_joblogs", "Logs/mecano.log", LogMecano, -1)
          if Config.EnableDiscordLink == true then
            sendToDiscord(Config.webhookmecano, _U('mecano_bot_name'), message, Config.orange)
          end
    elseif job == "police" then
        LogPolice = LogPolice .. message .. "\n"
        SaveResourceFile("esx_joblogs", "Logs/police.log", LogPolice, -1)
		  if Config.EnableDiscordLink == true then
            sendToDiscord(Config.webhookpolice, _U('police_bot_name'), message, Config.orange)
          end
    elseif job == "sheriff" then
        LogSheriff = LogSheriff .. message .. "\n"
        SaveResourceFile("esx_joblogs", "Logs/sheriff.log", LogSheriff, -1)
          if Config.EnableDiscordLink == true then
            sendToDiscord(Config.webhooksheriff, _U('sheriff_bot_name'), message, Config.orange)
          end
    elseif job == "taxi" then
        LogTaxi = LogTaxi .. message .. "\n"
        SaveResourceFile("esx_joblogs", "Logs/taxi.log", LogTaxi, -1)
          if Config.EnableDiscordLink == true then
            sendToDiscord(Config.webhooktaxi, _U('taxi_bot_name'), message, Config.orange)
          end
    else
        print("The job " ..job.. "is not know by esx_joblogs contact the dev.")
    end
end


RegisterServerEvent('esx_joblogs:AddInLog')
AddEventHandler('esx_joblogs:AddInLog', function(job, localetxt, info1, info2, info3, info4)
  local _job        = job
  local _localetxt  = localetxt
  local _info1      = info1
  local _info2      = ''
  local _info3      = ''
  local _info4      = ''
  if info2 ~= nil then
    _info2 = info2
  end
  if info3 ~= nil then
    _info3 = info3
  end
  if info4 ~= nil then
    _info4 = info4
  end
  local message     = "["..os.date("%c").."] ' ".. _U(_localetxt, _info1, _info2, _info3, _info4)
  SaveInLog(_job, message)
end)


loadLogs()
SaveInLog("admin", "["..os.date("%c").."] ' ".. _U("reboot"))
SaveInLog("ambulance", "["..os.date("%c").."] ' ".. _U("reboot"))
SaveInLog("vehicleshop", "["..os.date("%c").."] ' ".. _U("reboot"))
SaveInLog("mecano", "["..os.date("%c").."] ' ".. _U("reboot"))
SaveInLog("police", "["..os.date("%c").."] ' ".. _U("reboot"))
SaveInLog("sheriff", "["..os.date("%c").."] ' ".. _U("reboot"))
SaveInLog("taxi", "["..os.date("%c").."] ' ".. _U("reboot"))
