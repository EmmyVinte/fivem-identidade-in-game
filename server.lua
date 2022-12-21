local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
src = {}
Tunnel.bindInterface("blue_passport", src)

function src.informations()
    informations = {}
        local source = source
          local user_id = vRP.getUserId(source)
            local identity = vRP.getUserIdentity(user_id)
                local wallet = vRP.getInventoryItemAmount(user_id,"dinheiro")
                    local bank = vRP.getBankMoney(user_id)
                local multas = vRP.getUData(user_id,"vRP:multas")
            local groupv = vRP.getUserGroupByType(user_id,"primario")
         local habilitado = identity.driverlicense
    if habilitado == 0 then
habilitado = "Não habilitado"
    elseif habilitado == 1 then
habilitado = "Habilitado"
    end

        if multas == "" then
    multas = "0"
end

    if groupv == "" then
    groupv = "Desempregado"
end

    table.insert(informations,{ user_id = user_id, identity = identity, wallet = wallet, bank = bank, multas = multas, emprego = groupv, carteira = habilitado})
    

    
    for k,v in pairs(informations) do
    return informations[k]
    end
 
    end