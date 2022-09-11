--Add this to line 82 inside of
--ND_CharaterSelection\source\server.lua
--Bears Taxes
--ND Framework is a REQUIRED dependencie
--server.lua

 if config.departmentTaxes then
    CreateThread(function()
        while true do
            Wait(config.paycheckInterval * 60000)
            for player, playerInfo in pairs(NDCore.Functions.GetPlayers()) do
                local tax = config.departmentTaxes[playerInfo.job]
                NDCore.Functions.WithdrawMoney(tax, player, "bank")
                TriggerClientEvent("chat:addMessage", player, {
                    color = {205, 15, 40},
                    args = {"🧾 Los Santos Taxes", "Total ammount deducted $" .. tax .. "."}
                })
            end
        end
    end)
end

