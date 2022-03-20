ESX = nil

print('Script by : ^4Xed#1188')

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

---@private
---@type table jobsEventsState
local jobsEventsState = {
    ['chomage'] = { 'unemployed' },

    ['public'] = {
        'police',
        'ambulance',
        'gouv',
    },

    ['entreprise'] = {
        'cardealer',
        'mecano',
        'tacos',
        'vigneron',
        'tabac',
        'ammu',
    },
};

function checkPlayerJob()
    local job = ESX.PlayerData.job.name
    if (job) then
        for type, v in pairs(jobsEventsState) do
            for _, jobs in pairs(v) do
                if (jobs == job) then
                    TriggerServerEvent(("xImpots:%s"):format(type));
                end
            end
        end
    end
end

Citizen.CreateThread(function()
    while true do
        Wait(Config.Time)
        checkPlayerJob()
    end
end)

--- Xed#1188
