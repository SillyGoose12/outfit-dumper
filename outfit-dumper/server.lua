-- Server side logger
RegisterNetEvent("outfit-dumper:saveOutfit")
AddEventHandler("outfit-dumper:saveOutfit", function(data)
    local timestamp = os.date("%Y-%m-%d_%H-%M-%S")
    local fileName = ("outfit_%s.txt"):format(timestamp)

    local resourcePath = GetResourcePath(GetCurrentResourceName())
    local filePath = ("%s/%s"):format(resourcePath, fileName)

    local file = io.open(filePath, "w+")
    if file then
        file:write(data)
        file:close()
        print(("^2[Outfit Dumper]^7 Saved outfit to ^3%s^7"):format(fileName))
    else
        print("^1[Outfit Dumper]^7 Failed to save outfit file!")
    end
end)
