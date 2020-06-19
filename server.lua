--Private Messages
TriggerEvent(
    "redem:addCommand",
    "pm",
    function(source, args, user)
        -- Es posible que haya que cambiar args[1] por args[2]
        if GetPlayerName(tonumber(args[1])) then
            local player = tonumber(args[1])
            --table.remove(args, 2)
            --table.remove(args, 1)

            TriggerEvent(
                "redem:getPlayerFromId",
                player,
                function(target)
                    TriggerClientEvent(
                        "chatMessage",
                        player,
                        "PM",
                        {214, 214, 214},
                        "^2 De ^5" .. GetPlayerName(source) .. " [" .. source .. "]: ^7" .. table.concat(args, " ")
                    )
                    TriggerClientEvent(
                        "chatMessage",
                        source,
                        "PM",
                        {214, 214, 214},
                        "^3 Enviado a ^5" .. GetPlayerName(player) .. ": ^7" .. table.concat(args, " ")
                    )
                end
            )
        else
            TriggerClientEvent("chatMessage", source, "SYSTEM", {255, 0, 0}, "¡ID de jugador incorrecto!")
        end
    end
)
