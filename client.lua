-- Healcooldown = false

RegisterCommand('heal', function(source, args, rawCommand)
    -- if Healcooldown == false then
        -- notify("~g~Healed - Wait 5 mins to heal again") 
        notify("~g~Healed")
        SetEntityHealth(GetPlayerPed(-1), 200)
        -- Healcooldown = true
        -- Wait(300000)
        -- Healcooldown = false

    -- end

    -- if Healcooldown == true then
    --     notify("~r~ You have to wait 5 minutes since the last use of this command")
    -- end
end)


-- ArmourCoolDown = false

RegisterCommand('armor', function(source, args, rawCommand)
    -- if ArmourCoolDown == false then
        -- notify("~b~60% Armor applied - Wait 5 mins to apply again")
        notify("~b~100% Armor applied")
        AddArmourToPed(GetPlayerPed(-1), 100)
        -- ArmourCoolDown = true
        -- Wait(300000)
        -- ArmourCoolDown = false

    -- end
end)



function notify(msg)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(true,false)
end