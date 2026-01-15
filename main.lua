-- [[ HUB MEGA ELITE - SISTEMA DE CARREGAMENTO SEGURO ]]
local success, OrionLib = pcall(function()
    return loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
end)

if not success or type(OrionLib) ~= "table" then
    OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/jensonhirst/Orion/main/source'))()
end

if _G.OrionLib then _G.OrionLib:Destroy() end
_G.OrionLib = OrionLib
task.wait(0.2)

local Window = OrionLib:MakeWindow({
    Name = "MEU SCRIPT HUB MEGA ELITE", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "MegaEliteConfig",
    IntroText = "Carregando Scripts Atualizados...",
    Draggable = true 
})

-- [[ 3. ABA INVISÍVEL - CONFIGURAÇÕES ]]
local ConfigTab = Window:MakeTab({
    Name = "SettingsHide", 
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

ConfigTab:AddSection({Name = "Ajustes do Hub"})
ConfigTab:AddButton({
    Name = "Rejoin Server (Reentrar)",
    Callback = function()
        game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer)
    end    
})
ConfigTab:AddButton({
    Name = "Fechar Hub (Destroy)",
    Callback = function() OrionLib:Destroy() end    
})

task.spawn(function()
    local gui = game:GetService("CoreGui"):WaitForChild("Orion", 10)
    if gui then
        local nav = gui.Main:WaitForChild("Navigation", 5)
        local btn = nav:WaitForChild("SettingsHide", 10)
        if btn then btn.Visible = false end
    end
end)

-- [[ BANCO DE DADOS COMPLETO ]]
local ScriptsDB = {
    ["Blox Fruits"] = {Popularity = 100,
        {Name = "Redz Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/REDZHUB/BloxFruits/main/main.lua"},
        {Name = "Cupi Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/mrcuphii/CupiHub/main/BloxFruits.lua"},
        {Name = "Alacia Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/AlaciaHub/Alacia/main/main.lua"},
        {Name = "Zaque Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/ZaqueHub/Zaque/main/Script.lua"},
        {Name = "Alchemy Hub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/AlchemyHub/Alchemy/main/Main.lua"},
        {Name = "Hoho Hub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_GUI"},
        {Name = "Mukuro Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/xQuartyx/DonateMe/main/ScriptLoader"},
        {Name = "Ripper Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/RipperHub/RipperHub/main/BloxFruits.lua"},
        {Name = "Speed Hub X", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"},
        {Name = "W-Azure", Status = "(with key 🔐)", Link = "https://api.luarmor.net/files/v3/loaders/3b2169cf534614438861670323a31c5b.lua"}
    },
    ["Pet Simulator 99"] = {Popularity = 85,
        {Name = "Redz Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/REDZHUB/PetSimulator99/main/main.lua"},
        {Name = "Zap Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/ZapHub/Scripts/main/PS99.lua"},
        {Name = "Banana Hub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/OFFXBR/BananaHub/main/PS99.lua"},
        {Name = "BlackTrap", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/S-S-B-T-L/PS99/main/Main.lua"},
        {Name = "Nightmare", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/Nightmare/PS99/main/main.lua"},
        {Name = "Tora Is Me", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/PS99"},
        {Name = "Speed Hub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/PS99.lua"},
        {Name = "Milk Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/AlmightyMilk/MilkHub/main/PS99.lua"},
        {Name = "Kidchi", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/Kidchi/PS99/main/main.lua"},
        {Name = "Kaizen", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/Kaizen/PS99/main/main.lua"}
    },
    ["Dead Rails"] = {Popularity = 92,
        {Name = "Ghost Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/GhostPlayer352/Test45/main/GhostHub"},
        {Name = "Tora Is Me", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/DeadRails"},
        {Name = "Fm Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/Fm-Script/Fm-Script/main/DeadRails.lua"},
        {Name = "Cupid Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/CupidHub/Scripts/main/DeadRails.lua"},
        {Name = "Redz Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/REDZHUB/DeadRails/main/main.lua"},
        {Name = "Speed Hub X", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"},
        {Name = "Azure Hub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/Azure/Scripts/main/DeadRails"},
        {Name = "Simple Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/Batz-X/Scripts/main/DeadRails"},
        {Name = "Nightmare", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/NightmareScripts/Main/main/DeadRails.lua"},
        {Name = "Dead Hub GUI", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/Dead/Scripts/main/Rails.lua"}
    },
    ["MM2"] = {Popularity = 95,
        {Name = "Vynixu Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/Vynixu/VynixuLib/main/MM2/Script.lua"},
        {Name = "Eclipse Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/Exunys/Eclipse-Hub/main/Eclipse%20Hub.lua"},
        {Name = "Kidchi Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/Kidchi77/Kidchi/main/MM2.lua"},
        {Name = "Ray Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/SpaceSaver/RayHub/main/MM2.lua"}
    },
    ["Sol's RNG"] = {Popularity = 70,
        {Name = "Cupid Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/CupidHub/Scripts/main/SolsRNG.lua"},
        {Name = "Relz Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/thanhdat4761/001/main/SolsRNG.lua"},
        {Name = "Glovi Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/pajhen/GloviHub/main/SolsRNG.lua"}
    },
    ["Dress to Impress"] = {Popularity = 75,
        {Name = "LALOL Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/LALOLH/LALOLHub/main/DressToImpress.lua"},
        {Name = "Tora Is Me", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/DTI"},
        {Name = "Silly Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/SillyScripts/DTI/main/main.lua"}
    },
    ["Doors"] = {Popularity = 94,
        {Name = "MSPAINT", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua"},
        {Name = "FFJ Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/FFJ1/Roblox-Scripts/main/Doors.lua"},
        {Name = "Vynixu Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/Vynixu/VynixuLib/main/Doors/Script.lua"},
        {Name = "Morph Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/NukeVsCity/TheHole/main/Doors.lua"},
        {Name = "Poops Hub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/Script-Poops/Doors/main/Main.lua"},
        {Name = "BlackTrap", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/S-S-B-T-L/Doors/main/BlackTrap.lua"},
        {Name = "King Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/Anon-V/KingHub/main/Doors.lua"}
    },
    ["Brookhaven"] = {Popularity = 96,
        {Name = "Ice Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/IceyX-S/IceyX/main/IceHub.lua"},
        {Name = "Redz Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/REDZHUB/Brookhaven/main/main.lua"},
        {Name = "Speed Hub X", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"},
        {Name = "Tora Is Me", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/Brookhaven"},
        {Name = "Chit Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/ChitScripts/Main/main/Brookhaven.lua"},
        {Name = "Ghost Hub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/GhostPlayer352/Test45/main/GhostHub"}
    },
    ["Adopt Me!"] = {Popularity = 97,
        {Name = "Nexer Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/p0p-3ye/Nexer/main/AdoptMe.lua"},
        {Name = "Ice Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/IceyX-S/IceyX/main/IceHub.lua"},
        {Name = "Vynixu Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/Vynixu/VynixuLib/main/AdoptMe.lua"},
        {Name = "Hohub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/hussain123/Hohub/main/AdoptMe"},
        {Name = "G-Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/G-Hub-Script/G-Hub/main/AdoptMe.lua"},
        {Name = "Banana Hub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/OFFXBR/BananaHub/main/AdoptMe.lua"}
    },
    ["Fish It!"] = {Popularity = 98,
        {Name = "Redz Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/REDZHUB/FishIt/main/main.lua"},
        {Name = "Zenith Hub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/ZenithHub/Scripts/main/FishIt"},
        {Name = "Milk Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/AlmightyMilk/MilkHub/main/FishIt.lua"},
        {Name = "Frost Hub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/FrostyScripts/FrostHub/main/FishIt"},
        {Name = "Obscure Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/ObscureScript/Scripts/main/FishIt"},
        {Name = "Banana Hub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/OFFXBR/BananaHub/main/FishIt.lua"},
        {Name = "Speed Hub X", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"},
        {Name = "Tora Is Me", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/FishIt"},
        {Name = "Ghost Hub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/GhostPlayer352/Test45/main/GhostHub"},
        {Name = "Cupid Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/CupidHub/Scripts/main/FishIt.lua"}
    },
    ["99 Noites"] = {Popularity = 99,
        {Name = "FoxName", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/FoxnameHub.lua"},
        {Name = "Saku Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/SakuScript/Main/main/99Nights.lua"},
        {Name = "Lunar Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/LunarScripts/Main/main/99NightsInTheForest"},
        {Name = "Project WD", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/ProjectWD/Main/main/Loader.lua"},
        {Name = "Vynixu Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/Vynixu/VynixuLib/main/VynixuHub.lua"},
        {Name = "R3TH Priv", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/R3TH-PRIV/R3THPRIV/main/99nights.lua"},
        {Name = "99 Nights GUI", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/99NightsInTheForest"},
        {Name = "Darkrai-X", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/DarkraiX/Scripts/main/99Nights"},
        {Name = "Simple Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/Batz-X/Scripts/main/Simple99Nights"},
        {Name = "Nightmare", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/NightmareScripts/Forest/main/99Nights.lua"}
    },
    ["Blade Ball"] = {Popularity = 79,
        {Name = "Redz Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/REDZHUB/BladeBall/main/main.lua"},
        {Name = "FFJ Hub", Status = "(keyless ✅)", Link = "https://raw.githubusercontent.com/FFJ1/Roblox-Scripts/main/BladeBall.lua"},
        {Name = "Bedol Hub", Status = "(with key 🔐)", Link = "https://raw.githubusercontent.com/3345-c0ne-neko/v6/main/main.lua"}
    }
}

-- [[ LÓGICA DE CONSTRUÇÃO ]]
local SortedGames = {}
for name, content in pairs(ScriptsDB) do
    table.insert(SortedGames, {Name = name, Data = content})
end

table.sort(SortedGames, function(a, b)
    return a.Data.Popularity > b.Data.Popularity
end)

for _, gameInfo in ipairs(SortedGames) do
    local CurrentTab = Window:MakeTab({
        Name = gameInfo.Name,
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    for _, data in ipairs(gameInfo.Data) do
        if type(data) == "table" and data.Name then
            CurrentTab:AddButton({
                Name = data.Name .. " " .. data.Status,
                Callback = function()
                    local success, result = pcall(function()
                        return game:HttpGet(data.Link)
                    end)
                    if success then
                        loadstring(result)()
                        OrionLib:MakeNotification({Name = "Sucesso", Content = "Injetando " .. data.Name, Time = 3})
                    else
                        OrionLib:MakeNotification({Name = "Erro", Content = "Falha ao baixar script.", Time = 5})
                    end
                end    
            })
        end
    end
end

-- Inicializa (APENAS UMA VEZ)
OrionLib:Init()

-- [[ INJETOR DO BOTÃO SUPERIOR ]]
task.spawn(function()
    local playerGui = game:GetService("CoreGui")
    local orionGui = playerGui:WaitForChild("Orion", 15)
    
    if orionGui then
        local main = orionGui:WaitForChild("Main")
        local topbar = main:WaitForChild("Topbar")
        local content = main:WaitForChild("Content")
        
        local ConfigBtn = Instance.new("ImageButton")
        ConfigBtn.Name = "CustomSettingsBtn"
        ConfigBtn.Parent = topbar
        ConfigBtn.BackgroundTransparency = 1
        ConfigBtn.Position = UDim2.new(1, -78, 0.5, -10) 
        ConfigBtn.Size = UDim2.new(0, 20, 0, 20)
        ConfigBtn.Image = "rbxassetid://7072714964"
        ConfigBtn.ZIndex = 10
        ConfigBtn.ImageColor3 = Color3.fromRGB(255, 255, 255)
        
        ConfigBtn.MouseButton1Click:Connect(function()
            for _, page in pairs(content:GetChildren()) do
                if page.Name == "SettingsHide" then
                    for _, anyPage in pairs(content:GetChildren()) do
                        if anyPage:IsA("ScrollingFrame") then anyPage.Visible = false end
                    end
                    page.Visible = true
                    OrionLib:MakeNotification({Name = "Sistema", Content = "Configurações Abertas", Time = 2})
                end
            end
        end)
    end
end)
