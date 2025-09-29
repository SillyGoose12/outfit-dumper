
RegisterCommand("saveoutfit", function()
    local ped = PlayerPedId()

    local outfit = {}
    outfit.ped = "mp_m_freemode_01" -- default male freemode, change to mp_f_freemode_01 for female
    outfit.props = {}
    outfit.components = {}

    -- Props (hats, glasses, etc.)
    for i = 0, 9 do
        local drawable = GetPedPropIndex(ped, i)
        local texture = GetPedPropTextureIndex(ped, i)
        if drawable ~= -1 then
            table.insert(outfit.props, {i, drawable, texture})
        end
    end

    -- Components (clothing slots)
    for i = 0, 11 do
        local drawable = GetPedDrawableVariation(ped, i)
        local texture = GetPedTextureVariation(ped, i)
        table.insert(outfit.components, {i, drawable, texture})
    end

    local result = "\n['New Outfit'] = {\n"
    result = result .. "\tcategory = 'Uncategorized',\n"
    result = result .. "\tped = '" .. outfit.ped .. "',\n"
    result = result .. "\tprops = {\n"
    for _, p in ipairs(outfit.props) do
        result = result .. string.format("\t\t{ %d, %d, %d },\n", p[1], p[2], p[3])
    end
    result = result .. "\t},\n\tcomponents = {\n"
    for _, c in ipairs(outfit.components) do
        result = result .. string.format("\t\t{ %d, %d, %d },\n", c[1], c[2], c[3])
    end
    result = result .. "\t}\n}\n"

    -- Send to server for logging
    TriggerServerEvent("outfit-dumper:saveOutfit", result)

    -- Feedback
    TriggerEvent('chat:addMessage', {
        args = {"^2Outfit saved! Check outfit-dumper folder for your log file."}
    })
end)
