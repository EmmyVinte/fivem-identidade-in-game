local onNui = false

local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")

vRP = Proxy.getInterface("vRP")
vSERVER = Tunnel.getInterface("blue_passport")
vRPclient = Tunnel.getInterface("vRP")

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if (IsControlJustPressed(1,344)) then
            ToggleActionMenu()
        end
    end
end)

function ToggleActionMenu(name,status)
	if name and status then
		workgarage = name
		pointspawn = status
	end
	menuEnabled = not menuEnabled
	if menuEnabled then
		
		SendNUIMessage({ action = "showPass" })
	else


		SendNUIMessage({ action = "hidePass" })
	end
end

RegisterNUICallback("update", function(data, cb)
cb({informations = vSERVER.informations()})
end)