repeat wait() until game:IsLoaded() and game.Players and game.Players.LocalPlayer and game.Players.LocalPlayer.Character

local plot
local plr = game:GetService("Players").LocalPlayer
local vu = game:GetService("VirtualUser")
local h = plr.Character.HumanoidRootPart
local BlekLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/laderite/bleklib/main/library.lua"))()
    local win = BlekLib:Create({
    Name = "HNY Hub",
    StartupSound = {
        Toggle = false,
        SoundID = "rbxassetid://6958727243",
        TimePosition = 1
    }
})
local maintab = win:Tab('Main')
local charactertab = win:Tab('Character')
local uitab = win:Tab('UI')
local Ctab = win:Tab('Credit')

maintab:Toggle('Auto Farm', function(a)
    print(a)
    if a then       
            for i, v in pairs(game.Workspace.Plots[tostring(plr.Plot.Value)].Roaches:GetChildren()) do
            wait(0.1)
            h.CFrame = v.CFrame
            vu:ClickButton1(Vector2.zero, workspace.CurrentCamera.CFrame)
            end
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Upload"):FireServer()
        task.wait(0.2)
    end
end)

maintab:Button('Auto Obby', function(v)
        game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FinishObby"):FireServer()
            game.Workspace.ChildRemoved:Connect(function(removed)
                if removed.Name == "ObbyBlocker" then
                wait(2)
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("FinishObby"):FireServer()
            end
        end)  
end)

maintab:Slider('Speed', 20, 10, 120, function(a)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = a
end)

charactertab:Button('Reset Character', function()
    game.Players.LocalPlayer.Character:BreakJoints()
end)

uitab:Button('Destroy GUI', function()
    win:Exit()
end)

Ctab:Label('Made by White#0606 & Pukao#0001')
