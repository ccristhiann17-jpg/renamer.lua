local function renameToNexa()
    for _, gui in pairs(game.CoreGui:GetDescendants()) do
        if gui:IsA("TextLabel") or gui:IsA("TextButton") or gui:IsA("TextBox") then
            if gui.Text then
                local text = gui.Text
                
                text = text:gsub("Inyectando NEXA HUB%.%.%. by NEXA", "Inyectando Nexa Hub...")
                text = text:gsub("Inyectando NEXA HUB... by NEXA", "Inyectando Nexa Hub...")
                text = text:gsub("inyectando NEXA HUB by NEXA", "Inyectando Nexa Hub...")
                
                text = text:gsub("NEXA HUB", "Nexa Hub")
                text = text:gsub("NEXA", "Nexa")
                text = text:gsub("nexa", "nexa")
                
                gui.Text = text
            end
        end
        
        if gui:IsA("ScreenGui") then
            if gui.Name:find("Nexa") or gui.Name:find("nexa") then
                gui.Name = "NexaHub"
            end
        end
    end
end

for i = 1, 10 do
    renameToNexa()
    task.wait(0.5)
end

print("✅ Nexa Hub by Cristhian cargado")
