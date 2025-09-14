-- now upload scripts in github hard😭😭😭

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local function applyRainbowEffect(character)
    spawn(function()
        while character == LocalPlayer.Character do
            for _, v in pairs(character:GetChildren()) do
                if v:IsA("MeshPart") or v.Name == "Head" or v.Name == "Left Arm" or v.Name == "Right Arm" then
                    v.Color = Color3.fromHSV(tick() % 5 / 5, 1, 1)
                end
            end
            RunService.RenderStepped:Wait()
        end
    end)
end

LocalPlayer.CharacterAdded:Connect(function(character)
    character:WaitForChild("Humanoid")
    applyRainbowEffect(character)
end)

if LocalPlayer.Character then
    applyRainbowEffect(character)
end
