-- now upload scripts in github hard😭😭😭

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function applyRainbowEffect(character)
    for _, v in pairs(character:GetChildren()) do
        if v:IsA("MeshPart") or v.Name == "Head" then
            v.Material = Enum.Material.ForceField
            if v.Name == "Head" then
                v.Transparency = 0.3
            end
        end
    end
    
    spawn(function()
        while character == LocalPlayer.Character do
            for _, v in pairs(character:GetChildren()) do
                if (v:IsA("MeshPart") or v.Name == "Head") and v.Parent == character then
                    v.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                end
            end
            wait()
        end
    end)
end

LocalPlayer.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid")
    applyRainbowEffect(character)
end)

if LocalPlayer.Character then
    applyRainbowEffect(LocalPlayer.Character)
end
