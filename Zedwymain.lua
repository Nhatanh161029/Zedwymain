_G.Ui_Hide = false
_G.KaitunConfig = {
    ["Start Farm"] = true,
    -- all melee is already do with it self
    -- auto activate list ( Auto Do List )
    --[[ //auto activate list//
        GodHuman, all melee
        get god human material
        random fruit , store fruit
        smart code redeem

        / sea 1
        auto go sea 2
        skip farm level
        saber
        kill Greybeard (bisento v2)

        / sea 2
        auto go sea 3
        kill darkbeard
        race v2
        bartilo

        / sea 3
        kill soul reaper,
        kill dough king,
        kill cake prince
        kill rip indra
        kill Beautiful Pirate

        dough awaking
        elite hunter

        

    ]]
    ["Auto Fruit"] = true, -- tween to fruit

    ["RedeemCode Level"] = 2,

    ["White Sreen"] = true,

    ["LimitFragment"] = 100000,

    -- sea 1
    ["PlayerHunter"] = true, -- will do skip lvl too
    ["Player Hunter Hop"] = false,

    -- sea 2
    ["Auto Factory"] = true,
    ["Rengoku"] = true,
    ["Sea 3 Hop"] = false, -- hop to find fruit
    ["Race v3"] = true,
    
    -- sea 3
    ["CDK"] = true,
    ["Tushita"] = true,
    ["Yama"] = true,
    ["Soul Guitar"] = true,

    -- Add On
    ["Farm When Lvl Max"] = "Katakuri", -- Bone , Katakuri , Coco
    ["Race Lock"] = "notlock", -- Human , Mink , Fishman , put other mean not lock
    ["FPS Cap"] = 15,

    ["Buy Haki Color"] = true, -- will buy only Snow White,Pure Red,Winter Sky
    ["Auto Legendary Sword"] = true,
    ["Auto TTK"] = true,

    -- Sword
    ["Mastery Sword"] = true, -- will farm mastery
    ["Select Rarity"] = {"Mythical","Legendary"}, -- Common , Uncommon,Rare,Legendary,Mythical

    -- Fruit
    ["Select Main Devil Fruit Sniper"] = {"Dragon-Dragon","Spirit-Spirit","Venom-Venom","Dough-Dough"}, -- if have will eat
    ["Select Sub Devil Fruit Sinper"] = {"Ice-Ice","Sand-Sand","Dark-Dark","Quake-Quake","Light-Light"}, -- will eat if not have main fruit
    ["Allow Eat Fruit In Inventory"] = true,
    ["Start Sniper"] = true,
    
    -- Fruit2
    ["Safe Fruit"] = {"Dragon-Dragon","Spirit-Spirit","Venom-Venom","Dough-Dough"}, -- will not use this fruit to raids or anyting

    -- Webhook
    ["Link Webhook"] = "",
    ["Start Webhook"] = false,
    ["Webhook Mode"] = "Send Every .. min", -- "Send Every .. min","Send On Level Max","Send On Level Max And Every .. min"
    ["Webhook Minute"] = 10, -- mean 10 Minute
    ["tag user"] = false,
    ["Send Test Webhook"] = false,
}
_G.Key = "8MLX0-S7A1H-M35ER"
_G.DiscordId = "1016879943747112970"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Natsuhanaki/Royx_PC/main/loader.lua"))();
