Util = {}

Util.spawn_ped = function(model, x, y, z, w, anim)
        local ped = CreatePed(1, model, x, y, z-1, w, false, false)
        TaskStartScenarioInPlace(ped, anim, 0, true)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
end

Util.remove_ped = function(ped)
    DeleteEntity(ped)
end

Util.spawn_obj = function(model, x, y, z, w)
    local obj = CreateObject(model, x, y, z-1, true, true, true)
    SetEntityHeading(obj, w)
    SetModelAsNoLongerNeeded(model)
    PlaceObjectOnGroundProperly(obj)
    FreezeEntityPosition(obj, true)
    SetEntityCollision(obj, true, true)
end

Util.remove_obj = function(obj)
    DeleteEntity(obj)
end

Util.teleport = function(ped, x, y, z, w)
    DoScreenFadeOut(100)
    Wait(100)
    SetEntityCoords(ped, x, y, z, false, false, false, false)
    SetEntityHeading(ped, w)
    DoScreenFadeIn(750)
end

Util.blip = function(blip, x, y, z, sprite, color, scale, name)
    blip = AddBlipForCoord(x, y, z)
    SetBlipSprite(blip, sprite)
    SetBlipDisplay(blip, 4)
    SetBlipColour(blip, color)
    SetBlipScale(blip, scale)
    SetBlipAsShortRange(blip, true)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentSubstringPlayerName(name)
    EndTextCommandSetBlipName(blip)
end