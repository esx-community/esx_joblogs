# esx_joblogs

Have log of all transaction in job!

# Installation
1. Clone the project and add it to your resorces directory
2. Add the project to your `server.cfg`
3. Go to compatible ressource and turn Config.EnableJobLogs to true
4. Add esx_joblogs events in job or use compatible version of job.
* esx_ambulancejob with esx_joblogs in https://github.com/RedAlex/esx_ambulancejob
* esx_lscustom     with esx_joblogs in https://github.com/RedAlex/esx_lscustom
* esx_mecanojob    with esx_joblogs in https://github.com/RedAlex/esx_mecanojob
* esx_policejob    with esx_joblogs in https://github.com/RedAlex/esx_policejob
* esx_taxijob      with esx_joblogs in https://github.com/RedAlex/esx_taxijob

# Features
- Global
  - Log reboot of your server.
  - Can be link to a Discord and send log of jobs in different channel

- esx_ambulancejob
  - Log Take item in pharmacy
  - Log Revive
  - Log Heal
  
- esx_billing
  - Log pay bill

- esx_lscustom
  - Log mod buy
 
- esx_mecanojob
  - Log bill send
  - Log take of add item in stock
  - Log hijack vehicle
  - Log fix vehicle
  - Log clean vehicle
  - Log delete vehicle
  - Log tow vehicle

- esx_policejob
  - Log bill send 
  - Log card inspection
  - Log get search on a body
  - Log hijack vehicle
  - Log delete vehicle
  - Log Take or add weapon in stock
  - Log Take of add item in stock

- esx_taxijob
  - Log bill send 
  - Log Take of add item in stock
  
# Ready but not compatible at this time. 

- esx_vehicleshop "Ready but not add in the github"
  - Log bill send and pay (When compatible with esx_billing)
  - Log car buy
  - Log car sold to a player
  - Log car sold to a society (In test)

 
# Requirements
- ESX

# ToDo
- Move text from esx ressource to locales in esx_joblogs
- add event and code need in esx_vehicleshop github
- add log on admin and modo command.
- add event and code need in es_admin2 github

# Create By
- Alex Garcio(https://github.com/RedAlex)
- Jade Perron(https://github.com/CaptnElizabeth)
- Discord link integration by MrFr4g (https://github.com/MrFr4g) based on https://github.com/ElNelyo/esx_discord_bot
