repeat task.wait(5) until game:IsLoaded(3)
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
UserSettings():GetService('UserGameSettings').MasterVolume = 0;
settings().Rendering.QualityLevel = 1;
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.Chat,false)
game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList,false)
game:GetService("Lighting").GlobalShadows = false
for key, object in pairs(workspace:GetDescendants()) do
    if object:IsA("Part") or object:IsA("UnionOperation") or object:IsA("MeshPart") then
        object.Material = Enum.Material.SmoothPlastic
    elseif  (object:IsA("Texture") or object:IsA("Explosion") or object:IsA("ColorCorrectionEffect") or 
                object:IsA("Atmosphere") or object:IsA("SunRaysEffect") or object:IsA("BlurEffect") or 
                object:IsA("RainyStone") or object:IsA("Weather")  or object:IsA("BloomEffect")
                or object:IsA("Lighting") or object:IsA("FogEnd") or object:IsA("DepthOfFieldEffect")) then
        object:Destroy()
    end
end
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
_G.Team = "Pirate" -- Marine / Pirate
_G.KAITUN_SCRIPT = true
_G.LogsDes = {
    ["Enabled"] = false, -- ?????????????
    ["SendAlias"] = false, -- ?????????? Alias
    ["SendDescription"] = false, -- ?????????? Des
    ["DelaySend"] = 5 -- ??????
}
_G.WebHook = {
    ["Enabled"] = false, -- ?????????????
    ["Url"] = "", -- ?????????????
    ["Delay"] = 60 -- ??????
}
_G.MainSettings = {
        ["EnabledHOP"] = false, -- ???? HOP ( ??????????????????????? )
        ['FPSBOOST'] = false, -- ??????
        ["FPSLOCKAMOUNT"] = 60, -- ????? FPS
        ['WhiteScreen'] = true, -- ?????
        ['CloseUI'] = true, -- ??? Ui
        ["NotifycationExPRemove"] = true, -- ?? ExP ????????????????
        ['AFKCheck'] = 150, -- ?????????????????????????????????
        ["LockFragments"] = 12000, -- ????????????
        ["LockFruitsRaid"] = { -- ??????????????????????
            [1] = "Leopard-Leopard",
            [2] = "Kitsune-Kitsune"
        }
    }
_G.Fruits_Settings = { -- ?????????
    ['Main_Fruits'] = {''}, -- ?????? ?????????????????????????????????????????????????
    ['Select_Fruits'] = {""} -- ?????????????????????
}
_G.Quests_Settings = { -- ????????????????
    ['Rainbow_Haki'] = false,
    ["MusketeerHat"] = false,
    ["PullLever"] = false,
    ['DoughQuests_Mirror'] = {
        ['Enabled'] = false,
        ['UseFruits'] = false
    }        
}
_G.Races_Settings = { -- ???????????
    ['Race'] = {
        ['EnabledEvo'] = false,
        ["v2"] = false,
        ["v3"] = false,
        ["Races_Lock"] = {
            ["Races"] = { -- Select Races U want
                ["Mink"] = false,
                ["Human"] = false,
                ["Fishman"] = false
            },
            ["RerollsWhenFragments"] = 20000 -- Random Races When Your Fragments is >= Settings
        }
    }
}
_G.Settings_Melee = { -- ???????????
    ['Superhuman'] = true,
    ['DeathStep'] = true,
    ['SharkmanKarate'] = true,
    ['ElectricClaw'] = true,
    ['DragonTalon'] = true,
    ['Godhuman'] = true
}
_G.FarmMastery_Settings = {
    ['Melee'] = true,
    ['Sword'] = false,
    ['DevilFruits'] = false,
    ['Select_Swords'] = {
        ["AutoSettings"] = false, -- ??????????????????????????????????????????????????????
        ["ManualSettings"] = { -- ??????? AutoSettings ???? false ??????????????????????????? ????????????????
            "Saber",
            "Buddy Sword"
        }
    }
}
_G.SwordSettings = { -- ??????????
    ['Saber'] = false,
    ["Pole"] = false,
    ['MidnightBlade'] = false,
    ['Shisui'] = false,
    ['Saddi'] = false,
    ['Wando'] = false,
    ['Yama'] = true,
    ['Rengoku'] = false,
    ['Canvander'] = false,
    ['BuddySword'] = false,
    ['TwinHooks'] = false,
    ['HallowScryte'] = false,
    ['TrueTripleKatana'] = false,
    ['CursedDualKatana'] = false
}
_G.GunSettings = { -- ??????????
    ['Kabucha'] = false,
    ['SerpentBow'] = false,
    ['SoulGuitar'] = false
}
-- Script Here !!!
getgenv().Key = "MARU-9UTZV-5WBN1-HQBO-PYXUK-AKCU"
getgenv().id = "1094789671730561054"
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
