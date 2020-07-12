--Private Messages
TriggerEvent(
    "redem:addCommand",
    "doc",
    function(source, args, user)
        if GetPlayerName(tonumber(args[1])) then
            local player = tonumber(args[1])
            TriggerEvent(
                "redem:getPlayerFromId",
                player,
                function(sourceRoleplayer)
                    TriggerEvent(
                        "redem:getPlayerFromId",
                        player,
                        function(playerRoleplayer)
                            TriggerClientEvent(
                                "chatMessage",
                                player,
                                "Documentación",
                                {214, 214, 214},
                                "^2 De ^5" .. GetPlayerName(source) .. " [" .. source .. "]: " .. sourceRoleplayer.getFirstname() .. " " .. sourceRoleplayer.getLastname()
                            )
                            TriggerClientEvent(
                                "chatMessage",
                                source,
                                "Documentación",
                                {214, 214, 214},
                                "^3 Enviado a ^5" .. GetPlayerName(player) .. "."
                            )
                        end
                    )
                end
            )
        else
            TriggerClientEvent("chatMessage", source, "SYSTEM", {255, 0, 0}, "¡ID de jugador incorrecto!")
        end
    end
)
