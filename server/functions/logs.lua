function logs(...)

    local array = ...

    if array == nil then
        return
    end

    if array.type == nil then

        print(array)
    elseif array.type == "discord" then

        local webhook = Config.Logs.Webhook[array.webhook] or Config.Logs.Webhook.default
        local embedData = {{
            ['title'] = array.title,
            ['color'] = Config.Logs.Colors[array.colors],
            ['footer'] = {
                ['text'] = array.footer.text .. " - " .. os.date("%d-%m-%Y %H:%M"),
                ['icon_url'] = Config.Logs.Images.FooterURL
            },
            ['author'] = {
                -- ['name'] = array.scriptName,
                ['icon_url'] = Config.Logs.Images.authorURL
            }
        }}

        if array.fields then
            embedData[1].fields = array.fieldsData
        else
            embedData[1].description = array.message
        end

        PerformHttpRequest(webhook, nil, 'POST', json.encode({
            username = array.scriptName,
            embeds = embedData
        }), {
            ['Content-Type'] = 'application/json'
        })
    end
end
