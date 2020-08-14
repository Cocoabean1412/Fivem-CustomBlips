--thecrazygamerScript

--Blip-Colors = https://wiki.rage.mp/index.php?title=Blip::color

--Blip-IDs = https://docs.fivem.net/docs/game-references/blips/



local blips = {

  -- Example {title="", colour=, id=, x=, y=, z=},
     
  --{title="Aitport", scale=1.0, colour=5, id=16, x = -938.53, y = -2748.25, z = 13.77},
  --{title="Military Base", scale=0.8, colour=52, id=150, x = -2315.22 , y = 3396.33, z = 30.85},

  }
 
  



--Dont touch this:

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, info.scale)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)
