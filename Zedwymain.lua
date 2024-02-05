-- Enabled Kaitun Scripts
_G.KaitanMode = true
-- Candy Event
_G.CandyConfigs = {
    ExpX2 = true,
    Trade500Fragment = true,
    Trade200Fragment = true
}
shared.Team = "Pirates"
getgenv().Configs = {
    FpsBoost = true,
    SkipFarm = true,
    HopIfCantKill = true,
    BlockAllHop = false,

    FastAttack = true,
    NewFastAttack = true,
    NoAttackAnimation = true,
    
    StartKaitun = true,
    -- World 1
    AutoPole = true, -- จะตีเเค่ถ้ามันเกิดไม่ได้ตีจนกว่าจะได้
    AutoSaber = true,
    
    AutoSecondSea = true,
    -- World 2
    AutoRengoku = false,
    AutoQuestFlower = false,
    AutoRaceV3 = false,
    AutoBartiloQuest = false,
    AutoCursedCaptain = false,
    AutoDarkbeard = false,
    AutoFactory = false,
    AutoThirdSea = true,
    SkipGetItemGuitar = false, -- จะไม่ หาของทำ soul guiter ในโลก 2 เบบ หาจนกว่าจะได้ will not find item until get all item for do soul guiter ( open recommend เเนะนำให้เปิด )
    AlliesFruit = {"Dragon-Dragon","Spirit-Spirit","Venom-Venom","Dough-Dough"}, -- จะไม่ใช้ผลพวกนี้ในการเปิดประตูไปโลก3
    -- World 3
    AutoHallowScythe = false,
    AutoBuddySword = false,
    AutoDoughKing = false,
    AutoSpikeyTrident = false,
    AutoTushita = false,
    AutoEliteHunter = false,
    AutoDarkDagger = false,
    AutoYama = false,
    AutoCanvander = false,
    AutoSoulGuitar = false, 
    AutoRainbowHaki = false,
    AutoCursedDualKatana = false,
    
    -- Fighting Style 
    
    AutoGodHuman = true,
    AutoSuperhuman = true,
    AutoDeathStep = true,
    AutoSharkmanKarate = true,
    AutoElectricClaw = true,
    AutoDargonTalon = true,
    
    AutoDFMastery = false,
    SettingsSkill = { -- ถ้าไม่ใส่จะใช้ mode auto
        -- ["Z"] = 0.1,
        -- ["X"] = 0.1,
        -- ["C"] = 0.1,
        -- ["V"] = 0.1, -- อันไหนไม่เอาลบออกไปเลย
    },
    AutoSwordMastery = false,
    SelectRaritySword = {"Mythical","Legendary"}, -- Common , Uncommon,Rare,Legendary,Mythical
    
    SelectRedeemCodeLevel = 1,
    
    -- Raids
    
    SelectRateFruitRaid = 880000, -- if fruit price less u rate then we use it to auto raids
    LimitFragmentsRaids = 50000,
    
    -- Devil Fruit
        
    SelectMainDF = {"Dark-Dark"}, -- ผลหลักที่จะกินเเทนผลรอง
    SelectSubDF = {"Dark-Dark"}, -- ผลรองจะกินไว้ก่อนเเล้วพอผลหลักมีก้จะเปลียนไปกินผิดหลัก
    AllowEatDFInventory = false,
    StartSniper = true,
        
    -- RAM
    
    RAMPort = 7963,
    RAMPassword = "",
    AutoDescription = false,
    
    -- Webhook
    
    StartWebhook = true,
    WebhookURL = "https://discord.com/api/webhooks/1200338959121788928/keiVq7-dchrotWHTj5LaeoynMuV9EjQw6I_zMnlAzFVrf38My8A06gEVtA-NQOdCf_H5",
    WebhookSettings = "Send Every 10 min", -- "Send Every 10 min","Send On Level Max And Every 10 min"
    
    -- CPU
    
    LockFPS = 30,
    LockFPSNow = true,
    WhiteScreen = true
}
_G.Key = "LuxuryV2_2fdg5lq0k5o2kwgy06ba"
_G.DiscordId = "1094789671730561054"
loadstring(game:HttpGet("https://raw.githubusercontent.com/NightsTimeZ/RoyryX/main/Loader.lua"))()
