-- [Auto Rejoin]
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
game.NetworkClient.ChildRemoved:Connect(function()
  game:GetService("TeleportService"):Teleport(game.PlaceId)
end)
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)

-- [Auto Team]

if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
pcall(function()
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if _G.Team == "Pirate" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
                    v.Function()
                end
            elseif _G.Team == "Marine" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton.Activated)) do
                    v.Function()
                end
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do
                    v.Function()
                end
            end
        end
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end
end)

-- [Check Quest]

local placeId = game.PlaceId
if placeId == 2753915549 then
	World1 = true
elseif placeId == 4442272183 then
	World2 = true
elseif placeId == 7449423635 then
	World3 = true
else
	game.Players.LocalPlayer:Kick("Ban")
end

function CheckQuest()
local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
    if World1 then
 if MyLevel == 1 or MyLevel <= 9 then -- Bandit [Lv. 5]
            Mon = "Bandit [Lv. 5]"
            NameMon = "Bandit"
            CFrameMon = CFrame.new(1194, 53, 1620, 1, 0, 0, 0, 1, 0, 0, 0, 1)

            NameQuest = "BanditQuest1"
            LevelQuest = 1
            CFrameQuest = CFrame.new(1061, 17, 1545, 1, 0, 0, 0, 1, 0, 0, 0, 1)

        elseif MyLevel == 10 or MyLevel <= 14 then -- Monkey [Lv. 14]
            Mon = "Monkey [Lv. 14]"
            NameMon = "Monkey"
            CFrameMon = CFrame.new(-1377, 62, 142, 1, 0, 0, 0, 1, 0, 0, 0, 1)

            NameQuest = "JungleQuest"
            LevelQuest = 1
            CFrameQuest = CFrame.new(-1602, 35, 154, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                
        elseif MyLevel == 15 or MyLevel <= 29 then -- Gorilla [Lv. 20]
            Mon = "Gorilla [Lv. 20]"
            NameMon = "Gorilla"
            CFrameMon = CFrame.new(-1237, 62, -486, 1, 0, 0, 0, 1, 0, 0, 0, 1)

            NameQuest = "JungleQuest"
            LevelQuest = 2
            CFrameQuest = CFrame.new(-1602, 35, 154, 1, 0, 0, 0, 1, 0, 0, 0, 1)

        elseif MyLevel == 30 or MyLevel <= 39 then -- Pirate [Lv. 35]
            Mon = "Pirate [Lv. 35]"
            NameMon = "Pirate"
            CFrameMon = CFrame.new(-1215, 53, 3915, 1, 0, 0, 0, 1, 0, 0, 0, 1)

            NameQuest = "BuggyQuest1"
            LevelQuest = 1
            CFrameQuest = CFrame.new(-1141, 4, 3831, 1, 0, 0, 0, 1, 0, 0, 0, 1)

        elseif MyLevel == 40 or MyLevel <= 59 then -- Brute [Lv. 45]
            Mon = "Brute [Lv. 45]"
            NameMon = "Brute"
            CFrameMon = CFrame.new(-1150, 97, 4311, 1, 0, 0, 0, 1, 0, 0, 0, 1)

            NameQuest = "BuggyQuest1"
            LevelQuest = 2
            CFrameQuest = CFrame.new(-1141, 4, 3831, 1, 0, 0, 0, 1, 0, 0, 0, 1)

        elseif MyLevel == 60 or MyLevel <= 74 then -- Desert Bandit [Lv. 60]
            Mon = "Desert Bandit [Lv. 60]"
            NameMon = "Desert Bandit"
            CFrameMon = CFrame.new(930, 53, 4490, 1, 0, 0, 0, 1, 0, 0, 0, 1)

            NameQuest = "DesertQuest"
            LevelQuest = 1
            CFrameQuest = CFrame.new(896, 5, 4390, 1, 0, 0, 0, 1, 0, 0, 0, 1)

        elseif MyLevel == 75 or MyLevel <= 89 then -- Desert Officer [Lv. 70]
            Mon = "Desert Officer [Lv. 70]"
            NameMon = "Desert Officer"
            CFrameMon = CFrame.new(1608, 53, 4372, 1, 0, 0, 0, 1, 0, 0, 0, 1)

            NameQuest = "DesertQuest"
            LevelQuest = 2
            CFrameQuest = CFrame.new(896, 5, 4390, 1, 0, 0, 0, 1, 0, 0, 0, 1)

        elseif MyLevel == 90 or MyLevel <= 99 then -- Snow Bandit [Lv. 90]
            Mon = "Snow Bandit [Lv. 90]"
            NameMon = "Snow Bandits"
            CFrameMon = CFrame.new(1316, 145, -1397, 1, 0, 0, 0, 1, 0, 0, 0, 1)

            NameQuest = "SnowQuest"
            LevelQuest = 1
            CFrameQuest = CFrame.new(1389, 86, -1298, 1, 0, 0, 0, 1, 0, 0, 0, 1)

		elseif MyLevel == 100 or MyLevel <= 119 then -- Snowman [Lv. 100]
            Mon = "Snowman [Lv. 100]"
            NameMon = "Snowman"
            CFrameMon = CFrame.new(1316, 145, -1397, 1, 0, 0, 0, 1, 0, 0, 0, 1)

            NameQuest = "SnowQuest"
            LevelQuest = 2
            CFrameQuest = CFrame.new(1389, 86, -1298, 1, 0, 0, 0, 1, 0, 0, 0, 1)

        
        if MyLevel == 120 or MyLevel <= 149 then -- Chief Petty Officer [Lv. 120]
			Mon = "Chief Petty Officer [Lv. 120]"
			NameMon = "Chief Petty Officer"
			CFrameMon = CFrame.new(-4795, 57, 3995, 1, 0, 0, 0, 1, 0, 0, 0, 1)
		
			NameQuest = "MarineQuest2"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-5039, 27, 4324, 1, 0, 0, 0, 1, 0, 0, 0, 1)

        elseif MyLevel == 150 or MyLevel <= 174 then -- Sky Bandit [Lv. 150]
            Mon = "Sky Bandit [Lv. 150]"
            NameMon = "Sky Bandit"
            CFrameMon = CFrame.new(-4945, 317, -2785, -1, 8.6e-05, -0, 8.6e-05, 1, 3.8e-06, 0, -3.8e-06, -1)

            NameQuest = "SkyQuest"
            LevelQuest = 1
            CFrameQuest = CFrame.new(-4839, 718, -2619, -1, 8.6e-05, -0, 8.6e-05, 1, 3.8e-06, 0, -3.8e-06, -1)

		elseif MyLevel == 175 or MyLevel <= 189 then -- Dark Master [Lv. 175]
			Mon = "Dark Master [Lv. 175]"
            NameMon = "Dark Master"
            CFrameMon = CFrame.new(-5250, 427, -2270, 1, 0, 0, 0, 1, 0, 0, 0, 1)

            NameQuest = "SkyQuest"
            LevelQuest = 2
            CFrameQuest = CFrame.new(-4839, 716, -2619, 1, 0, 0, 0, 1, 0, 0, 0, 1)

        elseif MyLevel == 190 or MyLevel <= 209 then -- Prisoner [Lv. 190]
			Mon = "Prisoner [Lv. 190]"
            NameMon = "Prisoner"
            CFrameMon = CFrame.new(5090, 40, 424, -0.85, 0, -0.5, 0, 1, 0, 0.5, 0, -0.85)

            NameQuest = "PrisonerQuest"
            LevelQuest = 1
            CFrameQuest = CFrame.new(5310, 0, 474, -0.85, 0, -0.5, 0, 1, 0, 0.5, 0, -0.85)

        elseif MyLevel == 210 or MyLevel <= 249 then -- Dangerous Prisoner [Lv. 210]
			Mon = "Dangerous Prisoner [Lv. 210]"
            NameMon = "Dangerous Prisoner"
            CFrameMon = CFrame.new(5645.5, 40, 764.5, 0.3, 0, 1, 0, 1, 0, -1, 0, 0.3)

            NameQuest = "PrisonerQuest"
            LevelQuest = 2
            CFrameQuest = CFrame.new(5310, 0, 474, 0.3, 0, 1, 0, 1, 0, -1, 0, 0.3)
        elseif MyLevel == 250 or MyLevel <= 299 then -- Toga Warrior [Lv. 250]
			Mon = "Toga Warrior [Lv. 250]"
            NameMon = "Toga Warrior"
            CFrameMon = CFrame.new(-1800, 46, -2852.5, -0.8, 0, -0.56, 0, 1, 0, 0.56, 0, -0.8)

            NameQuest = "ColosseumQuest"
            LevelQuest = 1
            CFrameQuest = CFrame.new(-1580, 6, -2986, -0.8, 0, -0.56, 0, 1, 0, 0.56, 0, -0.8)

        elseif MyLevel == 300 or MyLevel <= 324 then -- Military Soldier [Lv. 300]
			Mon = "Military Soldier [Lv. 300]"
            NameMon = "Military Soldier"
            CFrameMon = CFrame.new(-5465, 110, 8675)

            NameQuest = "MagmaQuest"
            LevelQuest = 1
            CFrameQuest = CFrame.new(-5313, 10, 8515)

        elseif MyLevel == 325 or MyLevel <= 374 then -- Military Spy [Lv. 325]
			Mon = "Military Spy [Lv. 325]"
            NameMon = "Military Spy"
            CFrameMon = CFrame.new(-5785, 120, 8760)

            NameQuest = "MagmaQuest"
            LevelQuest = 2
            CFrameQuest = CFrame.new(-5313, 10, 8515)

        elseif MyLevel == 375 or MyLevel <= 399 then -- Fishman Warrior [Lv. 375]
			Mon = "Fishman Warrior [Lv. 375]"
            NameMon = "Fishman Warrior"
            CFrameMon = CFrame.new(60945, 52, 1525)

            NameQuest = "FishmanQuest"
            LevelQuest = 1
            CFrameQuest = CFrame.new(61121, 17, 1564)
        
        local Distance = (Vector3.new(61121, 17, 1564) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance > 3000 then
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61165, 10, 1820)) -- Bypass Fishman Island
        end

        elseif MyLevel == 400 or MyLevel <= 449 then -- Fishman Commando [Lv. 400]
			Mon = "Fishman Commando [Lv. 400]"
            NameMon = "Fishman Commando"
            CFrameMon = CFrame.new(61865, 76, 1385)

            NameQuest = "FishmanQuest"
            LevelQuest = 2
            CFrameQuest = CFrame.new(61121, 17, 1564)

        local Distance = (Vector3.new(61121, 17, 1564) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance > 3000 then
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61165, 10, 1820)) -- Bypass Fishman Island
        end

        elseif MyLevel == 450 or MyLevel <= 474 then -- God's Guard [Lv. 450]
            Mon = "God's Guard [Lv. 450]"
            NameMon = "God's Guard"
            CFrameMon = CFrame.new(-4580, 915, -1880)

            NameQuest = "SkyExp1Quest"
            LevelQuest = 1
            CFrameQuest = CFrame.new(-4720, 845, -1955)

        local Distance = (Vector3.new(-4720, 845, -1955) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance > 1000 then
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4625, 850, -1705)) -- Bypass Sky 1
        end

        elseif MyLevel == 475 or MyLevel <= 524 then -- Shanda [Lv. 475]
            Mon = "Shanda [Lv. 475]"
            NameMon = "Shanda"
            CFrameMon = CFrame.new(-7685, 5605, -440)

            NameQuest = "SkyExp1Quest"
            LevelQuest = 2
            CFrameQuest = CFrame.new(-7856, 5545, -382)

        local Distance = (Vector3.new(-7856, 5545, -382) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance > 1000 then
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7910, 5545, -380)) -- Bypass Sky 2
        end

        elseif MyLevel == 525 or MyLevel <= 549 then -- Royal Squad [Lv. 525]
            Mon = "Royal Squad [Lv. 525]"
            NameMon = "Royal Squad"
            CFrameMon = CFrame.new(-8120, 5656, -1510)

            NameQuest = "SkyExp2Quest"
            LevelQuest = 1
            CFrameQuest = CFrame.new(-7906, 5634, -1411)

        if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7910, 5545, -380)) -- Bypass Sky 2
        end

        elseif MyLevel == 550 or MyLevel <= 624 then -- Royal Soldier [Lv. 550]
            Mon = "Royal Soldier [Lv. 550]"
            NameMon = "Royal Soldier"
            CFrameMon = CFrame.new(-8120, 5656, -1510)

            NameQuest = "SkyExp2Quest"
            LevelQuest = 2
            CFrameQuest = CFrame.new(-7906, 5634, -1411)
            
        if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5440, 77 ,-6416)) -- Bypass Sky 2
        end

        elseif MyLevel == 625 or MyLevel <= 649 then -- Galley Pirate [Lv. 625]
            Mon = "Galley Pirate [Lv. 625]"
            NameMon = "Galley Pirate"
            CFrameMon = CFrame.new(5560, 150, 4000)

            NameQuest = "FountainQuest"
            LevelQuest = 1
            CFrameQuest = CFrame.new(5259, 37, 4050)

        elseif MyLevel == 650 or Mylevel <= 699 then -- Galley Captain [Lv. 650]
            Mon = "Galley Captain [Lv. 650]"
            NameMon = "Galley Captain"
            CFrameMon = CFrame.new(5690, 89, 4950)
                
            NameQuest = "FountainQuest"
            LevelQuest = 2
            CFrameQuest = CFrame.new(5259, 37, 4050)
            
                        if MyLevel >= 700 then
    _G.AutoNewWorld = true
else
    _G.AutoNewWorld = false
end

        end
    end

	if World2 then
		if MyLevel == 700 or MyLevel <= 724 then -- Raider [Lv. 700]
			Mon = "Raider [Lv. 700]"
            NameMon = "Raider"
			CFrameMon = CFrame.new(-666, 73, 2386)

			NameQuest = "Area1Quest"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-428, 73, 1836)

		elseif MyLevel == 725 or MyLevel <= 774 then -- Mercenary [Lv. 725]
			Mon = "Mercenary [Lv. 725]"
            NameMon = "Mercenary"
            CFrameMon = CFrame.new(-1095, 65, 1359)

			NameQuest = "Area1Quest"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-428, 73, 1836)

		elseif MyLevel == 775 or MyLevel <= 874 then -- Swan Pirate [Lv. 775]
			Mon = "Swan Pirate [Lv. 775]"
            NameMon = "Swan Pirate"
            CFrameMon = CFrame.new(975, 121, 1290)

			NameQuest = "Area2Quest"
            LevelQuest = 1
            CFrameQuest = CFrame.new(635, 73, 919)

		elseif MyLevel == 875 or MyLevel <= 899 then -- Marine Lieutenant [Lv. 875]
			Mon = "Marine Lieutenant [Lv. 875]"
            NameMon = "Marine Lieutenant"
            CFrameMon = CFrame.new(-2939, 152, -3063)

			NameQuest = "MarineQuest3"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-2442, 73, -3218)

		elseif MyLevel == 900 or MyLevel <= 949 then -- Marine Captain [Lv. 900]
			Mon = "Marine Captain [Lv. 900]"
            NameMon = "Marine Captain"
            CFrameMon = CFrame.new(-1838, 92, -3194)

			NameQuest = "MarineQuest3"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-2442, 73, -3218)

		elseif MyLevel == 950 or MyLevel <= 974 then -- Zombie [Lv. 950]
			Mon = "Zombie [Lv. 950]"
            NameMon = "Zombie"
            CFrameMon = CFrame.new(-5588, 187, -846)

			NameQuest = "ZombieQuest"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-5495, 48, -792)

		elseif MyLevel == 975 or MyLevel <= 999 then -- Vampire [Lv. 975]
			Mon = "Vampire [Lv. 975]"
            NameMon = "Vampire"
            CFrameMon = CFrame.new(-6059, 222, -1269)

			NameQuest = "ZombieQuest"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-5495, 48, -792)

		elseif MyLevel == 1000 or MyLevel <= 1049 then -- Snow Trooper [Lv. 1000] **
			Mon = "Snow Trooper [Lv. 1000]"
            NameMon = "Snow Trooper"
            CFrameMon = CFrame.new(529, 430, -5543)

			NameQuest = "SnowMountainQuest"
			LevelQuest = 1
			CFrameQuest = CFrame.new(610, 406, -5373)

		elseif MyLevel == 1050 or MyLevel <= 1099 then -- Winter Warrior [Lv. 1050]
			Mon = "Winter Warrior [Lv. 1050]"
            NameMon = "Winter Warrior"
            CFrameMon = CFrame.new(1264, 458, -5194)

			NameQuest = "SnowMountainQuest"
			LevelQuest = 2
			CFrameQuest = CFrame.new(610, 406, -5373)

		elseif MyLevel == 1100 or MyLevel <= 1124 then -- Lab Subordinate [Lv. 1100]
			Mon = "Lab Subordinate [Lv. 1100]"
            NameMon = "Lab Subordinate"
            CFrameMon = CFrame.new(-5886, 65, -4968)

			NameQuest = "IceSideQuest"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-5886, 65, -4968)
			
		elseif MyLevel == 1125 or MyLevel <= 1174 then -- Horned Warrior [Lv. 1125]
			Mon = "Horned Warrior [Lv. 1125]"
            NameMon = "Horned Warrior"
            CFrameMon = CFrame.new(-6389, 28, -5870)

			NameQuest = "IceSideQuest"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-6064, 22, -4904)

		elseif MyLevel == 1175 or MyLevel <= 1199 then -- Magma Ninja [Lv. 1175]
			Mon = "Magma Ninja [Lv. 1175]"
            NameMon = "Magma Ninja"
            CFrameMon = CFrame.new(-5429, 83, -6072)

			NameQuest = "FireSideQuest"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-5430, 16, -5298)

		elseif MyLevel == 1200 or MyLevel <= 1249 then -- Lava Pirate [Lv. 1200]
			Mon = "Lava Pirate [Lv. 1200]"
            NameMon = "Lava Pirate"
            CFrameMon = CFrame.new(-5284, 35, -4705)

			NameQuest = "FireSideQuest"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-5430, 16, -5298)

		elseif MyLevel == 1250 or MyLevel <= 1274 then -- Ship Deckhand [Lv. 1250]
			Mon = "Ship Deckhand [Lv. 1250]"
            NameMon = "Ship Deckhand"
            CFrameMon = CFrame.new(918, 125, 32946)

			NameQuest = "ShipQuest1"
			LevelQuest = 1
			CFrameQuest = CFrame.new(1043, 125, 32909)

        local Distance = (Vector3.new(918, 125, 32946) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance > 30000 then
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(920, 154, 32838)) -- Bypass Ship
        end

		elseif MyLevel == 1275 or MyLevel <= 1299 then -- Ship Engineer [Lv. 1275]
			Mon = "Ship Engineer [Lv. 1275]"
            NameMon = "Ship Engineer"
            CFrameMon = CFrame.new(918, 125, 32946)

			NameQuest = "ShipQuest1"
			LevelQuest = 2
			CFrameQuest = CFrame.new(1043, 125, 32909)

        local Distance = (Vector3.new(918, 125, 32946) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance > 30000 then
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(920, 154, 32838)) -- Bypass Ship
        end

		elseif MyLevel == 1300 or MyLevel <= 1324 then -- Ship Steward [Lv. 1300]
			Mon = "Ship Steward [Lv. 1300]"
            NameMon = "Ship Steward"
            CFrameMon = CFrame.new(915, 130, 33439)

			NameQuest = "ShipQuest2"
			LevelQuest = 1
			CFrameQuest = CFrame.new(971, 125, 33245)

        local Distance = (Vector3.new(918, 125, 32946) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance > 30000 then
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(920, 154, 32838)) -- Bypass Ship
        end

		elseif MyLevel == 1325 or MyLevel <= 1349 then -- Ship Officer [Lv. 1325]
			Mon = "Ship Officer [Lv. 1325]"
            NameMon = "Ship Officer"
            CFrameMon = CFrame.new(911, 181, 33365)

			NameQuest = "ShipQuest2"
			LevelQuest = 2
			CFrameQuest = CFrame.new(971, 125, 33245)


        local Distance = (Vector3.new(918, 125, 32946) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance > 30000 then
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(920, 154, 32838)) -- Bypass Ship
        end

		elseif MyLevel == 1350 or MyLevel <= 1374 then -- Arctic Warrior [Lv. 1350]
			Mon = "Arctic Warrior [Lv. 1350]"
            NameMon = "Arctic Warrior"
            CFrameMon = CFrame.new(5992, 58, -6180)

			NameQuest = "FrostQuest"
			LevelQuest = 1
			CFrameQuest = CFrame.new(5667, 28, -6484)
 
        local Distance = (Vector3.new(5667, 28, -6484) - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance > 30000 then
           game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6496, 89, -116)) -- Bypass End Ship
        end

		elseif MyLevel == 1375 or MyLevel <= 1424 then -- Snow Lurker [Lv. 1375]
			Mon = "Snow Lurker [Lv. 1375]"
            NameMon = "Snow Lurker"
            CFrameMon = CFrame.new(5518, 61, -6830)

			NameQuest = "FrostQuest"
			LevelQuest = 2
			CFrameQuest = CFrame.new(5667, 28, -6484)

		elseif MyLevel == 1425 or MyLevel <= 1449 then -- Sea Soldier [Lv. 1425]
			Mon = "Sea Soldier [Lv. 1425]"
            NameMon = "Sea Soldier"
            CFrameMon = CFrame.new(-3028, 100, -9798)

			NameQuest = "ForgottenQuest"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-3053, 237, -10146)

		elseif MyLevel >= 1450 then -- Water Fighter [Lv. 1450]
			Mon = "Water Fighter [Lv. 1450]"
            NameMon = "Water Fighter"
            CFrameMon = CFrame.new(-3229, 299, -10562)

			NameQuest = "ForgottenQuest"
			LevelQuest = 2
            CFrameQuest = CFrame.new(-3053, 237, -10146)
		end
	end

	if World3 then
		if MyLevel == 1500 or MyLevel <= 1524 then -- Pirate Millionaire [Lv. 1500]
			Mon = "Pirate Millionaire [Lv. 1500]"
            NameMon = "Pirate Millionaire"
            CFrameMon = CFrame.new(-373, 93, 5550)

			NameQuest = "PiratePortQuest"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-288, 44, 5576)

		elseif MyLevel == 1525 or MyLevel <= 1574 then -- Pistol Billionaire [Lv. 1525]
			Mon = "Pistol Billionaire [Lv. 1525]"
            NameMon = "Pistol Billionaire"
            CFrameMon = CFrame.new(-469, 124, 5904)

			NameQuest = "PiratePortQuest"
            LevelQuest = 2
			CFrameQuest = CFrame.new(-288, 44, 5576)

		elseif MyLevel == 1575 or MyLevel <= 1599 then -- Dragon Crew Warrior [Lv. 1575]
			Mon = "Dragon Crew Warrior [Lv. 1575]"
            NameMon = "Dragon Crew Warrior"
            CFrameMon = CFrame.new(6339, 101, -1213)

			NameQuest = "AmazonQuest"
			LevelQuest = 1
			CFrameQuest = CFrame.new(5835, 52, -1105)

		elseif MyLevel == 1600 or MyLevel <= 1624 then -- Dragon Crew Archer [Lv. 1600]
			Mon = "Dragon Crew Archer [Lv. 1600]"
            NameMon = "Dragon Crew Archer"
            CFrameMon = CFrame.new(6594, 428, 139)

			NameQuest = "AmazonQuest"
			LevelQuest = 2
			CFrameQuest = CFrame.new(5835, 52, -1105)

		elseif MyLevel == 1625 or MyLevel <= 1649 then -- Female Islander [Lv. 1625]
			Mon = "Female Islander [Lv. 1625]"
            NameMon = "Female Islander"
            CFrameMon = CFrame.new(5308, 850, 1047)

			NameQuest = "AmazonQuest2"
			LevelQuest = 1
			CFrameQuest = CFrame.new(5443, 602, 751)

		elseif MyLevel == 1650 or MyLevel <= 1699 then -- Giant Islander [Lv. 1650]
			Mon = "Giant Islander [Lv. 1650]"
            NameMon = "Giant Islanders"
            CFrameMon = CFrame.new(4951, 650, -68)

			NameQuest = "AmazonQuest2"
			LevelQuest = 2
			CFrameQuest = CFrame.new(5443, 602, 751)

		elseif MyLevel == 1700 or MyLevel <= 1724 then -- Marine Commodore [Lv. 1700]
			Mon = "Marine Commodore [Lv. 1700]"
            NameMon = "Marine Commodore"
			CFrameMon = CFrame.new(2447, 122, -7470)

			NameQuest = "MarineTreeIsland"
			LevelQuest = 1
			CFrameQuest = CFrame.new(2180, 29, -6737)

		elseif MyLevel == 1725 or MyLevel <= 1774 then -- Marine Rear Admiral [Lv. 1725]
			Mon = "Marine Rear Admiral [Lv. 1725]"
			NameMon = "Marine Rear Admiral"
			CFrameMon = CFrame.new(3671, 161, -6932)

			NameQuest = "MarineTreeIsland"
			LevelQuest = 2
			CFrameQuest = CFrame.new(2180, 29, -6737)

		elseif MyLevel == 1775 or MyLevel <= 1800 then -- Fishman Raider [Lv. 1775]
			Mon = "Fishman Raider [Lv. 1775]"
            NameMon = "Fishman Raider"
            CFrameMon = CFrame.new(-10560, 382, -8466)

			NameQuest = "DeepForestIsland3"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-10584, 332, -8758)

		elseif MyLevel == 1800 or MyLevel <= 1824 then -- Fishman Captain [Lv. 1800]
			Mon = "Fishman Captain [Lv. 1800]"
            NameMon = "Fishman Captain"
            CFrameMon = CFrame.new(-10993, 382, -8940)

			NameQuest = "DeepForestIsland3"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-10584, 332, -8758)

		elseif MyLevel == 1825 or MyLevel <= 1849 then -- Forest Pirate [Lv. 1825]
			Mon = "Forest Pirate [Lv. 1825]"
            NameMon = "Forest Pirate"
            CFrameMon = CFrame.new(-13479, 383, -7905)

			NameQuest = "DeepForestIsland"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-13232, 333, -7627)

		elseif MyLevel == 1850 or MyLevel <= 1899 then -- Mythological Pirate [Lv. 1850]
			Mon = "Mythological Pirate [Lv. 1850]"
			NameMon = "Mythological Pirate"
            CFrameMon = CFrame.new(-13545, 519, -6917)

			NameQuest = "DeepForestIsland"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-13232, 333, -7627)

		elseif MyLevel == 1900 or MyLevel <= 1924 then -- Jungle Pirate [Lv. 1900]
			Mon = "Jungle Pirate [Lv. 1900]"
            NameMon = "Jungle Pirate"
			CFrameMon = CFrame.new(-12107, 380, -10549)        

			NameQuest = "DeepForestIsland2"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-12684, 391, -9902)

		elseif MyLevel == 1925 or MyLevel <= 1974 then -- Musketeer Pirate [Lv. 1925]
			Mon = "Musketeer Pirate [Lv. 1925]"
			NameMon = "Musketeer Pirate"
            CFrameMon = CFrame.new(-13286, 520, -9769)

			NameQuest = "DeepForestIsland2"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-12684, 391, -9902)

		elseif MyLevel == 1975 or MyLevel <= 1999 then -- Reborn Skeleton [Lv. 1975]
			Mon = "Reborn Skeleton [Lv. 1975]"
            NameMon = "Reborn Skeleton"
            CFrameMon = CFrame.new(-8760, 192, 6039)

			NameQuest = "HauntedQuest1"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-9482, 142, 5567)

		elseif MyLevel == 2000 or MyLevel <= 2024 then -- Living Zombie [Lv. 2000]
			Mon = "Living Zombie [Lv. 2000]"
			NameMon = "Living Zombie"
            CFrameMon = CFrame.new(-10144, 192, 5932)

			NameQuest = "HauntedQuest1"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-9482, 142, 5567)

            elseif MyLevel == 2025 or MyLevel <= 2049 then -- Demonic Soul [Lv. 2025]
			Mon = "Demonic Soul [Lv. 2025]"
            NameMon = "Demonic Soul"
            CFrameMon = CFrame.new(-9507, 221, 6158)
            
			NameQuest = "HauntedQuest2"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-9513, 172, 6079)

		elseif MyLevel == 2050 or MyLevel <= 2074 then -- Posessed Mummy [Lv. 2050]
			Mon = "Posessed Mummy [Lv. 2050]"
            NameMon = "Posessed Mummy"
            CFrameMon = CFrame.new(-9577, 55, 6223)
            
			NameQuest = "HauntedQuest2"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-9513, 172, 6079)

		elseif MyLevel == 2075 or MyLevel <= 2099 then -- Peanut Scout [Lv. 2075]
			Mon = "Peanut Scout [Lv. 2075]"
            NameMon = "Peanut Scout"
            CFrameMon = CFrame.new(-2124, 123, -10435)

			NameQuest = "NutsIslandQuest"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-2104, 38, -10192)

		elseif MyLevel == 2100 or MyLevel <= 2124 then -- Peanut President [Lv. 2100]
			Mon = "Peanut President [Lv. 2100]"
            NameMon = "Peanut President"
            CFrameMon = CFrame.new(-2124, 123, -10435)

			NameQuest = "NutsIslandQuest"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-2104, 38, -10192)

		elseif MyLevel == 2125 or MyLevel <= 2149 then -- Ice Cream Chef [Lv. 2125]
			Mon = "Ice Cream Chef [Lv. 2125]"
            NameMon = "Ice Cream Chef"
            CFrameMon = CFrame.new(-641, 127, -11062)

			NameQuest = "IceCreamIslandQuest"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-822, 66, -10965)

		elseif MyLevel == 2150 or MyLevel <= 2199 then -- Ice Cream Commander [Lv. 2150]
			Mon = "Ice Cream Commander [Lv. 2150]"
            NameMon = "Ice Cream Commander"
            CFrameMon = CFrame.new(-641, 127, -11062)

			NameQuest = "IceCreamIslandQuest"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-822, 66, -10965)

		elseif MyLevel == 2200 or MyLevel <= 2224 then -- Cookie Crafter [Lv. 2200]
			Mon = "Cookie Crafter [Lv. 2200]"
            NameMon = "Cookie Crafter"
            CFrameMon = CFrame.new(-2365, 91, -12099)

			NameQuest = "CakeQuest1"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-2020, 38, -12025)

		elseif MyLevel == 2225 or MyLevel <= 2249 then -- Cake Guard [Lv. 2225]
			Mon = "Cake Guard [Lv. 2225]"
            NameMon = "Cake Guard"
            CFrameMon = CFrame.new(-1651, 91, -12308)

			NameQuest = "CakeQuest1"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-2020, 38, -12025)

		elseif MyLevel == 2250 or MyLevel <= 2274 then -- Baking Staff [Lv. 2250]
			Mon = "Baking Staff [Lv. 2250]"
            NameMon = "Baking Staff"
            CFrameMon = CFrame.new(-1870, 91, -12938)

			NameQuest = "CakeQuest2"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-1926, 38, -12850)

		elseif MyLevel == 2275 or MyLevel <= 2299 then -- Head Baker [Lv. 2275]
			Mon = "Head Baker [Lv. 2275]"
            NameMon = "Head Baker"
            CFrameMon = CFrame.new(-1926, 91, -12850)

			NameQuest = "CakeQuest2"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-1926, 38, -12850)

		elseif MyLevel == 2300 or MyLevel <= 2324 then -- Cocoa Warrior [Lv. 2300]
			Mon = "Cocoa Warrior [Lv. 2300]"
            NameMon = "Cocoa Warrior"
            CFrameMon = CFrame.new(713, 74, -12593)

			NameQuest = "ChocQuest1"
			LevelQuest = 1
			CFrameQuest = CFrame.new(231, 23, -12194)

		elseif MyLevel == 2325 or MyLevel <= 2349 then -- Chocolate Bar Battler [Lv. 2325]
			Mon = "Chocolate Bar Battler [Lv. 2325]"
            NameMon = "Chocolate Bar Battler"
            CFrameMon = CFrame.new(85, 74, -12315)

			NameQuest = "ChocQuest1"
			LevelQuest = 2
			CFrameQuest = CFrame.new(231, 23, -12194)

		elseif MyLevel == 2350 or MyLevel <= 2374 then -- Sweet Thief [Lv. 2350]
			Mon = "Sweet Thief [Lv. 2350]"
            NameMon = "Sweet Thief"
            CFrameMon = CFrame.new(-70, 74, -12664)

			NameQuest = "ChocQuest2"
			LevelQuest = 1
			CFrameQuest = CFrame.new(151, 23, -12774)

		elseif MyLevel == 2375 or MyLevel <= 2399 then -- Candy Rebel [Lv. 2375]
			Mon = "Candy Rebel [Lv. 2375]"
            NameMon = "Candy Rebel"
            CFrameMon = CFrame.new(190, 74, -12845)

			NameQuest = "ChocQuest2"
			LevelQuest = 2
			CFrameQuest = CFrame.new(151, 23, -12774)

        elseif MyLevel == 2400 or MyLevel <= 2424 then -- Candy Pirate [Lv. 2400]
			Mon = "Candy Pirate [Lv. 2400]"
            NameMon = "Candy Pirate"
            CFrameMon = CFrame.new(-1200, 240, -14705)

			NameQuest = "CandyQuest1"
			LevelQuest = 1
			CFrameQuest = CFrame.new(-1150, 15, -14445)

        elseif MyLevel >= 2425 then -- Snow Demon [Lv. 2425]
			Mon = "Snow Demon [Lv. 2425]"
            NameMon = "Snow Demon"
            CFrameMon = CFrame.new(-915, 195, -14470)

			NameQuest = "CandyQuest1"
			LevelQuest = 2
			CFrameQuest = CFrame.new(-1150, 15, -14445)
		end
    end
end
end

-- [Tween Service]

function TP(P)
	Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
	if Distance < 100 then
		Speed = 1000
    elseif Distance < 200 then
		Speed = 500
    elseif Distance < 300 then
		Speed = 400
	elseif Distance < 500 then
		Speed = 350
	elseif Distance < 1000 then
		Speed = 300
    elseif Distance >= 1000 then
		Speed = 250 
    end

    game:GetService("TweenService"):Create(
		game.Players.LocalPlayer.Character.HumanoidRootPart,
		TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
		{CFrame = P}
	):Play()
end

function TP2(P)
    Distance = (P.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 100 then
        Speed = 1000
    elseif Distance < 200 then
        Speed = 500
    elseif Distance < 300 then
        Speed = 400
    elseif Distance < 500 then
        Speed = 350
    elseif Distance < 1000 then
        Speed = 320
    elseif Distance >= 1000 then
        Speed = 320 
    end
    game:GetService("TweenService"):Create(
        game.Players.LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = P}
    ):Play()
    _G.Clip = true
    wait(Distance/Speed)
    _G.Clip = false
end

-- [Body Gyro]

spawn(function()
    game:GetService("RunService").Heartbeat:Connect(function()
        ---[Auto Farm Level]
        if  _G.AutoFarmLevel
		or _G.AutoSkipLevel
		
		
		or _G.AutoElitehunter
		
			--[World 1]
			or _G.AutoNewWorld
			--[World 2]
			
			--[World 3]
			or _G.AutoFarmBone 
			or _G.AutoFarmCake
			or _G.Auto_Dungeon
			--[Clip]
			or _G.Noclip or _G.Clip 
			then	
            if not game:GetService("Workspace"):FindFirstChild("LOL") then
                local LOL = Instance.new("Part")
                LOL.Name = "LOL"
                LOL.Parent = game.Workspace
                LOL.Anchored = true
                LOL.Transparency = 1
                LOL.Size = Vector3.new(30,-0.5,30)
            elseif game:GetService("Workspace"):FindFirstChild("LOL") then
                game.Workspace["LOL"].CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.8, 0)
            end
        else
            if game:GetService("Workspace"):FindFirstChild("LOL") then
                game:GetService("Workspace"):FindFirstChild("LOL"):Destroy()
            end
        end
    end)
end)

spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        --[Auto Farm Level]
		if  _G.AutoFarmLevel
		or _G.AutoElitehunter
		 

		--[World 1]
		or _G.AutoNewWorld
		--[World 2]
				
		--[World 3]
		or _G.AutoFarmBone 
		or _G.AutoFarmCake
		or _G.Auto_Dungeon
		--[Clip]
		or _G.Noclip or _G.Clip 
		then	
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false
                end
            end
        end
    end)
end)

-- [StartMagnet]

task.spawn(function()
	while task.wait() do
		pcall(function()
			for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if StartMagnet then
					if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 300 then 
						if syn then
							if isnetworkowner(v.HumanoidRootPart) then
								v.HumanoidRootPart.CFrame = Posmon
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid.WalkSpeed = 0
								v.Humanoid.JumpPower = 0
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
							end
						else
							v.HumanoidRootPart.CFrame = PosMon
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid.WalkSpeed = 0
							v.Humanoid.JumpPower = 0
							v.Head.CanCollide = false
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Transparency = 1
							v.Humanoid:ChangeState(11)	
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
						end
					elseif (v.HumanoidRootPart.Position-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).magnitude <= 250 then
						if syn then
							if isnetworkowner(v.HumanoidRootPart) then
								v.HumanoidRootPart.CFrame = PosMon
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								v.Humanoid.JumpPower = 0
								v.Humanoid.WalkSpeed = 0
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.Size = Vector3.new(5,5,5)
								v.HumanoidRootPart.Transparency = 1
								v.Humanoid:ChangeState(11)
								sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
							end
						else
							v.HumanoidRootPart.CFrame = PosMon
							if v.Humanoid:FindFirstChild("Animator") then
								v.Humanoid.Animator:Destroy()
							end
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(5,5,5)
							v.HumanoidRootPart.Transparency = 1
							v.Humanoid:ChangeState(11)
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
						end
					end
				end
			end
		end)
	end
end)


-- [Fast Attack]

_G.FastAttackType = "Normal"

local ExamList = {}

for i = 1, 20 do
    table.insert(ExamList, "Option "..i)
end
local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

function CurrentWeapon()
	local ac = CombatFrameworkR.activeController
	local ret = ac.blades[1]
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	pcall(function()
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	end)
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	return ret
end

function getAllBladeHitsPlayers(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i=1,#Characters do local v = Characters[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function getAllBladeHits(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function AttackFunction()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHits(50)
			if #bladehit > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play(0.1,0.5,0.2,0.8)
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
				end
			end
		end
	end
end

coroutine.wrap(function()
   while task.wait(.1) do
       local ac = CombatFrameworkR.activeController
         if ac and ac.equipped then
            if FastAttack then
                AttackFunction()
                if _G.FastAttackType == "Fast" then
                    if tick() - cooldownfastattack < task.wait(0.1) then task.wait(0.1) cooldownfastattack = tick() end
                elseif _G.FastAttackType == "Normal" then
                    if tick() - cooldownfastattack > 1 then wait(0.15) cooldownfastattack = tick() end
                elseif _G.FastAttackType == "Safety" then
                    if tick() - cooldownfastattack > 0.13 then wait(0.1) cooldownfastattack = tick() end
                end
            elseif FastAttack == false then
              else
                 CombatFrameworkR.activeController:Destroy()
                  if ac.hitboxMagnitude ~= 65 then
                     ac.hitboxMagnitude = 65
                  end
                 ac:attack()
             end
         end
     end
end)()

-- [Auto Haki]

spawn(function()
	while wait(2) do
		pcall(function()
			if AutoHaki then
				if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
				end
			end
		end)
	end
end)

-- [Equip]
function Equip(ToolX)
    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolX) then
        getgenv().Tol = game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(ToolX)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tol)
    end
end

function UnEquip()
    game.Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):UnequipTools()
end
-- [Anti AFK]

game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)



-- [Auto farm bone]

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFarmBone then
                if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat wait()
                                if _G.SelectWeapon == "Melee" then
                                    Melee()
                                elseif _G.SelectWeapon == "Sword" then
                                    Sword()
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60,25,60)
                                StartMagnet = true
                                FastAttack = true
                                
                            until not _G.AutoFarmBone or v.Humanoid.Health <= 0 or not v.Parent
                            StartMagnet = false
                            FastAttack = false
                        end
                    end
                else
                    TP(CFrame.new(-9499, 272, 6250, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                end
            end
        end)
    end
end)





--[Auto Farm Cake]
spawn(function()
    while wait() do
         pcall(function()
            if _G.AutoFarmCake then
                if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter [Lv. 2200]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard [Lv. 2225]") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff [Lv. 2250]") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker [Lv. 2275]") then
                    for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat wait()
                                if _G.SelectWeapon == "Melee" then
                                    Melee()
                                elseif _G.SelectWeapon == "Sword" then
                                    Sword()
                                end
                                PosMon = v.HumanoidRootPart.CFrame
                                TP(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid.WalkSpeed = 0
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.Size = Vector3.new(60,25,60)
                                StartMagnet = true
                                FastAttack = true
                            until not _G.AutoFarmCake or v.Humanoid.Health <= 0 or not v.Parent
                            StartMagnet = false
                            FastAttack = false
                        end
                    end
                else
                    TP(CFrame.new(-1895.5813, 228.224472, -12141.6855, -0.998077989, 5.15672705e-09, 0.061970748, 5.03662312e-09, 1, -2.09427986e-09, -0.061970748, -1.77813131e-09, -0.998077989))
                end
            end
        end)
    end
end)


local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

OrionLib:MakeNotification({
	Name = "Siuuu Hub | Blox Fruit",
	Content = "pls join sever discord me: https://discord.gg/2j34HZFCKY ",
	Image = "rbxassetid://4483345998",
	Time = 5
})

local Window = OrionLib:MakeWindow({Name = "Siuuu Hub | Blox Fruit", HidePremium = false, SaveConfig = true, ConfigFolder = "Orion"})

local Main = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Main:AddDropdown({
    Name = "Select Weapon",
    Default = "1",
    Options = {"Melee", "Sword"},
    Callback = function(Value)
    _G.SelectWeapon  = Value
    end    
}) 


function Melee()    
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" then
            if v.ToolTip == "Melee" then
             Equip(v.Name)
            end
        end
    end
end

function Sword()
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v.ClassName == "Tool" then
            if v.ToolTip == "Sword" then
             Equip(v.Name)
            end
        end
    end
end



Main:AddButton({
	Name = "FPS Booster ",
	Callback = function()
      		game.StarterGui:SetCore("SendNotification", {
			Title = "FPS Booster", 
			Text = "Successfully!",
			Icon = "http://www.roblox.com/asset/?id=11816497566",
			Duration = 5
		})
		local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
		local g = game
		local w = g.Workspace
		local l = g.Lighting
		local t = w.Terrain
		t.WaterWaveSize = 0
		t.WaterWaveSpeed = 0
		t.WaterReflectance = 0
		t.WaterTransparency = 0
		l.GlobalShadows = false
		l.FogEnd = 9e9
		l.Brightness = 0
		settings().Rendering.QualityLevel = "Level01"
		for i, v in pairs(g:GetDescendants()) do
			if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then 
				v.Material = "Plastic"
				v.Reflectance = 0
			elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
				v.Transparency = 1
			elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
				v.Lifetime = NumberRange.new(0)
			elseif v:IsA("Explosion") then
				v.BlastPressure = 1
				v.BlastRadius = 1
			elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
				v.Enabled = false
			elseif v:IsA("MeshPart") then
				v.Material = "Plastic"
				v.Reflectance = 0
				v.TextureID = 10385902758728957
			end
		end
		for i, e in pairs(l:GetChildren()) do
			if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
				e.Enabled = false
			end
		end
    end
})
 

		
		




Main:AddToggle({
	Name = "Auto Farm Level",
	Default = false,
	Callback = function(Value)
    _G.AutoFarmLevel = Value
	end})
spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoFarmLevel then
                CheckQuest()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                    TP(CFrameQuest)
                    if (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        wait()
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        wait()
                        TP(CFrameMon)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                    TP(CFrameMon)
                    if string.find(game.Players.LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                            		if _G.SelectWeapon == "Melee" then
                                		Melee()
                            	elseif _G.SelectWeapon == "Sword" then
                                		Sword()
                            		end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,25,0))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60,25,60)
                                    StartMagnet = true
                                    FastAttack = true
                                until not _G.AutoFarmLevel or v.Humanoid.Health <= 0 or not v.Parent
                                StartMagnet = false
                                FastAttack = false
                            end
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                end
            end
        end)
    end
end)


if World1 then

Main:AddToggle({
    Name = "Auto Sea 2",
    Default = false,
    Callback = function(Value)
    _G.AutoNewWorld = Value
end    
})

spawn(function()
    while wait() do
        pcall(function()
            if _G.AutoNewWorld then
                if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                    if _G.AutoFarmLeve then
                        _G.AutoFarmLeve = false
                    end
                    if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                        wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                        Equip("Key")
                        repeat wait() 
                        TP(CFrame.new(1347.7124, 37.3751602, -1325.6488)) until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.AutoNewWorld
                        wait(.5)
                    elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral [Lv. 700] [Boss]") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Ice Admiral [Lv. 700] [Boss]" and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        if _G.SelectWeapon == "Melee" then
                                        Melee()
                                elseif _G.SelectWeapon == "Sword" then
                                        Sword()
                                    end
                                    PosMon = v.HumanoidRootPart.CFrame
                                    TP(v.HumanoidRootPart.CFrame * CFrame.new(0,40,0))
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                    StartMagnet = true
                                    FastAttack = true
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                    until v.Humanoid.Health <= 0 or not v.Parent
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                    FastAttack = false
                                end
                            end
                        else
                            TP(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    end
                end
            end
        end)
    end
end)
end



function RedeemAllCodesX2()
    CodesX2 = {
        "Sub2CaptainMaui",
        "CODE_SERVICIO",
        "CINCODEMAYO_BOOST",
        "15B_BESTBROTHERS",
        "DEVSCOOKING",
        "GAMERROBOT_YT",
        "ADMINGIVEAWAY",
        "GAMER_ROBOT_1M",
        "TY_FOR_WATCHING",
        "kittgaming",
        "Sub2Fer999",
        "Enyu_is_Pro",
        "Magicbus",
        "JCWK",
        "Starcodeheo",
        "Bluxxy",
        "fudd10_v2",
        "FUDD10",
        "BIGNEWS",
        "THEGREATACE",
        "SUB2GAMERROBOT_EXP1",
        "Sub2OfficialNoobie",
        "StrawHatMaine",
        "SUB2NOOBMASTER123",
        "Sub2Daigrock",
        "Axiore",
        "TantaiGaming"
    }
    for r, v in pairs(CodesX2) do
        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(v)
    end
end
Main:AddButton(
    {Name = "Redeem All Codes", Callback = function()
            RedeemAllCodesX2()
        end}
)


  function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
Main:AddToggle({
	Name = "Buso Haki",
	Default = true,
	Callback = function(Value)
		_G.AUTOHAKI = Value
	end    
})


if World3 then

local Section = Main:AddSection({
	Name = "Bone - Cake"
})


Main:AddToggle({
	Name = "Auto Farm Bone",
	Default = false,
	Callback = function(Value)
		_G.AutoFarmBone = Value
	end    
})


Main:AddToggle({
	Name = "Auto Farm Cake",
	Default = false,
	Callback = function(Value)
		_G.AutoFarmCake = Value
	end    
})

Main:AddToggle({
	Name = "Random Bone",
	Default = false,
	Callback = function(Value)
		_G.Auto_Random_Bone = Value
	end    
}) 

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Random_Bone then    
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Bones","Buy",1,1)
                end
            end
        end)
    end)





end

local RaidTab = Window:MakeTab({
	Name = "Raid",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
}) 

    _G.SelectChip = selectraids or ""
	Raidslist = {}
	RaidsModule = require(game.ReplicatedStorage.Raids)
	for i,v in pairs(RaidsModule.raids) do
		table.insert(Raidslist,v)
	end
	for i,v in pairs(RaidsModule.advancedRaids) do
		table.insert(Raidslist,v)
	end

RaidTab:AddDropdown({
	Name = "Select MicroChips",
	Default = "",
	Options = Raidslist,
	Callback = function(Value)
		_G.SelectChip = Value
	end    
}) 

RaidTab:AddButton({
	Name = "Buy MicroChip Select",
	Callback = function()
      		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc","Select",_G.SelectChip)
  	end    
}) 

RaidTab:AddButton({
	Name = "Start Raid",
	Callback = function()
      		        if World2 then
      		            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
      		        elseif World3 then
      		            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
      		        end
  	end    
}) 

RaidTab:AddToggle({
	Name = "Buy MicroChip",
	Default = false,
	Callback = function(Value)
		_G.AutoBuyChip = Value
	end    
}) 

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoBuyChip then
                    if not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("RaidsNpc", "Select", _G.SelectChip)
                        end
                    end
                end
            end
        end)
    end)
    
RaidTab:AddToggle({
	Name = "Start Raid",
	Default = false,
	Callback = function(Value)
		_G.Auto_StartRaid = Value
	end    
}) 

    spawn(function()
        while wait(.1) do
            pcall(function()
                if _G.Auto_StartRaid then
                    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                        if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip") then
                            if World2 then
                                fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                            elseif World3 then
                                fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                            end
                        end
                    end
                end
            end)
        end
    end)
    
RaidTab:AddToggle({
	Name = "Next Island",
	Default = false,
	Callback = function(Value)
		_G.Auto_Dungeon = Value
	end    
}) 

spawn(function()
    while wait() do
        if _G.Auto_Dungeon then
			if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
				if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
					TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
					TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
					TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
					TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,70,100))
				elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
					TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,70,100))
				end
			end
        end
    end
end)

RaidTab:AddToggle({
	Name = "Kill Arua",
	Default = false,
	Callback = function(Value)
		_G.concubu = Value
	end    
}) 

spawn(function()
    while wait() do
        if _G.concubu then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat wait(.1)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        until not _G.concubu  or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        end
    end
end)

RaidTab:AddToggle({
	Name = "Awakener Fruit",
	Default = false,
	Callback = function(Value)
		_G.Auto_Awakener = Value
	end    
}) 

    spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Auto_Awakener then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Check")
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Awakener","Awaken")
                end
            end
        end)
    end)



--[Shop]


local Shop = Window:MakeTab({
	Name = "Shop",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section  = Shop:AddSection({
	Name = "Random"
})

Shop:AddButton({
	Name = "DevilFruit Shop",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetFruits")
      		        game:GetService("Players").LocalPlayer.PlayerGui.Main.FruitShop.Visible = true
  	end    
})


Shop:AddToggle({
	Name = "Auto Random Fruit",
	Default = false,
	Callback = function(Value)
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin", "Buy") 
			end
}) 
 


Shop:AddToggle({
	Name = "Store Fruit",
	Default = false,
	Callback = function(Value)
		_G.AutoStoreFruit = Value
	end    
}) 

    function DropFruit()
	pcall(function()
		game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Position = UDim2.new(10.100, 0, 0.100, 0) -- HideUi
		game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Visible = true -- เปิดไว้ถึงจะเช็คได้
		local invenfruit = game.Players.LocalPlayer.PlayerGui.Main.FruitInventory.Container.Stored.ScrollingFrame.Frame
		wait(.3)
		for i,v in pairs(invenfruit:GetChildren()) do
			if string.find(v.Name,"-") then
				for _,Backpack in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
					FruitStoreF = string.split(Backpack.Name, " ")[1]
					FruitStoreR = FruitStoreF.."-"..FruitStoreF
					if v.Name == FruitStoreR then
						game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(Backpack.Name):Destroy()
					end												
				end
			end
		end
		for i,v in pairs(invenfruit:GetChildren()) do
			if string.find(v.Name,"-") then
				for _,Character in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
					FruitStoreF = string.split(Character.Name, " ")[1]
					FruitStoreR = FruitStoreF.."-"..FruitStoreF
					if v.Name == FruitStoreR then
						game:GetService("Players").LocalPlayer.Character:FindFirstChild(Character.Name):Destroy()
					end												
				end
			end
		end
	end)
end

spawn(function()
	while wait() do
		if _G.AutoStoreFruit then
			pcall(function()
				DropFruit()
				wait()
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String",game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit"))
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit"))
				end
			end)
		 end
	   end
    end)

function RerollRace()
    local args = {[1] = "BlackbeardReward", [2] = "Reroll", [3] = "2"}
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
Shop:AddButton({
	Name = "Reroll race", 
	Callback = function()
    RerollRace()
        end
 })



Shop:AddButton(
    {Name = "Reset Stats", Callback = function()
            local args = {[1] = "BlackbeardReward", [2] = "Refund", [3] = "2"}
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end}
)

local Section  = Shop:AddSection({
	Name = "Haki"
})

Shop:AddButton({
	Name = "Buy Haki",
	Callback = function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Buso")
  	end    
})

Shop:AddButton({
	Name = "Buy Sky Jump",
	Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Geppo")
  	end    
})

Shop:AddButton({
	Name = "Buy Soru",
	Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Soru")
  	end    
})

Shop:AddButton({
	Name = "Buy ken",
	Callback = function()
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyHaki", "Ken")
  	end    
})

-- [Fighting Styles]
local Section  = Shop:AddSection({
	Name = "Mele"
})


function BuyMelee(br, bs)
    browhat = {
        ["Black Leg"] = "BuyBlackLeg",
        ["Fishman Karate"] = "BuyFishmanKarate",
        ["Electro"] = "BuyElectro",
        ["Dragon Claw"] = function()
            dragonclawtrue =
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1") == 1
            game.ReplicatedStorage.Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
            return dragonclawtrue
        end,
        ["Superhuman"] = "BuySuperhuman",
        ["Sharkman Karate"] = "BuySharkmanKarate",
        ["Death Step"] = "BuyDeathStep",
        ["Dragon Talon"] = "BuyDragonTalon",
        ["Godhuman"] = "BuyGodhuman",
        ["Electric Claw"] = "BuyElectricClaw"
    }
    momo = browhat[br]
    if type(momo) == "string" then
        print(tostring(momo) .. " string")
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo, true)
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo)
    else
        momo = momo()
    end
    if bs then
        v = br
        if
            pricemelee[v] and pricemelee[v].Beli and pricemelee[v].Beli <= LocalPlayerBeliValue and
                pricemelee[v].Fragment and
                pricemelee[v].Fragment <= LocalPlayerFragmentValue
         then
            momo = browhat[v]
            if type(momo) == "string" then
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo, true)
                game.ReplicatedStorage.Remotes.CommF_:InvokeServer(momo)
            elseif type(momo) == "function" then
                momo()
            end
        end
    end
end


ZedWy = {"Black Leg", "Fishman Karate", "Electro", "Dragon Claw", "Electric Claw", "Superhuman", "Godhuman", "Dragon Talon", "Death Step", "Sharkman Karate"}
Shop:AddDropdown(
    {Name = "Buy Melee", Default = "", Options = ZedWy, Callback = function(c)
            BuyMelee(c)
        end}
)





local Setting = Window:MakeTab({
	Name = "Setting",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


--[Hop Sever]
function Hop()
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    function TPReturner()
        local Site
        if foundAnything == "" then
            Site =
                game.HttpService:JSONDecode(
                game:HttpGet("https://games.roblox.com/v1/games/" .. PlaceID .. "/servers/Public?sortOrder=2&limit=100")
            )
        else
            Site =
                game.HttpService:JSONDecode(
                game:HttpGet(
                    "https://games.roblox.com/v1/games/" ..
                        PlaceID .. "/servers/Public?sortOrder=2&limit=100&cursor=" .. foundAnything
                )
            )
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0
        for i, v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _, Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile =
                                pcall(
                                function()
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end
                            )
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(
                        function()
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(
                                PlaceID,
                                ID,
                                game.Players.LocalPlayer
                            )
                        end
                    )
                    wait(0.5)
                end
            end
        end
    end
function Teleport()
    while wait() do
        pcall(
            function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end
        )
    end
end
    Teleport()
end

Setting:AddButton({
    Name = "Hop Server",
    Callback = function()
Hop()
      end    
}) 

Setting:AddButton({
	Name = "Rejoin Server",
	Callback = function()
      		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
  	end    
}) 

Setting:AddToggle({
	Name = "Walk On Water",
	Default = true,
	Callback = function(Value)
		_G.WalkWater = Value
	end    
})

    spawn(function()
			while task.wait() do
				pcall(function()
					if _G.WalkWater then
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
					else
						game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
		end)


local Section = Setting:AddSection({
	Name = "Auto Stats"
})


Setting:AddToggle({
	Name = "Auto Mele",
	Default = value,
	Callback = function(Value)
		    _G.Melee = Value

	end    
})

Setting:AddToggle({
	Name = "Auto Defense",
	Default = false,
	Callback = function(Value)
    _G.Defense = Value

	end    
})

Setting:AddToggle({
	Name = "Auto Sword",
	Default = false,
	Callback = function(Value)
    _G.Sword = Value

	end    
})

Setting:AddToggle({
	Name = "Auto Gun",
	Default = false,
	Callback = function(Value)
    _G.Gun = Value

	end    
})

Setting:AddToggle({
	Name = "Auto Blox Fruit",
	Default = false,
	Callback = function(Value)
    _G.Blox_Fruit = Value

	end    
})


spawn(function()
	while wait() do
		pcall(function()
			if _G.Melee then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Melee",Point)
			end
			if _G.Defense then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Defense",Point)
			end
			if _G.Sword then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Sword",Point)
			end
			if _G.Gun then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Gun",Point)
			end
			if _G.Blox_Fruit then
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AddPoint", "Deamon Fruit",Point)
			end
		end)
	end
end)

-- [Teleport]
local TP = Window:MakeTab({
	Name = "Teleport",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- [world]
local Section = TP:AddSection({
	Name = "World"
})

TP:AddButton({
	Name = "Sea 1",
	Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
  	end    
})

TP:AddButton({
	Name = "Sea 2",
	Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
  	end    
})

TP:AddButton({
	Name = "Sea 3",
	Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
  	end    
})

-- [Teleprot island sea 1]
local Section = TP:AddSection({
	Name = "Teleport Island"
})


if World1 then
TP:AddDropdown({
	Name = "Select Island",
	Default = "1",
	Options = {
                                "WindMill",
                                "Marine",
                                "Middle Town",
                                "Jungle",
                                "Pirate Village",
                                "Desert",
                                "Snow Island",
                                "MarineFord",
                                "Colosseum",
                                "Sky Island 1",
                                "Prison",
                                "Magma Village",
                                "Under Water Island",
                                "Fountain City"
                                },
	Callback = function(Value)
		_G.SelectWarp = Value
	end    
})
end

if World2 then
TP:AddDropdown({
	Name = "Select Island",
	Default = "1",
	Options = {
                                          "The Cafe",
                                          "Frist Spot",
                                          "Flamingo Room",
                                          "Green Zone",
                                          "Zombie Island",
                                          "Two Snow Mountain",
                                          "Punk Hazard",
                                          "Cursed Ship",
                                          "Ice Castle",
                                          "Forgotten Island"
                                          },
	Callback = function(Value)
		_G.SelectWarp = Value
	end
})
end

if World3 then
TP:AddDropdown({
	Name = "Select Island",
	Default = "1",
	Options = {
                                                    "Mansion",
                                                    "Port Town",
                                                    "Great Tree",
                                                    "Castle On The Sea",
                                                    "Hydra Island",
                                                    "Haunted Castle",
                                                    "Ice Cream Island",
                                                    "Peanut Island",
                                                    "Cake Island",
                                                    "Sea to Treats",
                                                    "Cake Island"
                                                    },
	Callback = function(Value)
		_G.SelectWarp = Value
	end
}) 
end


TP:AddButton({
	Name = "Bypass Teleport",
	Callback = function()
	  if _G.TeleportWarp == "Manslon" then
                elseif _G.SelectWarp == "WindMill" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Marine" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Middle Town" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Jungle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Pirate Village" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Desert" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Snow Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "MarineFord" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Colosseum" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Sky Island 1" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Prison" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Magma Village" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Under Water Island" then
					wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectWarp == "Fountain City" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Shank Room" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mob Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "The Cafe" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Frist Spot" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Dark Area" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Flamingo Mansion" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Flamingo Room" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2284.4140625, 15.152037620544, 875.72534179688)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Green Zone" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Factory" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.12698364258, 211.16171264648, -427.54049682617)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Colossuim" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")      
                elseif _G.SelectWarp == "Zombie Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint") 
                elseif _G.SelectWarp == "Two Snow Mountain" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")    
                elseif _G.SelectWarp == "Punk Hazard" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cursed Ship" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(923.40197753906, 125.05712890625, 32885.875)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ice Castle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Forgotten Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ussop Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mini Sky Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-288.74060058594, 49326.31640625, -35248.59375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Great Tree" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Castle On The Sea" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5085.23681640625, 316.5072021484375, -3156.202880859375)
                elseif _G.SelectWarp == "MiniSky" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Port Town" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Hydra Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5749.7861328125, 611.9736938476562, -276.2497863769531)
                elseif _G.SelectWarp == "Floating Turtle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mansion" then
					wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Haunted Castle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ice Cream Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Peanut Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cake Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Sea to Treats Old" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(508.21466064453125, 25.07753562927246, -12438.2294921875) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cake Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1141.0223388671875, 47.25519561767578, -14204.609375) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                 end
  	end    
})

--//Functions
    spawn(function()
        while task.wait() do
            pcall(function()
                if _G.BringMonster then
                    CheckQuest()
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff [Lv. 800]" or Mon == "Monkey [Lv. 14]" or Mon == "Dragon Crew Warrior [Lv. 1575]" or Mon == "Dragon Crew Archer [Lv. 1600]") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                            v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                            v.HumanoidRootPart.Size = Vector3.new(150,150,150)
                            v.HumanoidRootPart.CFrame = PosMon
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            if v.Humanoid:FindFirstChild("Animator") then
                                v.Humanoid.Animator:Destroy()
                            end
                            sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                        end
                        if _G.AutoEctoplasm and StartEctoplasmMagnet then
                            if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= _G.BringMode then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.HumanoidRootPart.CFrame = EctoplasmMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoRengoku and StartRengokuMagnet then
                            if (v.Name == "Snow Lurker [Lv. 1375]" or v.Name == "Arctic Warrior [Lv. 1350]") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(1500,1500,1500)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = RengokuMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
                            if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = MusketeerHatMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoObservationHakiV2 and Mangnetcitzenmon then
                            if v.Name == "Forest Pirate [Lv. 1825]" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosHee
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.Auto_EvoRace and StartEvoMagnet then
                            if v.Name == "Zombie [Lv. 950]" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonEvo
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoBartilo and AutoBartiloBring then
                            if v.Name == "Swan Pirate [Lv. 775]" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonBarto
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                            if v.Name == "Monkey [Lv. 14]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff [Lv. 800]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                        if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                            if v.Name == "Monkey [Lv. 14]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == "Factory Staff [Lv. 800]" then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            elseif v.Name == Mon then
                                if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                        if _G.Auto_Bone and StartMagnetBoneMon then
                            if (v.Name == "Reborn Skeleton [Lv. 1975]" or v.Name == "Living Zombie [Lv. 2000]" or v.Name == "Demonic Soul [Lv. 2025]" or v.Name == "Posessed Mummy [Lv. 2050]") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonBone
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoFarmCandy and StartCandyMagnet then
                            if (v.Name == "Ice Cream Chef [Lv. 2125]" or v.Name == "Ice Cream Commander [Lv. 2150]") and (v.HumanoidRootPart.Position - CandyMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = CandyMon
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                        if _G.AutoDoughtBoss and MagnetDought then
                            if (v.Name == "Cookie Crafter [Lv. 2200]" or v.Name == "Cake Guard [Lv. 2225]" or v.Name == "Baking Staff [Lv. 2250]" or v.Name == "Head Baker [Lv. 2275]") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                        end
                    end
                end
            end)
      end
end)



if World1 then
TP:AddDropdown({
	Name = "Select Island",
	Default = "1",
	Options = {
                                "WindMill",
                                "Marine",
                                "Middle Town",
                                "Jungle",
                                "Pirate Village",
                                "Desert",
                                "Snow Island",
                                "MarineFord",
                                "Colosseum",
                                "Sky Island 1",
                                "Prison",
                                "Magma Village",
                                "Under Water Island",
                                "Fountain City"
                                },
	Callback = function(Value)
		_G.SelectWarp = Value
	end    
})
end

if World2 then
TP:AddDropdown({
	Name = "Select Island",
	Default = "1",
	Options = {
                                          "The Cafe",
                                          "Frist Spot",
                                          "Flamingo Room",
                                          "Green Zone",
                                          "Zombie Island",
                                          "Two Snow Mountain",
                                          "Punk Hazard",
                                          "Cursed Ship",
                                          "Ice Castle",
                                          "Forgotten Island"
                                          },
	Callback = function(Value)
		_G.SelectWarp = Value
	end
})
end

if World3 then
TP:AddDropdown({
	Name = "Select Island",
	Default = "1",
	Options = {
                                                    "Mansion",
                                                    "Port Town",
                                                    "Great Tree",
                                                    "Castle On The Sea",
                                                    "Hydra Island",
                                                    "Haunted Castle",
                                                    "Ice Cream Island",
                                                    "Peanut Island",
                                                    "Cake Island",
                                                    "Sea to Treats",
                                                    "Cake Island"
                                                    },
	Callback = function(Value)
		_G.SelectWarp = Value
	end
}) 
end


TP:AddButton({
	Name = "Bypass Teleport",
	Callback = function()
	  if _G.TeleportWarp == "Manslon" then
                elseif _G.SelectWarp == "WindMill" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Marine" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Middle Town" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Jungle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Pirate Village" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Desert" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Snow Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "MarineFord" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Colosseum" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Sky Island 1" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Prison" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Magma Village" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Under Water Island" then
					wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectWarp == "Fountain City" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Shank Room" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1442.16553, 29.8788261, -28.3547478)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mob Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2850.20068, 7.39224768, 5354.99268)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "The Cafe" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Frist Spot" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Dark Area" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Flamingo Mansion" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Flamingo Room" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2284.4140625, 15.152037620544, 875.72534179688)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Green Zone" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Factory" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(424.12698364258, 211.16171264648, -427.54049682617)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")  
                elseif _G.SelectWarp == "Colossuim" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")      
                elseif _G.SelectWarp == "Zombie Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint") 
                elseif _G.SelectWarp == "Two Snow Mountain" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")    
                elseif _G.SelectWarp == "Punk Hazard" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cursed Ship" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(923.40197753906, 125.05712890625, 32885.875)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ice Castle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Forgotten Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ussop Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mini Sky Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-288.74060058594, 49326.31640625, -35248.59375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Great Tree" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Castle On The Sea" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5085.23681640625, 316.5072021484375, -3156.202880859375)
                elseif _G.SelectWarp == "MiniSky" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-260.65557861328, 49325.8046875, -35253.5703125)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Port Town" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Hydra Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(5749.7861328125, 611.9736938476562, -276.2497863769531)
                elseif _G.SelectWarp == "Floating Turtle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13274.528320313, 531.82073974609, -7579.22265625)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Mansion" then
					wait(.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-12471.169921875, 374.94024658203, -7551.677734375))
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Haunted Castle" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Ice Cream Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Peanut Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375)
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cake Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Sea to Treats Old" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(508.21466064453125, 25.07753562927246, -12438.2294921875) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                elseif _G.SelectWarp == "Cake Island" then
					wait(.1)
                    game.Players.localPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1141.0223388671875, 47.25519561767578, -14204.609375) 
                    game.Players.LocalPlayer.Character.Head:Destroy()
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                 end
  	end    })


if World1 then

TP:AddButton({
	Name = "Pirate Starter",
	Callback = function()
	TP2(CFrame.new(1072.92883, 16.6419659, 1354.30566, -0.987685978, 0, -0.156449527, 0, 1, 0, 0.156449527, 0, -0.987685978))
  	end    
})


TP:AddButton({
	Name = "Marine Starter",
	Callback = function()
	TP2(CFrame.new(-2850.35889, 41.1388931, 1979.01794, -0.898790359, -3.28368053e-08, -0.438378751, -5.25494066e-08, 1, 3.28348335e-08, 0.438378751, 5.25481738e-08, -0.898790359))
  	end    
})


TP:AddButton({
	Name = "Middle Town",
	Callback = function()
	TP2(CFrame.new(-655.824158, 7.97736979, 1436.67908, -0.984812498, 0, 0.173621133, 0, 1, 0, -0.173621133, 0, -0.984812498))
  	end    
})


TP:AddButton({
	Name = "Jungle",
	Callback = function()
	TP2(CFrame.new(-1255.14795, 11.9773731, 349.906677, -0.173624292, 0, 0.984811962, 0, 1, 0, -0.984811962, 0, -0.173624292))
  	end    
})


TP:AddButton({
	Name = "Pirate Village",
	Callback = function()
	TP2(CFrame.new(-1169.63855, 4.87737989, 3839.31763, 0.965929627, 0, -0.258804798, 0, 1, 0, 0.258804798, 0, 0.965929627))
  	end    
})


TP:AddButton({
	Name = "Desert",
	Callback = function()
	TP2(CFrame.new(861.422119, 3.50528407, 4136.99902, 0.573598683, 0, -0.819136441, 0, 1, 0, 0.819136441, 0, 0.573598683))
  	end    
})


TP:AddButton({
	Name = "Frozen Village",
	Callback = function()
	TP2(CFrame.new(1037.23328, 23.4498844, -1267.97522, -0.997561574, 0, -0.069791913, 0, 1, 0, 0.069791913, 0, -0.997561574))
  	end    
})


TP:AddButton({
	Name = "Marine Fortless",
	Callback = function()
	TP2(CFrame.new(-5062.10938, 62.7773552, 4356.4458, 0.173624352, 0, -0.984811962, 0, 1, 0, 0.984811962, 0, 0.173624352))
  	end    
})


TP:AddButton({
	Name = "Skylands 1",
	Callback = function()
	TP2(CFrame.new(-4934.32715, 717.795776, -2552.84326, 0.499959469, 0, -0.866048813, 0, 1, 0, 0.866048813, 0, 0.499959469))
  	end    
})


TP:AddButton({
	Name = "Skylands 2",
	Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7910, 5545, -380))
  	end    
})


TP:AddButton({
	Name = "Skylands 3",
	Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4628, 848, -1707))
  	end    
})


TP:AddButton({
	Name = "Prison",
	Callback = function()
	TP2(CFrame.new(4876.85693, 64.7775497, 739.581543, 0.156445965, 0, -0.987686515, 0, 1, 0, 0.987686515, 0, 0.156445965))
  	end    
})


TP:AddButton({
	Name = "Colosseum",
	Callback = function()
	TP2(CFrame.new(-1428.35474, 7.51466751, -3014.37305, -0.719358146, 0, -0.694639325, 0, 1, 0, 0.694639325, 0, -0.719358146))
  	end    
})


TP:AddButton({
	Name = "Magma Village",
	Callback = function()
	TP2(CFrame.new(-5249.96875, 3.77313137, 8324.24902, -0.996191859, 0, -0.0871884301, 0, 1, 0, 0.0871884301, 0, -0.996191859))
  	end    
})


TP:AddButton({
	Name = "UnderWater City",
	Callback = function()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61165, 10, 1820))
  	end    
})


TP:AddButton({
	Name = "Fountain City",
	Callback = function()
	TP2(CFrame.new(5048.60596, 4.62661839, 4164.5708, 0.987685978, 0, 0.156449571, 0, 1, 0, -0.156449571, 0, 0.987685978))
  	end    
})



end

if World2 then

TP:AddButton({
	Name = "Dock",
	Callback = function()
        TP2(CFrame.new(-12.519311904907, 19.302536010742, 2827.853515625))
  	end    
})


TP:AddButton({
	Name = "Mansion",
	Callback = function()
        TP2(CFrame.new(-390.34829711914, 321.89730834961, 869.00506591797))
  	end    
})



TP:AddButton({
	Name = "Kingdom Of Rose",
	Callback = function()
        TP2(CFrame.new(-388.29895019531, 138.35575866699, 1132.1662597656))

  	end    
})

TP:AddButton({
	Name = "Cafe",
	Callback = function()
        TP2(CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813))
  	end    
})

TP:AddButton({
	Name = "Sunflower Field",
	Callback = function()
        TP2(CFrame.new(-1576.7171630859, 198.61849975586, 13.725157737732))
  	end    
})

TP:AddButton({
	Name = "Jeramy Mountain",
	Callback = function()
        TP2(CFrame.new(1986.3519287109, 448.95678710938, 796.70239257813))
  	end    
})

TP:AddButton({
	Name = "Colossuem",
	Callback = function()
        TP2(CFrame.new(-1871.8974609375, 45.820514678955, 1359.6843261719))
  	end    
})

TP:AddButton({
	Name = "Factory",
	Callback = function()
        TP2(CFrame.new(349.53750610352, 74.446998596191, -355.62420654297))
  	end    
})

TP:AddButton({
	Name = "The Bridge",
	Callback = function()
        TP2(CFrame.new(-1860.6354980469, 88.384948730469, -1859.1593017578))
  	end    
})

TP:AddButton({
	Name = "Green Bit",
	Callback = function()
        TP2(CFrame.new(-2202.3706054688, 73.097663879395, -2819.2687988281))
  	end    
})

TP:AddButton({
	Name = "Graveyard",
	Callback = function()
        TP2(CFrame.new(-5617.5927734375, 492.22183227539, -778.3017578125))
  	end    
})

TP:AddButton({
	Name = "Dark Area",
	Callback = function()
        TP2(CFrame.new(3464.7700195313, 13.375151634216, -3368.90234375))
  	end    
})

TP:AddButton({
	Name = "Snow Mountain",
	Callback = function()
        TP2(CFrame.new(561.23834228516, 401.44781494141, -5297.14453125))
  	end    
})

TP:AddButton({
	Name = "Hot Island",
	Callback = function()
        TP2(CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875))
  	end    
})

TP:AddButton({
	Name = "Cold Island",
	Callback = function()
        TP2(CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375))
  	end    
})

TP:AddButton({
	Name = "Ice Castle",
	Callback = function()
        TP2(CFrame.new(6111.7109375, 294.41259765625, -6716.4829101563))
  	end    
})


TP:AddButton({
	Name = "Usopp's Island",
	Callback = function()
        TP2(CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813))
  	end    
})

TP:AddButton({
	Name = "inscription Island",
	Callback = function()
        TP2(CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531))

  	end    
})

TP:AddButton({
	Name = "Forgotten Island",
	Callback = function()
        TP2(CFrame.new(-3051.9514160156, 238.87203979492, -10250.807617188))
  	end    
})


TP:AddButton({
	Name = "Ghost Ship",
	Callback = function()
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
  	end    
})


TP:AddButton({
	Name = "Mini Sky",
	Callback = function()
        TP2(CFrame.new(-262.11901855469, 49325.69140625, -35272.49609375))
  	end    
})

end


if World3 then

TP:AddButton({
	Name = "Port Town",
	Callback = function()
        TP2(CFrame.new(-275.21615600586, 43.755737304688, 5451.0659179688))

  	end    
})


TP:AddButton({
	Name = "Hydra Island",
	Callback = function()
        TP2(CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184))

  	end    
})

TP:AddButton({
	Name = "Gaint Tree",
	Callback = function()
        TP2(CFrame.new(2276.0859375, 25.87850189209, -6493.03125))


  	end    
})

TP:AddButton({
	Name = "Zou Island",
	Callback = function()
        TP2(CFrame.new(-10034.40234375, 331.78845214844, -8319.6923828125))

  	end    
})

TP:AddButton({
	Name = "PineApple Village",
	Callback = function()
        TP2(CFrame.new(-11172.950195313, 331.8049621582, -10151.033203125))

  	end    
})

TP:AddButton({
	Name = "Mansion",
	Callback = function()
        TP2(CFrame.new(-12548.998046875, 332.40396118164, -7603.1865234375))

  	end    
})


TP:AddButton({
	Name = "Castle on the Sea",
	Callback = function()
        TP2(CFrame.new(-5498.0458984375, 313.79473876953, -2860.6022949219))

  	end    
})

TP:AddButton({
	Name = "Graveyard Island",
	Callback = function()
        TP2(CFrame.new(-9515.07324, 142.130615, 5537.58398))

  	end    
})

TP:AddButton({
	Name = "Haunted Castle",
	Callback = function()
        TP2(CFrame.new(-8932.86, 143.258, 6063.31))

  	end    
})

TP:AddButton({
	Name = "Raid Lab",
	Callback = function()
        TP2(CFrame.new(-5057.146484375, 314.54132080078, -2934.7995605469))

  	end    
})

TP:AddButton({
	Name = "Mini Sky",
	Callback = function()
        TP2(CFrame.new(-263.66668701172, 49325.49609375, -35260))

  	end    
})

TP:AddButton({
	Name = "Ice Cream Island",
	Callback = function()
        TP2(CFrame.new(-691.829, 371.943, -11106.4))

  	end    
})

TP:AddButton({
	Name = "Soa of Cake",
	Callback = function()
        TP2(CFrame.new(-2073.262451171875, 37.16134262084961, -10183.3271484375))

  	end    
})

TP:AddButton({
	Name = "Cake Loaf",
	Callback = function()
        TP2(CFrame.new(-2099.33, 66.9971, -12128.6))
  	end    
})


end

local Item = Window:MakeTab({
	Name = "Item",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})



local Section = Item:AddSection({
	Name = "Sever"
})

local FM = Item:AddLabel('Sea 3')
    
task.spawn(function()
		while task.wait() do
			pcall(function()
				if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
					FM:Set("🌕 : Full Moon 100%")
				elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
					FM:Set("🌖 : Full Moon 75%")
				elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
					FM:Set("🌗 : Full Moon 50%")
				elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
					FM:Set("🌘 : Full Moon 25%")
				elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
					FM:Set("🌘 : Full Moon 15%")
				else
					FM:Set("Wait For Moon")
				end
			end)
		end
end)



    
local EliteProgress = Item:AddLabel("")

spawn(function()
	pcall(function()
		while wait() do
			EliteProgress:Set("Elite Progress : "..game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter","Progress"))
		end
	end)
end)

local Elite_Hunter_Status = Item:AddLabel("Status")


spawn(function()
	while wait() do
		pcall(function()
			if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") or game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
				Elite_Hunter_Status:Set("Status : Elite Spawn")	
			else
				Elite_Hunter_Status:Set("Status : Elite Not Spawn")	
			end
		end)
	end
end)



Item:AddToggle({
	Name = "Kill Elite",
	Default = false,
	Callback = function(Value)
		_G.AutoElitehunter = Value
		game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
	end    
}) 

    spawn(function()
        while wait() do
            if _G.AutoElitehunter and World3 then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
                            if game:GetService("Workspace").Enemies:FindFirstChild("Diablo [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre [Lv. 1750]") or game:GetService("Workspace").Enemies:FindFirstChild("Urban [Lv. 1750]") then
                                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                    if v.Name == "Diablo [Lv. 1750]" or v.Name == "Deandre [Lv. 1750]" or v.Name == "Urban [Lv. 1750]" then
                                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
                                        end
                                    end
                                end
                            else
                                if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]") then
                                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]") then
                                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]") then
                                    TP(game:GetService("ReplicatedStorage"):FindFirstChild("Urban [Lv. 1750]").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                end
                            end                    
                        end
                    else

                        if _G.AutoEliteHunterHop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
                            Hop()
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
                        end
                    end
                end)
            end
        end
    end)

Item:AddToggle({
	Name = "Kill Elite Hop",
	Default = false,
	Callback = function(Value)
		_G.AutoEliteHunterHop = Value
	end    
}) 
  
OrionLib:Init()
