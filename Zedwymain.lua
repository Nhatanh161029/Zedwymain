

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Roleck Ps99 Hub", HidePremium = false, SaveConfig = false, ConfigFolder = "OrionTest", IntroEnabled = false})

local Tab =
    Window:MakeTab(
    {
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local Tele =
    Window:MakeTab(
    {
        Name = "Teleport",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

Tele:AddButton(
    {
        Name = "TP Fishing Area",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-180.852783203125, 117.92350006103516, 5175.45703125)
        end
    }
)


Tab:AddToggle(
    {
        Name = "Auto Fish (Advanced)",
        Default = false,
        Callback = function(v)
            Config.autoFishA = v
            spawn(autoFishA)
        end
    }
)

Tab:AddToggle(
    {
        Name = "Auto Mail (Huge, Shard, Gems)",
        Default = false,
        Callback = function(v)
            Config.autoMail = v
            spawn(autoMail)
        end
    }
)

Tab:AddTextbox(
    {
        Name = "Username",
        Default = "",
        TextDisappear = false,
        Callback = function(user)
            username = user
        end
    }
)

Tab:AddTextbox(
    {
        Name = "Shard Amount",
        Default = "",
        TextDisappear = false,
        Callback = function(shards)
            shardAmount = tonumber(shards)
        end
    }
)

Tab:AddTextbox(
    {
        Name = "Gem Amount",
        Default = "",
        TextDisappear = false,
        Callback = function(gems)
            gemAmount = tonumber(gems)
        end
    }
)

Tab:AddButton(
    {
        Name = "Disable 3D Render",
        Callback = function()
            game:GetService("RunService"):Set3dRenderingEnabled(false)
        end
    }
)

Tab:AddButton(
    {
        Name = "Enable 3D Render",
        Callback = function()
            game:GetService("RunService"):Set3dRenderingEnabled(true)
        end
    }
)

OrionLib:Init()

function antiAFK()
    local VirtualInputManager = game:GetService("VirtualInputManager")
    while task.wait() do
        VirtualInputManager:SendKeyEvent(true, "Space", false, game)
        task.wait(.2)
        VirtualInputManager:SendKeyEvent(false, "Space", false, game)
        task.wait(300)
    end
end

function antiAFKN()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(
        function()
            vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
            wait(1)
            vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
        end)
end

spawn(function()
    antiAFK()
    antiAFKN()    
end)

function autoFishA()
    if Config.autoFishA then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-180.852783203125, 117.92350006103516, 5175.45703125)
    end

    while task.wait() and Config.autoFishA do
        local x = math.random(10, 20)
        local z = math.random(10, 20)

        local argsCast = {
            [1] = "AdvancedFishing",
            [2] = "RequestCast",
            [3] = Vector3.new(1470.6005859375, 61.6249885559082, -4448.0107421875) + Vector3.new(x, 0, z)
        }

        game:GetService("ReplicatedStorage").Network.Instancing_FireCustomFromClient:FireServer(unpack(argsCast))
        task.wait(3.5)

        local argsReel = {
            [1] = "AdvancedFishing",
            [2] = "RequestReel"
        }

        game:GetService("ReplicatedStorage").Network.Instancing_FireCustomFromClient:FireServer(unpack(argsReel))
        repeat
            task.wait()

            local hasFishingLine = false
            for _, descendant in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if descendant.Name == "FishingLine" then
                    hasFishingLine = true
                    break
                end
            end

            if not hasFishingLine then
                break
            end

            local argsClicked = {
                [1] = "AdvancedFishing",
                [2] = "Clicked"
            }

            game:GetService("ReplicatedStorage").Network.Instancing_InvokeCustomFromClient:InvokeServer(
                unpack(argsClicked)
            )
        until not hasFishingLine or Config.autoFishA == false
        task.wait()
    end
end
