ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('xImpots:chomage')
AddEventHandler('xImpots:chomage', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_gouv', function(account)
        societyAccount = account
    end)

    xPlayer.removeAccountMoney('bank', Config.Impots.Chomage)
    if Config.Gouv == true then
        societyAccount.addMoney(Config.Impots.Chomage)
    end
    TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Centrale', 'Impôts', 'Vous avez été prélevé de~g~ '..Config.Impots.Chomage..'$~s~ sur votre compte bancaire !', 'CHAR_BANK_FLEECA', 2)
end)

RegisterServerEvent('xImpots:public')
AddEventHandler('xImpots:public', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_gouv', function(account)
        societyAccount = account
    end)

    xPlayer.removeAccountMoney('bank', Config.Impots.Public)
    if Config.Gouv == true then
        societyAccount.addMoney(Config.Impots.Public)
    end
    TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Centrale', 'Impôts', 'Vous avez été prélevé de~g~ '..Config.Impots.Public..'$~s~ sur votre compte bancaire !', 'CHAR_BANK_FLEECA', 2)
end)

RegisterServerEvent('xImpots:entreprise')
AddEventHandler('xImpots:entreprise', function()
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerEvent('esx_addonaccount:getSharedAccount', 'society_gouv', function(account)
        societyAccount = account
    end)

    xPlayer.removeAccountMoney('bank', Config.Impots.Entreprise)
    if Config.Gouv == true then
        societyAccount.addMoney(Config.Impots.Entreprise)
    end
    TriggerClientEvent('esx:showAdvancedNotification', source, 'Banque Centrale', 'Impôts', 'Vous avez été prélevé de~g~ '..Config.Impots.Entreprise..'$~s~ sur votre compte bancaire !', 'CHAR_BANK_FLEECA', 2)
end)


--- Xed#1188