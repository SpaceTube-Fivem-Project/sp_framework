Translations = {}
function Lang(str)

    if not str then return end

    if Config.Lang then

        if Translations[Config.Lang] then

            if Translations[Config.Lang][str] then
                return Translations[Config.Lang][str]
            else
                return "^1Erreur »Aucune correspondance pour " .. str .. " dans le fichier de traduction " .. Config.Lang .. "^0"
            end
        else
            return "^1Erreur »La Lang " .. Config.Lang .." n'est pas reconnu le fichier est peut être manquant ou mal déclaré^0"
        end
    else

        print("^1Erreur » Aucune Langue n'a été configurée (config.lua -> Config.Lang = 'lang_choice')^0")
    end
end

function getLang()
    return Config.Lang
end