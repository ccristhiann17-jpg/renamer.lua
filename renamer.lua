local function renameToNexa()
    for _, gui in pairs(game.CoreGui:GetDescendants()) do
        if gui:IsA("TextLabel") or gui:IsA("TextButton") or gui:IsA("TextBox") then
            if gui.Text then
                local text = gui.Text
                
                -- Cambio específico para el mensaje de la imagen
                text = text:gsub("Inyectando NEXA HUB%.%.%. by NEXA")
                text = text:gsub("Inyectando NEXA HUB... by NEXA")
                text = text:gsub("inyectando NEXA HUB by NEXA")
                text = text:gsub("NEXA HUB")
                text = text:gsub("NEXA HUB")
                
                -- Reemplazos generales
                text = text:gsub("Nexa")
                text = text:gsub("NEXA")
                text = text:gsub("nexa")
                
                gui.Text = text
            end
        end
        
        -- Renombrar ventana
        if gui:IsA("ScreenGui") then
            if gui.Name:find("Nexa") or gui.Name:find("nexa") then
                gui.Name = "NexaHub"
            end
        end
    end
end

-- Ejecutamos muchas veces con más espera
for i = 1, 10 do
    renameToNexa()
    task.wait(0.5)
end

print("✅ Nexa Hub by Cristhian cargado") 
