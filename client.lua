ESX = nil
TriggerEvent("esx:getSharedObject",function(obj)
    ESX = obj
end)


Citizen.CreateThread(function() --easy course

     while true do

     Citizen.Wait(1)
       local ped = PlayerPedId()
       local mycords = GetEntityCoords(ped)
       local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
       local vehicleClass = GetVehicleClass(vehicle)
       if vehicleClass == 13 then
      for _, locations in pairs(Config.Easylocations) do
      --if GetDistanceBetweenCoords(mycords, locations, true) < 1 then 
        if GetDistanceBetweenCoords(mycords, locations, true) < Config.EasyCourseDist then 
       DrawText3Ds(locations.x, locations.y, locations.z, "Get Reward") 
       DrawMarker(2, locations + 2, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 128, 0, 50, false, true, 2, nil, nil, false)
       if IsControlJustReleased(0,38) then
       TriggerServerEvent("bmxrewardseasy:payment") 

    exports['t-notify']:Alert({
    style  =  'success',
    sound = true,
    message  =  '✔️ Course Complete, Come back in an hour to try again'
})

-- use below export if you want the notification with an image
--    exports['t-notify']:Image({
--    style = 'info',
--    duration = 2500,
--    position = 'top-center',
--    title = 'Easy Course Complete, Come back in an hour to go again',
--    image = 'https://i.imgur.com/eZ3PHrZ.jpg',
--    sound = true
--    })


     Citizen.Wait(3600000) --wait 1 hour before being able to get reward again

  end   
end
end
end
end
end)


Citizen.CreateThread(function()

     while true do

     Citizen.Wait(1)
       local ped = PlayerPedId()
       local mycords = GetEntityCoords(ped)
       local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
       local vehicleClass = GetVehicleClass(vehicle)
       if vehicleClass == 13 then
      for _, locations in pairs(Config.Mediumlocations) do
      if GetDistanceBetweenCoords(mycords, locations, true) < Config.MediumCourseDist then
       DrawText3Ds(locations.x, locations.y, locations.z, "Get Reward") 
       DrawMarker(2, locations + 2, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 128, 0, 50, false, true, 2, nil, nil, false)
       if IsControlJustReleased(0,38) then
       TriggerServerEvent("bmxrewardsmedium:payment")

    exports['t-notify']:Alert({
    style  =  'success',
    sound = true,
    message  =  '✔️ Course Complete, Come back in an hour to try again'
    })

-- use below export if you want the notification with an image
--    exports['t-notify']:Image({
--    style = 'info',
--    duration = 2500,
--    position = 'top-center',
--    title = 'Medium Course Complete',
--    image = 'https://i.imgur.com/mKwjmEy.jpg',
--    sound = true
--    })

      Citizen.Wait(3600000) --wait 1 hour before being able to get reward again

  end   
end
end
end
end
end)

Citizen.CreateThread(function()

     while true do

     Citizen.Wait(1)
       local ped = PlayerPedId()
       local mycords = GetEntityCoords(ped)
       local vehicle = GetVehiclePedIsIn(GetPlayerPed(-1), false)
       local vehicleClass = GetVehicleClass(vehicle)
       if vehicleClass == 13 then
      for _, locations in pairs(Config.Hardlocations) do
      if GetDistanceBetweenCoords(mycords, locations, true) < Config.HardCourseDist then
       DrawText3Ds(locations.x, locations.y, locations.z, "Get Reward") 
       DrawMarker(2, locations + 2, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 2.0, 2.0, 2.0, 255, 128, 0, 50, false, true, 2, nil, nil, false)
       if IsControlJustReleased(0,38) then
       TriggerServerEvent("bmxrewardshard:payment")

    exports['t-notify']:Alert({
    style  =  'success',
    sound = true,
    message  =  '✔️ Course Complete, Come back in an hour to try again'
    })
-- use below export if you want the notification with an image
--    exports['t-notify']:Image({
--   style = 'info',
--    duration = 2500,
--    position = 'top-center',
--    title = 'Hard Course Complete',
--    image = 'https://i.imgur.com/MoGan7R.jpg',
--    sound = true
--   })

      Citizen.Wait(3600000) --wait 1 hour before being able to get reward again

  end   
end
end
end
end
end)


function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)

end