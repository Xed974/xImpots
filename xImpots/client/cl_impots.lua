ESX = nil

print('Script by : ^4Xed#1188')

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

function checkjob()
    local job = ESX.PlayerData.job and ESX.PlayerData.job.name

    if job == 'unemployed' then
        TriggerServerEvent('xImpots:chomage')
    end
    if job == 'police' then
        TriggerServerEvent('xImpots:public')
    elseif job == 'ambulance' then
        TriggerServerEvent('xImpots:public')
    elseif job == 'gouv' then
        TriggerServerEvent('xImpots:public')
    end -- Penser à bien remplacer par vos jobs !
    if job == 'cardealer' then
        TriggerServerEvent('xImpots:entreprise')
    elseif job == 'mecano'then
        TriggerServerEvent('xImpots:entreprise')
    elseif job == 'tacos' then 
        TriggerServerEvent('xImpots:entreprise')
    elseif job == 'vigneron' then 
        TriggerServerEvent('xImpots:entreprise')
    elseif job == 'tabac' then
        TriggerServerEvent('xImpots:entreprise')
    elseif job == 'ammu' then
        TriggerServerEvent('xImpots:entreprise')
    end
end

Citizen.CreateThread(function()
    while true do
        Wait(Config.Time)
        checkjob()
    end
end)

--- Xed#1188