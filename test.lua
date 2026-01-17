local Echo = loadstring(game:HttpGet("https://raw.githubusercontent.com/BeanGd69/Velocity-Ui/refs/heads/main/Src.lua"))()

-- Miscellaneous
local TeleportService = game:GetService("TeleportService")
local placeId = game.PlaceId
local player = game.Players.LocalPlayer

-- Variables
local Player = game:GetService("Players").LocalPlayer
local antiKickConnection
local race = "V1"
local rebirthSuccessful = false
local rebamount = 0
local optionSpeed = 0
local optionOrb = ""
local optionCity = ""
local optionSpeed2 = 0
local optionOrb2 = ""
local optionCity2 = ""
local premiumOptionSpeed = 0
local premiumOptionOrb = ""
local premiumOptionCity = ""
local selectedbasicpettohatch = ""
local selectedadvancedpettohatch = ""
local selectedrarepettohatch = ""
local selectedepicpettohatch = ""
local selecteduniquepettohatch = ""
local selectedomegapettohatch = ""
local selectedbasicpettoevolve = ""
local selectedadvancedpettoevolve = ""
local selectedrarepettoevolve = ""
local selectedepicpettoevolve = ""
local selecteduniquepettoevolve = ""
local selectedomegapettoevolve = ""
local orbCooldown = 0.4
local autoRebirthStoppingPointCooldown = 0.5
local autoRebirthCooldown = 0.5
local citiesteleport = ""
local otherteleport = ""
local spaceteleport = ""
local desertteleport = ""
local premiumTeleport = ""
local premiumServerTeleport = ""
local entercurrentrebirth = ""
local usernameTrade = ""

-- Ascended Orb Farm Locals
local ascendedOptionSpeed = 600
local ascendedOptionOrb = ""
local ascendedOptionCity = ""

-- Ascended Orb Farm Vars
local ascendedAutoOrbActive = false

-- Old Farming Locals
local oldOrbCooldown = 0.4
local oldOrbSpeed = 600

-- Old Farming Vars
local oldCityYellowOrb = false
local oldCityOrangeOrb = false
local oldCityBlueOrb = false
local oldCityRedOrb = false
local oldCityEtherealOrb = false
local oldCityGem = false
local oldCityInfernalGem = false

local oldSnowCityYellowOrb = false
local oldSnowCityOrangeOrb = false
local oldSnowCityBlueOrb = false
local oldSnowCityRedOrb = false
local oldSnowCityEtherealOrb = false
local oldSnowCityGem = false
local oldSnowCityInfernalGem = false

local oldMagmaCityYellowOrb = false
local oldMagmaCityOrangeOrb = false
local oldMagmaCityBlueOrb = false
local oldMagmaCityRedOrb = false
local oldMagmaCityEtherealOrb = false
local oldMagmaCityGem = false
local oldMagmaCityInfernalGem = false

local oldLegendsHighwayYellowOrb = false
local oldLegendsHighwayOrangeOrb = false
local oldLegendsHighwayBlueOrb = false
local oldLegendsHighwayRedOrb = false
local oldLegendsHighwayEtherealOrb = false
local oldLegendsHighwayGem = false
local oldLegendsHighwayInfernalGem = false

local oldSpeedJungleYellowOrb = false
local oldSpeedJungleOrangeOrb = false
local oldSpeedJungleBlueOrb = false
local oldSpeedJungleRedOrb = false
local oldSpeedJungleEtherealOrb = false
local oldSpeedJungleGem = false
local oldSpeedJungleInfernalGem = false

-- Loops
local primaryAutoOrbActive = false
local secondaryAutoOrbActive = false
local premiumAutoOrbActive = false
local autoRaceV1 = false
local autoHoopV1 = false
local autoRebirthStoppingPoint = false
local autoRebirth = false
local connectionEnhancer = false
local hatchBasicPets = false
local hatchAdvancedPets = false
local hatchRarePets = false
local hatchEpicPets = false
local hatchUniquePets = false
local hatchOmegaPets = false
local evolveBasicPets = false
local evolveAdvancedcPets = false
local evolveRarePets = false
local evolveEpicPets = false
local evolveUniquePets = false
local evolveOmegaPets = false
local redCrystal = false
local lightningCrystal = false
local yellowCrystal = false
local purpleCrystal = false
local blueCrystal = false
local snowCrystal = false
local lavaCrystal = false
local infernoCrystal = false
local electroLegendsCrystal = false
local jungleCrystal = false
local spaceCrystal = false
local alienCrystal = false
local desertCrystal = false
local electroCrystal = false

-- Ping Optimizer
local minPing = 450
local maxPing = 2500

-- Functions
game:GetService('ReplicatedStorage').raceInProgress.Changed:Connect(function()
	if _G.AR == true then		
		if game:GetService('ReplicatedStorage').raceInProgress.Value == true then
			game:GetService('ReplicatedStorage').rEvents.raceEvent:FireServer("joinRace")
		end
	end
end)
game:GetService('ReplicatedStorage').raceStarted.Changed:Connect(function()
	if _G.AR == true then
		if game:GetService('ReplicatedStorage').raceStarted.Value == true then
			for i, v in pairs(game:GetService('Workspace').raceMaps:GetChildren()) do
				local OldFinishPosition = v.finishPart.CFrame
				v.finishPart.CFrame = Player.Character.HumanoidRootPart.CFrame
				wait()
				v.finishPart.CFrame = OldFinishPosition
			end
		end
		wait(2)
	end
end)

-- Lowest Player Server
local function LowestPlayer()
    local Http = game:GetService("HttpService")
    local TPS = game:GetService("TeleportService")
    local Api = "https://games.roblox.com/v1/games/"
    local _place = game.PlaceId
    local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
    function ListServers(cursor)
        local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
        return Http:JSONDecode(Raw)
    end
    local Server, Next; repeat
    local Servers = ListServers(Next)
    Server = Servers.data[1]
    Next = Servers.nextPageCursor
    until Server
    TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
end

-- Rejoin
local function Rejoin()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:TeleportToPlaceInstance(game.PlaceId, game.JobId, p)
end

-- Serverhop
local function Serverhop()
    local Http = game:GetService("HttpService")
    local TPS = game:GetService("TeleportService")
    local Api = "https://games.roblox.com/v1/games/"
    local _place = game.PlaceId
    local _servers = Api.._place.."/servers/Public?sortOrder=Desc&limit=100"
    function ListServers(cursor)
        local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
        return Http:JSONDecode(Raw)
    end
    local Server, Next
    repeat
        local Servers = ListServers(Next)
        Server = nil
        for _, s in ipairs(Servers.data) do
            if s.maxPlayers > s.playing then
                Server = s
                break
            end
        end
        Next = Servers.nextPageCursor
    until Server
    TPS:TeleportToPlaceInstance(_place, Server.id, game.Players.LocalPlayer)    
end

local blissids = "https://raw.githubusercontent.com/gxslighted/erv-database/refs/heads/main/blissids.lua"
local blisscheck = loadstring(game:HttpGet(blissids))()
local function checkBliss()
	local player = game.Players.LocalPlayer
	local playerID = player.UserId
	for _, id in ipairs(blisscheck) do
		if playerID == id then
			return true
		end
	end
	return false
end

local blisssubscription = checkBliss() 

if blisssubscription then
    -- Notification
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "EchoUI Ascend",
        Text = "Thanks for using EchoUI!", 
        Icon = "rbxassetid://82968618599492",
        Duration = 7
    })
    wait(1.5)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Subscription",
        Text = "Bliss Active!", 
        Icon = "rbxassetid://82968618599492",
        Duration = 7
    })

    -- Window
    local Window = Echo:CreateWindow()

    -- Tabs
    local GeneralTab = Window:CreateTab("General")
    local AutoFarmTab = Window:CreateTab("Farming")
    local OldFarmTab = Window:CreateTab("Old Farming")
    local HatchPetsTab = Window:CreateTab("Hatch")
    local EvolvePetsTab = Window:CreateTab("Evolve")
    local CrystalsTab = Window:CreateTab("Crystals")
    local UltimatesTab = Window:CreateTab("Ultimates")
    local MiscellaneousTab = Window:CreateTab("Misc")

    -- UI
    local Section0 = GeneralTab:CreateSection()

    -- General
    local Section1 = GeneralTab:CreateSection()
    local Section2 = GeneralTab:CreateSection()
    local Section3 = GeneralTab:CreateSection()
    local Section4 = GeneralTab:CreateSection()
    local Section40 = GeneralTab:CreateSection()
    local Section5 = GeneralTab:CreateSection()
    local Section6 = GeneralTab:CreateSection()

    -- Auto Farm
    local Section9 = AutoFarmTab:CreateSection()
    local Section7 = AutoFarmTab:CreateSection()
    local Section8 = AutoFarmTab:CreateSection()
    local Section35 = AutoFarmTab:CreateSection()

    -- Old Farm
    local Section27 = OldFarmTab:CreateSection()
    local Section28 = OldFarmTab:CreateSection()
    local Section29 = OldFarmTab:CreateSection()
    local Section30 = OldFarmTab:CreateSection()
    local Section31 = OldFarmTab:CreateSection()
    local Section32 = OldFarmTab:CreateSection()
    
    -- Hatch Pets
    local Section10 = HatchPetsTab:CreateSection()
    local Section11 = HatchPetsTab:CreateSection()
    local Section12 = HatchPetsTab:CreateSection()
    local Section13 = HatchPetsTab:CreateSection()
    local Section14 = HatchPetsTab:CreateSection()
    local Section15 = HatchPetsTab:CreateSection()

    -- Evolve Pets
    local Section16 = EvolvePetsTab:CreateSection()
    local Section17 = EvolvePetsTab:CreateSection()
    local Section18 = EvolvePetsTab:CreateSection()
    local Section19 = EvolvePetsTab:CreateSection()
    local Section20 = EvolvePetsTab:CreateSection()
    local Section21 = EvolvePetsTab:CreateSection()

    -- Crystals
    local Section22 = CrystalsTab:CreateSection()
    local Section23 = CrystalsTab:CreateSection()
    local Section24 = CrystalsTab:CreateSection()
    
    -- Ultimates
    local Section55 = UltimatesTab:CreateSection()
    local Section56 = UltimatesTab:CreateSection()
    local Section57 = UltimatesTab:CreateSection()

    -- Misc
    local Section25 = MiscellaneousTab:CreateSection()
    local Section26 = MiscellaneousTab:CreateSection()

    -- UI
    Section0:AddSection("UI")
    Section0:AddResizeToggle("Resize", function()
    end)

    -- GeneralTab
    Section1:AddSection("Race Farm")
    Section1:AddDropdown("Race Type", {"Basic","Advanced"}, function(ddrace)
        if ddrace == "Basic" then
            race = "V1"
        elseif ddrace == "Advanced" then
            race = "V2"
        end
    end)
    Section1:AddToggle("Auto Racing", function(state)
        if state then 
            if race == "V1" then
                autoRaceV1 = true 
                while autoRaceV1 do 
                    wait()
                    local args = {
                        [1] = "joinRace"
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("raceEvent"):FireServer(unpack(args))
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48.3109131, 36.3147125, -8680.45312, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                    wait(0.4)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1686.07495, 36.3147125, -5946.63428, -0.984812617, 0, 0.173621148, 0, 1, 0, -0.173621148, 0, -0.984812617)
                    wait(0.4)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1001.33118, 36.3147125, -10986.2178, -0.996191859, 0, -0.0871884301, 0, 1, 0, 0.0871884301, 0, -0.996191859)
                    wait(0.4)
                end 
            elseif race == "V2" then
                _G.AR = true
            end
        else 
            _G.AR = false 
            autoRaceV1 = false 
        end
    end)
    Section2:AddSection("Hoops Farm")
    Section2:AddButton("Clean Hoops", function()
        local player = game.Players.LocalPlayer
        local hoopGui = player:WaitForChild("PlayerGui"):FindFirstChild("hoopGui")
        if hoopGui then
            local screenGradient = hoopGui:FindFirstChild("screenGradient")
            if screenGradient then
                screenGradient:Destroy()
            end
        end
        local hoopsFolder = game.Workspace:FindFirstChild("Hoops")
        if hoopsFolder then
            for _, hoop in ipairs(hoopsFolder:GetChildren()) do
                local hoopParticle = hoop:FindFirstChild("hoopParticle")
                if hoopParticle then
                    hoopParticle:Destroy()
                end
                local hoopSound = hoop:FindFirstChild("hoopSound")
                if hoopSound then
                    hoopSound:Destroy()
                end
                local playerParticle = hoop:FindFirstChild("playerParticle")
                if playerParticle then
                    playerParticle:Destroy()
                end
            end
        end 
    end)
    Section2:AddToggle("Auto Hoops", function(state)
        if state then 
            autoHoopV1 = true 
            while autoHoopV1 do 
                wait()
                for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
                    firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                    wait()
                    firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
                end
            end
        else 
            autoHoopV1 = false 
        end
    end)    
    Section3:AddSection("Rebirth Farm")
    Section3:AddBox("Enter Rebirth Cooldown", function(input)
        local inputNumber = tonumber(input)
        if inputNumber then
            autoRebirthCooldown = inputNumber / 100
        else
            autoRebirthCooldown = 0.1
        end
    end)
    Section3:AddToggle("Auto Rebirth", function(state)
        if state then 
            autoRebirth = true
            while autoRebirth do 
                wait()
                game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
                wait(autoRebirthCooldown)
            end 
        else 
            autoRebirth = false
        end 
    end)
    Section4:AddSection("Rebirth Target Farm")
    Section4:AddBox("Rebirth Target", function(rebamountbb)
        rebamount = tonumber(rebamountbb) or 0
    end)
    Section4:AddBox("Enter Rebirth Cooldown", function(input)
        local inputNumber = tonumber(input)
        if inputNumber then
            autoRebirthStoppingPointCooldown = inputNumber / 100
        else
            autoRebirthStoppingPointCooldown = 0.1
        end
    end)
    Section4:AddToggle("Auto Rebirth", function(state)
        if state then 
            autoRebirthStoppingPoint = true
            while autoRebirthStoppingPoint do 
                wait()
                local success, err = pcall(function()
                    local rebirthsBefore = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                    game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
                    wait(autoRebirthStoppingPointCooldown)
                    local rebirthsAfter = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                    if rebirthsAfter > rebirthsBefore then
                        rebirthSuccessful = true
                        wait(autoRebirthStoppingPointCooldown)
                        rebirthSuccessful = false
                    end
                    if rebirthsAfter >= rebamount then
                        autoRebirthStoppingPoint = false
                        primaryAutoOrbActive = false
                        secondaryAutoOrbActive = false
                    end
                end)
                if not success then
                    autoRebirthStoppingPoint = false
                    primaryAutoOrbActive = false
                    secondaryAutoOrbActive = false
                end
            end 
        else 
            autoRebirthStoppingPoint = false
            primaryAutoOrbActive = false
            secondaryAutoOrbActive = false
        end 
    end)
    Section40:AddSection("Ping Optimizer")
    Section40:AddBox("Minimum Ping", function(input)
        minPing = tonumber(input) or 450
    end)
    Section40:AddBox("Maximum Ping", function(input)
        maxPing = tonumber(input) or 2500
    end)
    Section40:AddToggle("Enable", function(state)
        pingMonitorActive = state
        if pingMonitorActive then
            spawn(function()
                while pingMonitorActive do
                    local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                    ping = tonumber(string.match(ping, "%d+"))
                    if ping and maxPing and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(
                                game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(),
                                "%d+"
                            ))
                        until (ping and ping < minPing) or not pingMonitorActive
                        if pingMonitorActive then
                            print("Ping stabilized!")
                        end
                    end    
                    wait(0.5)
                end
            end)
        end
    end)
    Section5:AddSection("Miscellaneous")
    Section5:AddToggle("Connection Enhancer", function(state)
        if state then
            connectionEnhancer = true
            while connectionEnhancer == true do wait()
                game:GetService("NetworkClient"):SetOutgoingKBPSLimit(800000)
                game:GetService("NetworkClient"):SetIncomingKBPSLimit(800000)
                wait(5)
            end
        else
            connectionEnhancer = false
        end
    end)
    Section5:AddToggle("Freeze", function(state)
        if state then 
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = true
        else 
            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").Anchored = false
        end 
    end)
    Section5:AddToggle("Bull", function(state)
        if state then 
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local newProperties = PhysicalProperties.new(30, 0.3, 0.5)
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CustomPhysicalProperties = newProperties
                end
            end
        else 
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CustomPhysicalProperties = nil
                end
            end
        end 
    end)
    Section5:AddToggle("Anti Idle", function(state)
        if state then
            antiKickConnection = game:service'Players'.LocalPlayer.Idled:connect(function()
                game:GetService('VirtualUser'):CaptureController()
                game:GetService('VirtualUser'):ClickButton2(Vector2.new())
            end)
        else
            if antiKickConnection then
                antiKickConnection:Disconnect()
                antiKickConnection = nil
            end
        end 
    end)

    Section6:AddSection("Trading")
    Section6:AddToggle("Enable Trading", function(state)
        if state then 
            local args = { 
                [1] = "enableTrading" 
            }
            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("tradingEvent"):FireServer(unpack(args)) 
        else 
            local args = { 
                [1] = "disableTrading" 
            }
            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("tradingEvent"):FireServer(unpack(args)) 
        end 
    end)
    Section6:AddBox("Target Username", function(input)
        usernameTrade = input
    end)
    Section6:AddButton("Send Trade", function()
        if usernameTrade and usernameTrade ~= "" then
            local playerTrade = game:GetService("Players")[usernameTrade]
            if playerTrade then
                local args = {
                    [1] = "sendTradeRequest",
                    [2] = playerTrade
                }
                game:GetService("ReplicatedStorage").rEvents.tradingEvent:FireServer(unpack(args))
            end
        end
    end)

    -- AutoFarmTab  
    Section9:AddSection("Farming Configuration")
    Section9:AddBox("Enter Orb Cooldown", function(input)
        local inputNumber = tonumber(input)
        if inputNumber then
            orbCooldown = inputNumber / 100
        else
            orbCooldown = 0.4
        end
    end)
    Section7:AddSection("Primary Orb Auto Farm")
    Section7:AddDropdown("Select Orb", {"Yellow Orb","Orange Orb","Blue Orb","Red Orb","Ethereal Orb","Gem","Infernal Gem"}, function(ddmorbs)
        if ddmorbs == "Yellow Orb" then
            optionOrb = "Yellow Orb"
        elseif ddmorbs == "Orange Orb" then
            optionOrb = "Orange Orb"
        elseif ddmorbs == "Blue Orb" then
            optionOrb = "Blue Orb"
        elseif ddmorbs == "Red Orb" then
            optionOrb = "Red Orb"
        elseif ddmorbs == "Ethereal Orb" then
            optionOrb = "Ethereal Orb"
        elseif ddmorbs == "Gem" then
            optionOrb = "Gem"
        elseif ddmorbs == "Infernal Gem" then
            optionOrb = "Infernal Gem"
        end
    end)
    Section7:AddDropdown("Select City", {"City","Snow City","Magma City","Legends Highway","Speed Jungle","Space","Desert"}, function(ddmcities)
        if ddmcities == "City" then
            optionCity = "City"
        elseif ddmcities == "Snow City" then
            optionCity = "Snow City"
        elseif ddmcities == "Magma City" then
            optionCity = "Magma City"
        elseif ddmcities == "Legends Highway" then
            optionCity = "Legends Highway"
        elseif ddmcities == "Speed Jungle" then
            optionCity = "Speed Jungle"
        elseif ddmcities == "Space" then
            optionCity = "Space"
        elseif ddmcities == "Desert" then
            optionCity = "Desert"
        end
    end)
    Section7:AddDropdown("Select Orb Multiplier", {"x500 Orbs","x550 Orbs","x600 Orbs","x650 Orbs","x700 Orbs","x750 Orbs","x800 Orbs","x850 Orbs","x900 Orbs","x950 Orbs","x1000 Orbs","x1050 Orbs","x1100 Orbs","x1150 Orbs","x1200 Orbs","x1250 Orbs","x1300 Orbs"}, function(ddmspeed)
        if ddmspeed == "x500 Orbs" then
            optionSpeed = 500
        elseif ddmspeed == "x550 Orbs" then
            optionSpeed = 550
        elseif ddmspeed == "x600 Orbs" then
            optionSpeed = 600
        elseif ddmspeed == "x650 Orbs" then
            optionSpeed = 650
        elseif ddmspeed == "x700 Orbs" then
            optionSpeed = 700
        elseif ddmspeed == "x750 Orbs" then
            optionSpeed = 750
        elseif ddmspeed == "x800 Orbs" then
            optionSpeed = 800
        elseif ddmspeed == "x850 Orbs" then
            optionSpeed = 850
        elseif ddmspeed == "x900 Orbs" then
            optionSpeed = 900
        elseif ddmspeed == "x950 Orbs" then
            optionSpeed = 950
        elseif ddmspeed == "x1000 Orbs" then
            optionSpeed = 1000
        elseif ddmspeed == "x1050 Orbs" then
            optionSpeed = 1050
        elseif ddmspeed == "x1100 Orbs" then
            optionSpeed = 1100
        elseif ddmspeed == "x1150 Orbs" then
            optionSpeed = 1150
        elseif ddmspeed == "x1200 Orbs" then
            optionSpeed = 1200
        elseif ddmspeed == "x1250 Orbs" then
            optionSpeed = 1250
        elseif ddmspeed == "x1300 Orbs" then
            optionSpeed = 1300
        end	
    end)
    Section7:AddToggle("Auto Orb", function(state)
        if state then 
            primaryAutoOrbActive = true
            while primaryAutoOrbActive do 
                if not primaryAutoOrbActive then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not primaryAutoOrbActive
                        if not primaryAutoOrbActive then break end
                    end
                end
                local batchSize = math.ceil(optionSpeed / 5)
                local remainingOrbs = optionSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", optionOrb, optionCity)
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(orbCooldown)
            end 
        else 
            primaryAutoOrbActive = false
        end
    end)
    Section8:AddSection("Secondary Orb Auto Farm")
    Section8:AddDropdown("Select Orb", {"Yellow Orb","Orange Orb","Blue Orb","Red Orb","Ethereal Orb","Gem","Infernal Gem"}, function(ddmorbs)
        if ddmorbs == "Yellow Orb" then
            optionOrb2 = "Yellow Orb"
        elseif ddmorbs == "Orange Orb" then
            optionOrb2 = "Orange Orb"
        elseif ddmorbs == "Blue Orb" then
            optionOrb2 = "Blue Orb"
        elseif ddmorbs == "Red Orb" then
            optionOrb2 = "Red Orb"
        elseif ddmorbs == "Ethereal Orb" then
            optionOrb2 = "Ethereal Orb"
        elseif ddmorbs == "Gem" then
            optionOrb2 = "Gem"
        elseif ddmorbs == "Infernal Gem" then
            optionOrb2 = "Infernal Gem"
        end
    end)
    Section8:AddDropdown("Select City", {"City","Snow City","Magma City","Legends Highway","Speed Jungle","Space","Desert"}, function(ddmcities)
        if ddmcities == "City" then
            optionCity2 = "City"
        elseif ddmcities == "Snow City" then
            optionCity2 = "Snow City"
        elseif ddmcities == "Magma City" then
            optionCity2 = "Magma City"
        elseif ddmcities == "Legends Highway" then
            optionCity2 = "Legends Highway"
        elseif ddmcities == "Speed Jungle" then
            optionCity2 = "Speed Jungle"
        elseif ddmcities == "Space" then
            optionCity2 = "Space"
        elseif ddmcities == "Desert" then
            optionCity2 = "Desert"
        end
    end)
    Section8:AddDropdown("Select Orb Multiplier", {"x400 Orbs","x450 Orbs","x500 Orbs","x550 Orbs","x600 Orbs","x650 Orbs","x700 Orbs","x750 Orbs","x800 Orbs","x850 Orbs","x900 Orbs","x950 Orbs","x1000 Orbs","x1050 Orbs","x1100 Orbs","x1150 Orbs","x1200 Orbs","x1250 Orbs","x1300 Orbs"}, function(ddmspeed)
        if ddmspeed == "x500 Orbs" then
            optionSpeed2 = 500
        elseif ddmspeed == "x550 Orbs" then
            optionSpeed2 = 550
        elseif ddmspeed == "x600 Orbs" then
            optionSpeed2 = 600
        elseif ddmspeed == "x650 Orbs" then
            optionSpeed2 = 650
        elseif ddmspeed == "x700 Orbs" then
            optionSpeed2 = 700
        elseif ddmspeed == "x750 Orbs" then
            optionSpeed2 = 750
        elseif ddmspeed == "x800 Orbs" then
            optionSpeed2 = 800
        elseif ddmspeed == "x850 Orbs" then
            optionSpeed2 = 850
        elseif ddmspeed == "x900 Orbs" then
            optionSpeed2 = 900
        elseif ddmspeed == "x950 Orbs" then
            optionSpeed2 = 950
        elseif ddmspeed == "x1000 Orbs" then
            optionSpeed2 = 1000
        elseif ddmspeed == "x1050 Orbs" then
            optionSpeed2 = 1050
        elseif ddmspeed == "x1100 Orbs" then
            optionSpeed2 = 1100
        elseif ddmspeed == "x1150 Orbs" then
            optionSpeed2 = 1150
        elseif ddmspeed == "x1200 Orbs" then
            optionSpeed2 = 1200
        elseif ddmspeed == "x1250 Orbs" then
            optionSpeed2 = 1250
        elseif ddmspeed == "x1300 Orbs" then
            optionSpeed2 = 1300
        end	
    end)
    Section8:AddToggle("Auto Orb", function(state)
        if state then 
            secondaryAutoOrbActive = true
            while secondaryAutoOrbActive do 
                if not secondaryAutoOrbActive then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not secondaryAutoOrbActive
                        if not secondaryAutoOrbActive then break end
                    end
                end
                local batchSize = math.ceil(optionSpeed2 / 5)
                local remainingOrbs = optionSpeed2
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", optionOrb2, optionCity2)
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(orbCooldown)
            end 
        else 
            secondaryAutoOrbActive = false
        end
    end)

    Section35:AddSection("Ascended Orb Auto Farm")
    Section35:AddDropdown("Select Orb", {"Yellow Orb","Orange Orb","Blue Orb","Red Orb","Ethereal Orb","Gem","Infernal Gem"}, function(selected)
        if selected == "Yellow Orb" then
            ascendedOptionOrb = "Yellow Orb"
        elseif selected == "Orange Orb" then
            ascendedOptionOrb = "Orange Orb"
        elseif selected == "Blue Orb" then
            ascendedOptionOrb = "Blue Orb"
        elseif selected == "Red Orb" then
            ascendedOptionOrb = "Red Orb"
        elseif selected == "Ethereal Orb" then
            ascendedOptionOrb = "Ethereal Orb"
        elseif selected == "Gem" then
            ascendedOptionOrb = "Gem"
        elseif selected == "Infernal Gem" then
            ascendedOptionOrb = "Infernal Gem"
        end
    end)
    Section35:AddDropdown("Select City", {"City","Snow City","Magma City","Legends Highway","Speed Jungle","Space","Desert"}, function(selected)
        if selected == "City" then
            ascendedOptionCity = "City"
        elseif selected == "Snow City" then
            ascendedOptionCity = "Snow City"
        elseif selected == "Magma City" then
            ascendedOptionCity = "Magma City"
        elseif selected == "Legends Highway" then
            ascendedOptionCity = "Legends Highway"
        elseif selected == "Speed Jungle" then
            ascendedOptionCity = "Speed Jungle"
        elseif selected == "Space" then
            ascendedOptionCity = "Space"
        elseif selected == "Desert" then
            ascendedOptionCity = "Desert"
        end
    end)
    Section35:AddBox("Enter Orb Multiplier", function(input)
        local inputNumber = tonumber(input)
        if inputNumber then
            ascendedOptionSpeed = inputNumber
        else
            ascendedOptionSpeed = 600
        end
    end)
    Section35:AddToggle("Auto Orb", function(state)
        if state then 
            ascendedAutoOrbActive = true
            while ascendedAutoOrbActive do 
                if not ascendedAutoOrbActive then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not ascendedAutoOrbActive
                        if not ascendedAutoOrbActive then break end
                    end
                end
                local batchSize = math.ceil(ascendedOptionSpeed / 5)
                local remainingOrbs = ascendedOptionSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", ascendedOptionOrb, ascendedOptionCity)
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(orbCooldown)
            end 
        else 
            ascendedAutoOrbActive = false
        end
    end)
    Section35:Empty()

    -- Old Farm
    Section27:AddSection("Old Farm Configuration")
    Section27:AddBox("Enter Orb Cooldown", function(input)
        local inputNumber = tonumber(input)
        if inputNumber then
            oldOrbCooldown = inputNumber / 100
        else
            oldOrbCooldown = 0.4
        end
    end)
    Section27:AddBox("Enter Orb Multiplier", function(input)
        local inputNumber = tonumber(input)
        if inputNumber then
            oldOrbSpeed = inputNumber
        else
            oldOrbSpeed = 600
        end
    end)
    
    Section28:AddSection("City Farming")
    Section28:AddToggle("Auto Yellow Orb", function(state)
        if state then 
            oldCityYellowOrb = true
            while oldCityYellowOrb do 
                if not oldCityYellowOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldCityYellowOrb
                        if not oldCityYellowOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldCityYellowOrb = false
        end
    end)
    Section28:AddToggle("Auto Orange Orb", function(state)
        if state then 
            oldCityOrangeOrb = true
            while oldCityOrangeOrb do 
                if not oldCityOrangeOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldCityOrangeOrb
                        if not oldCityOrangeOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldCityOrangeOrb = false
        end
    end)
    Section28:AddToggle("Auto Blue Orb", function(state)
        if state then 
            oldCityBlueOrb = true
            while oldCityBlueOrb do 
                if not oldCityBlueOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldCityBlueOrb
                        if not oldCityBlueOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldCityBlueOrb = false
        end
    end)
    Section28:AddToggle("Auto Red Orb", function(state)
        if state then 
            oldCityRedOrb = true
            while oldCityRedOrb do 
                if not oldCityRedOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldCityRedOrb
                        if not oldCityRedOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldCityRedOrb = false
        end
    end)
    Section28:AddToggle("Auto Ethereal Orb", function(state)
        if state then 
            oldCityEtherealOrb = true
            while oldCityEtherealOrb do 
                if not oldCityEtherealOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldCityEtherealOrb
                        if not oldCityEtherealOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Ethereal Orb", "City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldCityEtherealOrb = false
        end
    end)
    Section28:AddToggle("Auto Gem", function(state)
        if state then 
            oldCityGem = true
            while oldCityGem do 
                if not oldCityGem then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldCityGem
                        if not oldCityGem then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldCityGem = false
        end
    end)
    Section28:AddToggle("Auto Gem", function(state)
        if state then 
            oldCityInfernalGem = true
            while oldCityInfernalGem do 
                if not oldCityInfernalGem then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldCityInfernalGem
                        if not oldCityInfernalGem then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Infernal Gem", "City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldCityInfernalGem = false
        end
    end)

    Section29:AddSection("Snow City Farming")
    Section29:AddToggle("Auto Yellow Orb", function(state)
        if state then 
            oldSnowCityYellowOrb = true
            while oldSnowCityYellowOrb do 
                if not oldSnowCityYellowOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSnowCityYellowOrb
                        if not oldSnowCityYellowOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Snow City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSnowCityYellowOrb = false
        end
    end)
    Section29:AddToggle("Auto Orange Orb", function(state)
        if state then 
            oldSnowCityOrangeOrb = true
            while oldSnowCityOrangeOrb do 
                if not oldSnowCityOrangeOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSnowCityOrangeOrb
                        if not oldSnowCityOrangeOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Snow City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSnowCityOrangeOrb = false
        end
    end)
    Section29:AddToggle("Auto Blue Orb", function(state)
        if state then 
            oldSnowCityBlueOrb = true
            while oldSnowCityBlueOrb do 
                if not oldSnowCityBlueOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSnowCityBlueOrb
                        if not oldSnowCityBlueOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Snow City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSnowCityBlueOrb = false
        end
    end)
    Section29:AddToggle("Auto Red Orb", function(state)
        if state then 
            oldSnowCityRedOrb = true
            while oldSnowCityRedOrb do 
                if not oldSnowCityRedOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSnowCityRedOrb
                        if not oldSnowCityRedOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Snow City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSnowCityRedOrb = false
        end
    end)
    Section29:AddToggle("Auto Ethereal Orb", function(state)
        if state then 
            oldSnowCityEtherealOrb = true
            while oldSnowCityEtherealOrb do 
                if not oldSnowCityEtherealOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSnowCityEtherealOrb
                        if not oldSnowCityEtherealOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Ethereal Orb", "Snow City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSnowCityEtherealOrb = false
        end
    end)
    Section29:AddToggle("Auto Gem", function(state)
        if state then 
            oldSnowCityGem = true
            while oldSnowCityGem do 
                if not oldSnowCityGem then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSnowCityGem
                        if not oldSnowCityGem then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Snow City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSnowCityGem = false
        end
    end)
    Section29:AddToggle("Auto Infernal Gem", function(state)
        if state then 
            oldSnowCityInfernalGem = true
            while oldSnowCityInfernalGem do 
                if not oldSnowCityInfernalGem then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSnowCityInfernalGem
                        if not oldSnowCityInfernalGem then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Infernal Gem", "Snow City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSnowCityInfernalGem = false
        end
    end)

    Section30:AddSection("Magma City Farming")
    Section30:AddToggle("Auto Yellow Orb", function(state)
        if state then 
            oldMagmaCityYellowOrb = true
            while oldMagmaCityYellowOrb do 
                if not oldMagmaCityYellowOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldMagmaCityYellowOrb
                        if not oldMagmaCityYellowOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Magma City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldMagmaCityYellowOrb = false
        end
    end)
    Section30:AddToggle("Auto Orange Orb", function(state)
        if state then 
            oldMagmaCityOrangeOrb = true
            while oldMagmaCityOrangeOrb do 
                if not oldMagmaCityOrangeOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldMagmaCityOrangeOrb
                        if not oldMagmaCityOrangeOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Magma City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldMagmaCityOrangeOrb = false
        end
    end)
    Section30:AddToggle("Auto Blue Orb", function(state)
        if state then 
            oldMagmaCityBlueOrb = true
            while oldMagmaCityBlueOrb do 
                if not oldMagmaCityBlueOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldMagmaCityBlueOrb
                        if not oldMagmaCityBlueOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Magma City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldMagmaCityBlueOrb = false
        end
    end)
    Section30:AddToggle("Auto Red Orb", function(state)
        if state then 
            oldMagmaCityRedOrb = true
            while oldMagmaCityRedOrb do 
                if not oldMagmaCityRedOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldMagmaCityRedOrb
                        if not oldMagmaCityRedOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Magma City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldMagmaCityRedOrb = false
        end
    end)
    Section30:AddToggle("Auto Ethereal Orb", function(state)
        if state then 
            oldMagmaCityEtherealOrb = true
            while oldMagmaCityEtherealOrb do 
                if not oldMagmaCityEtherealOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldMagmaCityEtherealOrb
                        if not oldMagmaCityEtherealOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Ethereal Orb", "Magma City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldMagmaCityEtherealOrb = false
        end
    end)
    Section30:AddToggle("Auto Gem", function(state)
        if state then 
            oldMagmaCityGem = true
            while oldMagmaCityGem do 
                if not oldMagmaCityGem then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldMagmaCityGem
                        if not oldMagmaCityGem then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Magma City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldMagmaCityGem = false
        end
    end)
    Section30:AddToggle("Auto Infernal Gem", function(state)
        if state then 
            oldMagmaCityInfernalGem = true
            while oldMagmaCityInfernalGem do 
                if not oldMagmaCityInfernalGem then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldMagmaCityInfernalGem
                        if not oldMagmaCityInfernalGem then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Infernal Gem", "Magma City")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldMagmaCityInfernalGem = false
        end
    end)

    Section31:AddSection("Legends Highway Farming")
    Section31:AddToggle("Auto Yellow Orb", function(state)
        if state then 
            oldLegendsHighwayYellowOrb = true
            while oldLegendsHighwayYellowOrb do 
                if not oldLegendsHighwayYellowOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldLegendsHighwayYellowOrb
                        if not oldLegendsHighwayYellowOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Legends Highway")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldLegendsHighwayYellowOrb = false
        end
    end)
    Section31:AddToggle("Auto Orange Orb", function(state)
        if state then 
            oldLegendsHighwayOrangeOrb = true
            while oldLegendsHighwayOrangeOrb do 
                if not oldLegendsHighwayOrangeOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldLegendsHighwayOrangeOrb
                        if not oldLegendsHighwayOrangeOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Legends Highway")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldLegendsHighwayOrangeOrb = false
        end
    end)
    Section31:AddToggle("Auto Blue Orb", function(state)
        if state then 
            oldLegendsHighwayBlueOrb = true
            while oldLegendsHighwayBlueOrb do 
                if not oldLegendsHighwayBlueOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldLegendsHighwayBlueOrb
                        if not oldLegendsHighwayBlueOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Legends Highway")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldLegendsHighwayBlueOrb = false
        end
    end)
    Section31:AddToggle("Auto Red Orb", function(state)
        if state then 
            oldLegendsHighwayRedOrb = true
            while oldLegendsHighwayRedOrb do 
                if not oldLegendsHighwayRedOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldLegendsHighwayRedOrb
                        if not oldLegendsHighwayRedOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Legends Highway")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldLegendsHighwayRedOrb = false
        end
    end)
    Section31:AddToggle("Auto Ethereal Orb", function(state)
        if state then 
            oldLegendsHighwayEtherealOrb = true
            while oldLegendsHighwayEtherealOrb do 
                if not oldLegendsHighwayEtherealOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldLegendsHighwayEtherealOrb
                        if not oldLegendsHighwayEtherealOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Ethereal Orb", "Legends Highway")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldLegendsHighwayEtherealOrb = false
        end
    end)
    Section31:AddToggle("Auto Gem", function(state)
        if state then 
            oldLegendsHighwayGem = true
            while oldLegendsHighwayGem do 
                if not oldLegendsHighwayGem then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldLegendsHighwayGem
                        if not oldLegendsHighwayGem then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Legends Highway")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldLegendsHighwayGem = false
        end
    end)
    Section31:AddToggle("Auto Infernal Gem", function(state)
        if state then 
            oldLegendsHighwayInfernalGem = true
            while oldLegendsHighwayInfernalGem do 
                if not oldLegendsHighwayInfernalGem then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldLegendsHighwayInfernalGem
                        if not oldLegendsHighwayInfernalGem then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Infernal Gem", "Legends Highway")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldLegendsHighwayInfernalGem = false
        end
    end)

    Section32:AddSection("Speed Jungle Farming")
    Section32:AddToggle("Auto Yellow Orb", function(state)
        if state then 
            oldSpeedJungleYellowOrb = true
            while oldSpeedJungleYellowOrb do 
                if not oldSpeedJungleYellowOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSpeedJungleYellowOrb
                        if not oldSpeedJungleYellowOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Yellow Orb", "Speed Jungle")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSpeedJungleYellowOrb = false
        end
    end)
    Section32:AddToggle("Auto Orange Orb", function(state)
        if state then 
            oldSpeedJungleOrangeOrb = true
            while oldSpeedJungleOrangeOrb do 
                if not oldSpeedJungleOrangeOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSpeedJungleOrangeOrb
                        if not oldSpeedJungleOrangeOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Orange Orb", "Speed Jungle")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSpeedJungleOrangeOrb = false
        end
    end)
    Section32:AddToggle("Auto Blue Orb", function(state)
        if state then 
            oldSpeedJungleBlueOrb = true
            while oldSpeedJungleBlueOrb do 
                if not oldSpeedJungleBlueOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSpeedJungleBlueOrb
                        if not oldSpeedJungleBlueOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Blue Orb", "Speed Jungle")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSpeedJungleBlueOrb = false
        end
    end)
    Section32:AddToggle("Auto Red Orb", function(state)
        if state then 
            oldSpeedJungleRedOrb = true
            while oldSpeedJungleRedOrb do 
                if not oldSpeedJungleRedOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSpeedJungleRedOrb
                        if not oldSpeedJungleRedOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Red Orb", "Speed Jungle")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSpeedJungleRedOrb = false
        end
    end)
    Section32:AddToggle("Auto Ethereal Orb", function(state)
        if state then 
            oldSpeedJungleEtherealOrb = true
            while oldSpeedJungleEtherealOrb do 
                if not oldSpeedJungleEtherealOrb then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSpeedJungleEtherealOrb
                        if not oldSpeedJungleEtherealOrb then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Ethereal Orb", "Speed Jungle")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSpeedJungleEtherealOrb = false
        end
    end)
    Section32:AddToggle("Auto Gem", function(state)
        if state then 
            oldSpeedJungleGem = true
            while oldSpeedJungleGem do 
                if not oldSpeedJungleGem then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSpeedJungleGem
                        if not oldSpeedJungleGem then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Gem", "Speed Jungle")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSpeedJungleGem = false
        end
    end)
    Section32:AddToggle("Auto Infernal Gem", function(state)
        if state then 
            oldSpeedJungleInfernalGem = true
            while oldSpeedJungleInfernalGem do 
                if not oldSpeedJungleInfernalGem then break end
                if pingMonitorActive then
                    local ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                    if ping and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), "%d+"))
                        until ping and ping < minPing or not oldSpeedJungleInfernalGem
                        if not oldSpeedJungleInfernalGem then break end
                    end
                end
                local batchSize = math.ceil(oldOrbSpeed / 5)
                local remainingOrbs = oldOrbSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", "Infernal Gem", "Speed Jungle")
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(oldOrbCooldown)
            end 
        else 
            oldSpeedJungleInfernalGem = false
        end
    end)

    -- HatchPetsTab
    Section10:AddSection("Hatch Basic Pets")
    Section10:AddDropdown("Select Pet", {"Red Bunny","Red Kitty","Blue Bunny","Silver Dog",'Yellow Squeak'}, function(input)
        if input == "Red Bunny" then
            selectedbasicpettohatch = input
        elseif input == "Red Kitty" then
            selectedbasicpettohatch = input
        elseif input == "Blue Bunny" then
            selectedbasicpettohatch = input
        elseif input == "Silver Dog" then
            selectedbasicpettohatch = input
        elseif input == "Yellow Squeak" then
            selectedbasicpettohatch = input
        end
    end)
    Section10:AddToggle("Auto Hatch",function(state)
        if state then 
            hatchBasicPets = true 
            while hatchBasicPets == true do wait() 
                local args = { 
                    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selectedbasicpettohatch)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
        else 
            hatchBasicPets = false 
        end  
    end)
    Section11:AddSection("Hatch Advanced Pets")
    Section11:AddDropdown("Select Pet", {"Green Vampy","Dark Golem","Pink Butterfly","Yellow Butterfly","Green Golem"}, function(input)
        if input == "Green Vampy" then
            selectedadvancedpettohatch = input
        elseif input == "Dark Golem" then
            selectedadvancedpettohatch = input
        elseif input == "Pink Butterfly" then
            selectedadvancedpettohatch = input
        elseif input == "Yellow Butterfly" then
            selectedadvancedpettohatch = input
        elseif input == "Green Golem" then
            selectedadvancedpettohatch = input
        end
    end)
    Section11:AddToggle("Auto Hatch",function(state)
        if state then 
            hatchAdvancedPets = true 
            while hatchAdvancedPets == true do wait() 
                local args = { 
                    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selectedadvancedpettohatch)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
        else 
            hatchAdvancedPets = false 
        end  
    end)
    Section12:AddSection("Hatch Rare Pets")
    Section12:AddDropdown("Select Pet", {"Purple Pegasus","Golden Angel","Orange Pegasus","Orange Falcon","Blue Firecaster","White Phoenix","Red Phoenix","Red Firecaster"}, function(input)
        if input == "Purple Pegasus" then
            selectedrarepettohatch = input
        elseif input == "Golden Angel" then
            selectedrarepettohatch = input
        elseif input == "Orange Pegasus" then
            selectedrarepettohatch = input
        elseif input == "Orange Falcon" then
            selectedrarepettohatch = input
        elseif input == "Blue Firecaster" then
            selectedrarepettohatch = input
        elseif input == "White Phoenix" then
            selectedrarepettohatch = input
        elseif input == "Red Phoenix" then
            selectedrarepettohatch = input
        elseif input == "Red Firecaster" then
            selectedrarepettohatch = input
        end
    end)
    Section12:AddToggle("Auto Hatch",function(state)
        if state then 
            hatchRarePets = true 
            while hatchRarePets == true do wait() 
                local args = { 
                    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selectedrarepettohatch)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
        else 
            hatchRarePets = false 
        end  
    end)
    Section13:AddSection("Hatch Epic Pets")
    Section13:AddDropdown("Select Pet", {"Golden Phoenix","Green Firecaster","Voltaic Falcon","Blue Phoenix","Divine Pegasus"}, function(input)
        if input == "Golden Phoenix" then
            selectedepicpettohatch = input
        elseif input == "Green Firecaster" then
            selectedepicpettohatch = input
        elseif input == "Voltaic Falcon" then
            selectedepicpettohatch = input
        elseif input == "Blue Phoenix" then
            selectedepicpettohatch = input
        elseif input == "Divine Pegasus" then
            selectedepicpettohatch = input
        end
    end)
    Section13:AddToggle("Auto Hatch",function(state)
        if state then 
            hatchEpicPets = true 
            while hatchEpicPets == true do wait() 
                local args = { 
                    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selectedepicpettohatch)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
        else 
            hatchEpicPets = false 
        end  
    end)
    Section14:AddSection("Hatch Unique Pets")
    Section14:AddDropdown("Select Pet", {"Flaming Hedgehog","Electro Golem","Voltaic Falcon","Void Dragon","Ultra Birdie","Quantum Dragon","Tundra Dragon","Magic Butterfly","Maestro Dog","Golden Viking","Speedy Sensei"}, function(input)
        if input == "Flaming Hedgehog" then
            selecteduniquepettohatch = input
        elseif input == "Electro Golem" then
            selecteduniquepettohatch = input
        elseif input == "Voltaic Falcon" then
            selecteduniquepettohatch = input
        elseif input == "Void Dragon" then
            selecteduniquepettohatch = input
        elseif input == "Ultra Birdie" then
            selecteduniquepettohatch = input
        elseif input == "Quantum Dragon" then
            selecteduniquepettohatch = input
        elseif input == "Tundra Dragon" then
            selecteduniquepettohatch = input
        elseif input == "Magic Butterfly" then
            selecteduniquepettohatch = input
        elseif input == "Maestro Dog" then
            selecteduniquepettohatch = input
        elseif input == "Golden Viking" then
            selecteduniquepettohatch = input
        elseif input == "Speedy Sensei" then
            selecteduniquepettohatch = input
        end
    end)
    Section14:AddToggle("Auto Hatch",function(state)
        if state then 
            hatchUniquePets = true 
            while hatchUniquePets == true do wait() 
                local args = { 
                    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selecteduniquepettohatch)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
        else 
            hatchUniquePets = false 
        end  
    end)
    Section15:AddSection("Hatch Omega Pets")
    Section15:AddDropdown("Select Pet", {"Soul Fusion Dog","Hypersonic Pegasus","Dark Soul Birdie","Eternal Nebula Dragon","Shadows Edge Kitty","Ultimate Overdrive Bunny","Swift Samurai"}, function(input)
        if input == "Soul Fusion Dog" then
            selectedomegapettohatch = input
        elseif input == "Hypersonic Pegasus" then
            selectedomegapettohatch = input
        elseif input == "Dark Soul Birdie" then
            selectedomegapettohatch = input
        elseif input == "Eternal Nebula Dragon" then
            selectedomegapettohatch = input
        elseif input == "Shadows Edge Kitty" then
            selectedomegapettohatch = input
        elseif input == "Ultimate Overdrive Bunny" then
            selectedomegapettohatch = input
        elseif input == "Swift Samurai" then
            selectedomegapettohatch = input
        end
    end)
    Section15:AddToggle("Auto Hatch",function(state)
        if state then 
            hatchOmegaPets = true 
            while hatchOmegaPets == true do wait() 
                local args = { 
                    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selectedomegapettohatch)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
        else 
            hatchOmegaPets = false 
        end  
    end)
    Section15:Empty()

    -- EvolvePetsTab
    Section16:AddSection("Evolve Basic Pets")
    Section16:AddDropdown("Select Pet", {"Red Bunny","Red Kitty","Blue Bunny","Silver Dog",'Yellow Squeak'}, function(input)
        if input == "Red Bunny" then
            selectedbasicpettoevolve = input
        elseif input == "Red Kitty" then
            selectedbasicpettoevolve = input
        elseif input == "Blue Bunny" then
            selectedbasicpettoevolve = input
        elseif input == "Silver Dog" then
            selectedbasicpettoevolve = input
        elseif input == "Yellow Squeak" then
            selectedbasicpettoevolve = input
        end
    end)
    Section16:AddToggle("Auto Evolve",function(state)
        if state then 
            evolveBasicPets = true 
            while evolveBasicPets == true do wait() 
                local args = {
                    [1] = "evolvePet",
                    [2] = selectedbasicpettoevolve
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
        else 
            evolveBasicPets = false 
        end  
    end)
    Section17:AddSection("Evolve Advanced Pets")
    Section17:AddDropdown("Select Pet", {"Green Vampy","Dark Golem","Pink Butterfly","Yellow Butterfly","Green Golem"}, function(input)
        if input == "Green Vampy" then
            selectedadvancedpettoevolve = input
        elseif input == "Dark Golem" then
            selectedadvancedpettoevolve = input
        elseif input == "Pink Butterfly" then
            selectedadvancedpettoevolve = input
        elseif input == "Yellow Butterfly" then
            selectedadvancedpettoevolve = input
        elseif input == "Green Golem" then
            selectedadvancedpettoevolve = input
        end
    end)
    Section17:AddToggle("Auto Evolve",function(state)
        if state then 
            evolveAdvancedPets = true 
            while evolveAdvancedPets == true do wait() 
                local args = {
                    [1] = "evolvePet",
                    [2] = selectedadvancedpettoevolve
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
        else 
            evolveAdvancedPets = false 
        end  
    end)
    Section18:AddSection("Evolve Rare Pets")
    Section18:AddDropdown("Select Pet", {"Purple Pegasus","Golden Angel","Orange Pegasus","Orange Falcon","Blue Firecaster","White Phoenix","Red Phoenix","Red Firecaster"}, function(input)
        if input == "Purple Pegasus" then
            selectedrarepettoevolve = input
        elseif input == "Golden Angel" then
            selectedrarepettoevolve = input
        elseif input == "Orange Pegasus" then
            selectedrarepettoevolve = input
        elseif input == "Orange Falcon" then
            selectedrarepettoevolve = input
        elseif input == "Blue Firecaster" then
            selectedrarepettoevolve = input
        elseif input == "White Phoenix" then
            selectedrarepettoevolve = input
        elseif input == "Red Phoenix" then
            selectedrarepettoevolve = input
        elseif input == "Red Firecaster" then
            selectedrarepettoevolve = input
        end
    end)
    Section18:AddToggle("Auto Evolve",function(state)
        if state then 
            evolveRarePets = true 
            while evolveRarePets == true do wait() 
                local args = {
                    [1] = "evolvePet",
                    [2] = selectedrarepettoevolve
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
        else 
            evolveRarePets = false 
        end  
    end)
    Section19:AddSection("Evolve Epic Pets")
    Section19:AddDropdown("Select Pet", {"Golden Phoenix","Green Firecaster","Voltaic Falcon","Blue Phoenix","Divine Pegasus"}, function(input)
        if input == "Golden Phoenix" then
            selectedepicpettoevolve = input
        elseif input == "Green Firecaster" then
            selectedepicpettoevolve = input
        elseif input == "Voltaic Falcon" then
            selectedepicpettoevolve = input
        elseif input == "Blue Phoenix" then
            selectedepicpettoevolve = input
        elseif input == "Divine Pegasus" then
            selectedepicpettoevolve = input
        end
    end)
    Section19:AddToggle("Auto Evolve",function(state)
        if state then 
            evolveEpicPets = true 
            while evolveEpicPets == true do wait() 
                local args = {
                    [1] = "evolvePet",
                    [2] = selectedepicpettoevolve
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
        else 
            evolveEpicPets = false 
        end  
    end)
    Section20:AddSection("Evolve Unique Pets")
    Section20:AddDropdown("Select Pet", {"Flaming Hedgehog","Electro Golem","Voltaic Falcon","Void Dragon","Ultra Birdie","Quantum Dragon","Tundra Dragon","Magic Butterfly","Maestro Dog","Golden Viking","Speedy Sensei"}, function(input)
        if input == "Flaming Hedgehog" then
            selecteduniquepettoevolve = input
        elseif input == "Electro Golem" then
            selecteduniquepettoevolve = input
        elseif input == "Voltaic Falcon" then
            selecteduniquepettoevolve = input
        elseif input == "Void Dragon" then
            selecteduniquepettoevolve = input
        elseif input == "Ultra Birdie" then
            selecteduniquepettoevolve = input
        elseif input == "Quantum Dragon" then
            selecteduniquepettoevolve = input
        elseif input == "Tundra Dragon" then
            selecteduniquepettoevolve = input
        elseif input == "Magic Butterfly" then
            selecteduniquepettoevolve = input
        elseif input == "Maestro Dog" then
            selecteduniquepettoevolve = input
        elseif input == "Golden Viking" then
            selecteduniquepettoevolve = input
        elseif input == "Speedy Sensei" then
            selecteduniquepettoevolve = input
        end
    end)
    Section20:AddToggle("Auto Evolve",function(state)
        if state then 
            evolveUniquePets = true 
            while evolveUniquePets == true do wait() 
                local args = {
                    [1] = "evolvePet",
                    [2] = selecteduniquepettoevolve
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
        else 
            evolveUniquePets = false 
        end  
    end)
    Section21:AddSection("Evolve Omega Pets")
    Section21:AddDropdown("Select Pet", {"Soul Fusion Dog","Hypersonic Pegasus","Dark Soul Birdie","Eternal Nebula Dragon","Shadows Edge Kitty","Ultimate Overdrive Bunny","Swift Samurai"}, function(input)
        if input == "Soul Fusion Dog" then
            selectedomegapettoevolve = input
        elseif input == "Hypersonic Pegasus" then
            selectedomegapettoevolve = input
        elseif input == "Dark Soul Birdie" then
            selectedomegapettoevolve = input
        elseif input == "Eternal Nebula Dragon" then
            selectedomegapettoevolve = input
        elseif input == "Shadows Edge Kitty" then
            selectedomegapettoevolve = input
        elseif input == "Ultimate Overdrive Bunny" then
            selectedomegapettoevolve = input
        elseif input == "Swift Samurai" then
            selectedomegapettoevolve = input
        end
    end)
    Section21:AddToggle("Auto Evolve",function(state)
        if state then 
            evolveOmegaPets = true 
            while evolveOmegaPets == true do wait() 
                local args = {
                    [1] = "evolvePet",
                    [2] = selectedomegapettoevolve
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
        else 
            evolveOmegaPets = false 
        end  
    end)
    Section21:Empty()

    -- CrystalsTab
    Section22:AddSection("City Crystals")
    Section22:AddToggle("Red Crystal",function(state)
        if state then 
            redCrystal = true 
            while redCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Red Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            redCrystal = false 
        end 
    end)
    Section22:AddToggle("Lightning Crystal",function(state)
        if state then 
            lightningCrystal = true 
            while lightningCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Lightning Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            lightningCrystal = false 
        end 
    end)
    Section22:AddToggle("Yellow Crystal",function(state)
        if state then 
            yellowCrystal = true 
            while yellowCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Yellow Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            yellowCrystal = false 
        end 
    end)
    Section22:AddToggle("Purple Crystal",function(state)
        if state then 
            purpleCrystal = true 
            while purpleCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Purple Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            purpleCrystal = false 
        end 
    end)
    Section22:AddToggle("Blue Crystal",function(state)
        if state then 
            blueCrystal = true 
            while blueCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Blue Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            blueCrystal = false 
        end 
    end)
    Section22:AddToggle("Snow Crystal",function(state)
        if state then 
            snowCrystal = true 
            while snowCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Snow Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            snowCrystal = false 
        end
    end)
    Section22:AddToggle("Lava Crystal",function(state)
        if state then 
            lavaCrystal = true 
            while lavaCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Lava Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            lavaCrystal = false 
        end 
    end)
    Section22:AddToggle("Inferno Crystal",function(state)
        if state then 
            infernoCrystal = true 
            while infernoCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Inferno Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            infernoCrystal = false 
        end 
    end)
    Section22:AddToggle("Electro Legends Crystal",function(state)
        if state then 
            electroLegendsCrystal = true 
            while electroLegendsCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Electro Legends Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            electroLegendsCrystal = false 
        end 
    end)
    Section22:AddToggle("Jungle Crystal",function(state)
        if state then 
        jungleCrystal = true 
        while jungleCrystal == true do wait() 
            local args = {
                [1] = "openCrystal",
                [2] = "Jungle Crystal"
            }
            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
        end 
        else 
        jungleCrystal = false 
        end 
    end)
    Section23:AddSection("Space Crystals")
    Section23:AddToggle("Space Crystal",function(state)
        if state then 
            spaceCrystal = true 
            while spaceCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Space Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            spaceCrystal = false 
        end 
    end)
    Section23:AddToggle("Alien Crystal",function(state)
        if state then 
            alienCrystal = true 
            while alienCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Alien Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            alienCrystal = false 
        end 
    end)
    Section24:AddSection("Desert Crystals")
    Section24:AddToggle("Desert Crystal",function(state)
        if state then 
            desertCrystal = true 
            while desertCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Desert Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            desertCrystal = false 
        end 
    end)
    Section24:AddToggle("Electro Crystal",function(state)
        if state then 
            electroCrystal = true 
            while electroCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Electro Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            electroCrystal = false 
        end 
    end)

    -- UltimatesTab
    Section55:AddSection("Buy Rebirth Pets")
    Section55:AddButton("Magzor",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "Magzor"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))       
    end)
    Section55:AddButton("Crowd Surfer",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "Crowd Surfer"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))       
    end)
    Section55:AddButton("Sorenzo",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "Sorenzo"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))       
    end)

    Section56:AddSection("Buy Game Upgrades")
    Section56:AddButton("x2 Trail Boosts",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "x2 Trail Boosts"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))
    end)
    Section56:AddButton("+1 Pet Slot",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "+1 Pet Slot"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))
    end)
    Section56:AddButton("+10 Item Capacity",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "+10 Item Capacity"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))
    end)
    Section56:AddButton("+1 Daily Spin",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "+1 Daily Spin"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))
    end)
    Section56:AddButton("x2 Chest Rewards",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "x2 Chest Rewards"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))
    end)
    Section56:AddButton("x2 Quest Rewards",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "x2 Quest Rewards"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))
    end)

    Section57:AddSection("Buy Enhancements")
    Section57:AddButton("Gem Booster",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "Gem Booster"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))
    end)
    Section57:AddButton("Step Booster",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "Step Booster"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))
    end)
    Section57:AddButton("Infernal Gems",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "Infernal Gems"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))
    end)
    Section57:AddButton("Ethereal Orbs",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "Ethereal Orbs"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))
    end)
    Section57:AddButton("Demon Hoops",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "Demon Hoops"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))
    end)
    Section57:AddButton("Divine Rebirth",function()
        local args = {
            [1] = "upgradeUltimate",
            [2] = "Divine Rebirth"
        }
        
        game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("ultimatesRemote"):InvokeServer(unpack(args))
    end)

    -- MiscellaneousTab
    Section25:AddSection("City Teleports")
    Section25:AddDropdown("Select Destination", {"City","Snow City","Magma City","Legends Highway","Speed Jungle"}, function(input)
        if input == "City" then
            citiesteleport = input
        elseif input == "Snow City" then
            citiesteleport = input
        elseif input == "Magma City" then
            citiesteleport = input
        elseif input == "Legends Highway" then
            citiesteleport = input
        elseif input == "Speed Jungle" then
            citiesteleport = input
        end
    end)
    Section25:AddButton("Teleport", function()
        if citiesteleport == "City" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828, 74.8522873, 3099.03394, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
        elseif citiesteleport == "Snow City" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.13867, 74.8522873, 3782.69385, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        elseif citiesteleport == "Magma City" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.9688, 232.791656, 4898.62842, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
        elseif citiesteleport == "Legends Highway" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.8711, 232.791656, 5907.62793, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
        elseif citiesteleport == "Speed Jungle" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15274,399,5576)
        end
    end)
    Section25:AddSection("Other Teleports")
    Section25:AddDropdown("Select Destination", {"Desert Race","Magma Race","Grassland Race","Space World","Desert World"}, function(input)
        if input == "Desert Race" then
            otherteleport = input
        elseif input == "Magma Race" then
            otherteleport = input
        elseif input == "Grassland Race" then
            otherteleport = input
        elseif input == "Space World" then
            otherteleport = input
        elseif input == "Desert World" then
            otherteleport = input
        end
    end)
    Section25:AddButton("Teleport", function()
        if otherteleport == "Desert Race" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48.3109131, 36.3147125, -8680.45312, -1, 0, 0, 0, 1, 0, 0, 0, -1)
        elseif otherteleport == "Magma Race" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1001.33118, 36.3147125, -10986.2178, -0.996191859, 0, -0.0871884301, 0, 1, 0, 0.0871884301, 0, -0.996191859)
        elseif otherteleport == "Grassland Race" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1686.07495, 36.3147125, -5946.63428, -0.984812617, 0, 0.173621148, 0, 1, 0, -0.173621148, 0, -0.984812617)
        elseif otherteleport == "Space World" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-331.764069, 5.45415115, 585.201721, -1.03712082e-05, 0.93968749, 0.34203434, -1, -1.03712082e-05, -1.81794167e-06, 1.81794167e-06, -0.34203434, 0.939687431)
        elseif otherteleport == "Desert World" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2519.90063, 15.7072296, 4355.74072, 1.69873238e-05, 0.93922013, 0.343315423, -0.99999994, 1.69873238e-05, 2.9951334e-06, -2.9951334e-06, -0.343315423, 0.93922019)
        end
    end)
    Section25:AddSection("Space Teleports")
    Section25:AddDropdown("Select Destination", {"+1000 Hoop","Starway Race"}, function(input)
        if input == "+1000 Hoop" then
            spaceteleport = input
        elseif input == "Starway Race" then
            spaceteleport = input
        end
    end)
    Section25:AddButton("Teleport", function()
        if spaceteleport == "+1000 Hoop" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-477,156,755)
        elseif spaceteleport == "Starway Race" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5018,29,-4779)
        end
    end)
    Section25:AddSection("Desert Teleports")
    Section25:AddDropdown("Select Destination", {"+8000 Hoop","Speedway Race","Second Island"}, function(input)
        if input == "+8000 Hoop" then
            desertteleport = input
        elseif input == "Speedway Race" then
            desertteleport = input
        elseif input == "Second Island" then
            desertteleport = input
        end
    end)
    Section25:AddButton("Teleport", function()
        if desertteleport == "+8000 Hoop" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-3386,259,16916)
        elseif desertteleport == "Speedway Race" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(663,28,9767)
        elseif desertteleport == "Second Island" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10517,621,-5)
        end
    end)
    Section26:AddSection("World Teleport")
    Section26:AddDropdown("Select Destination", {"City","Space","Desert"}, function(dtp)
        if dtp == "City" then
            premiumTeleport = dtp
        elseif dtp == "Space" then
            premiumTeleport = dtp
        elseif dtp == "Desert" then
            premiumTeleport = dtp
        end
    end)
    Section26:AddButton("Teleport", function()
        if premiumTeleport == "City" then
            game:GetService("TeleportService"):Teleport(3101667897)
        elseif premiumTeleport == "Space" then
            game:GetService("TeleportService"):Teleport(3232996272)
        elseif premiumTeleport == "Desert" then
            game:GetService("TeleportService"):Teleport(3276265788)
        end
    end)

    Section26:AddSection("Server Navigation")
    Section26:AddDropdown("Select Navigation Type", {"Lowest Player Count","Serverhop","Rejoin"}, function(ptp)
        if ptp == "Lowest Player Count" then
            premiumServerTeleport = ptp
        elseif ptp == "Serverhop" then
            premiumServerTeleport = ptp
        elseif ptp == "Rejoin" then
            premiumServerTeleport = ptp
        end
    end)
    Section26:AddButton("Navigate", function()
        if premiumServerTeleport == "Lowest Player Count" then
            LowestPlayer()
        elseif premiumServerTeleport == "Serverhop" then
            Serverhop()
        elseif premiumServerTeleport == "Rejoin" then
            Rejoin()
        end
    end)
    Section26:Empty()
else
    -- Notification
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "EchoUI Ascend",
        Text = "Thanks for using EchoUI!", 
        Icon = "rbxassetid://82968618599492",
        Duration = 7
    })
    wait(1.5)
    game:GetService("StarterGui"):SetCore("SendNotification",{
        Title = "Subscription",
        Text = "Bliss Inactive!", 
        Icon = "rbxassetid://82968618599492",
        Duration = 7
    })

    -- Window
    local Window = Echo:CreateWindow()
    
    -- Tabs
    local GeneralTab = Window:CreateTab("General")
    local AutoFarmTab = Window:CreateTab("Farming")
    local HatchPetsTab = Window:CreateTab("Hatch")
    local EvolvePetsTab = Window:CreateTab("Evolve")
    local CrystalsTab = Window:CreateTab("Crystals")
    local MiscellaneousTab = Window:CreateTab("Misc")

    -- UI
    local Section0 = GeneralTab:CreateSection()

    -- General
    local Section1 = GeneralTab:CreateSection()
    local Section2 = GeneralTab:CreateSection()
    local Section3 = GeneralTab:CreateSection()
    local Section4 = GeneralTab:CreateSection()
    local Section40 = GeneralTab:CreateSection()
    local Section5 = GeneralTab:CreateSection()
    local Section6 = GeneralTab:CreateSection()

    -- Auto Farm
    local Section9 = AutoFarmTab:CreateSection()
    local Section7 = AutoFarmTab:CreateSection()
    local Section8 = AutoFarmTab:CreateSection()

    -- Hatch Pets
    local Section10 = HatchPetsTab:CreateSection()
    local Section11 = HatchPetsTab:CreateSection()
    local Section12 = HatchPetsTab:CreateSection()
    local Section13 = HatchPetsTab:CreateSection()
    local Section14 = HatchPetsTab:CreateSection()
    local Section15 = HatchPetsTab:CreateSection()

    -- Evolve Pets
    local Section16 = EvolvePetsTab:CreateSection()
    local Section17 = EvolvePetsTab:CreateSection()
    local Section18 = EvolvePetsTab:CreateSection()
    local Section19 = EvolvePetsTab:CreateSection()
    local Section20 = EvolvePetsTab:CreateSection()
    local Section21 = EvolvePetsTab:CreateSection()

    -- Crystals
    local Section22 = CrystalsTab:CreateSection()
    local Section23 = CrystalsTab:CreateSection()
    local Section24 = CrystalsTab:CreateSection()

    -- Misc
    local Section25 = MiscellaneousTab:CreateSection()

    -- UI
    Section0:AddSection("UI")
    Section0:AddResizeToggle("Resize", function()
    end)

    -- GeneralTab
    Section1:AddSection("Race Farm")
    Section1:AddDropdown("Race Type", {"Basic","Advanced"}, function(ddrace)
        if ddrace == "Basic" then
            race = "V1"
        elseif ddrace == "Advanced" then
            race = "V2"
        end
    end)
    Section1:AddToggle("Auto Racing", function(state)
        if state then 
            if race == "V1" then
                autoRaceV1 = true 
                while autoRaceV1 do 
                    wait()
                    local args = {
                        [1] = "joinRace"
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("raceEvent"):FireServer(unpack(args))
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48.3109131, 36.3147125, -8680.45312, -1, 0, 0, 0, 1, 0, 0, 0, -1)
                    wait(0.4)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1686.07495, 36.3147125, -5946.63428, -0.984812617, 0, 0.173621148, 0, 1, 0, -0.173621148, 0, -0.984812617)
                    wait(0.4)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1001.33118, 36.3147125, -10986.2178, -0.996191859, 0, -0.0871884301, 0, 1, 0, 0.0871884301, 0, -0.996191859)
                    wait(0.4)
                end 
            elseif race == "V2" then
                _G.AR = true
            end
        else 
            _G.AR = false 
            autoRaceV1 = false 
        end
    end)
    Section2:AddSection("Hoops Farm")
    Section2:AddButton("Clean Hoops", function()
        local player = game.Players.LocalPlayer
        local hoopGui = player:WaitForChild("PlayerGui"):FindFirstChild("hoopGui")
        if hoopGui then
            local screenGradient = hoopGui:FindFirstChild("screenGradient")
            if screenGradient then
                screenGradient:Destroy()
            end
        end
        local hoopsFolder = game.Workspace:FindFirstChild("Hoops")
        if hoopsFolder then
            for _, hoop in ipairs(hoopsFolder:GetChildren()) do
                local hoopParticle = hoop:FindFirstChild("hoopParticle")
                if hoopParticle then
                    hoopParticle:Destroy()
                end
                local hoopSound = hoop:FindFirstChild("hoopSound")
                if hoopSound then
                    hoopSound:Destroy()
                end
                local playerParticle = hoop:FindFirstChild("playerParticle")
                if playerParticle then
                    playerParticle:Destroy()
                end
            end
        end 
    end)
    Section2:AddToggle("Auto Hoops", function(state)
        if state then 
            autoHoopV1 = true 
            while autoHoopV1 do 
                wait()
                for i,v in pairs(game:GetService("Workspace").Hoops:GetChildren()) do
                    firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 0)
                    wait()
                    firetouchinterest(v, game.Players.LocalPlayer.Character.HumanoidRootPart, 1)
                end
            end
        else 
            autoHoopV1 = false 
        end
    end)    
    Section3:AddSection("Rebirth Farm")
    Section3:AddBox("Enter Rebirth Cooldown", function(input)
        local inputNumber = tonumber(input)
        if inputNumber then
            autoRebirthCooldown = inputNumber
        else
            autoRebirthCooldown = 0.5
        end
    end)
    Section3:AddToggle("Auto Rebirth", function(state)
        if state then 
            autoRebirth = true
            while autoRebirth do 
                wait()
                game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
                wait(autoRebirthCooldown)
            end 
        else 
            autoRebirth = false
        end 
    end)
    Section4:AddSection("Rebirth Target Farm")
    Section4:AddBox("Rebirth Target", function(rebamountbb)
        rebamount = tonumber(rebamountbb) or 0
    end)
    Section4:AddBox("Enter Rebirth Cooldown", function(input)
        local inputNumber = tonumber(input)
        if inputNumber then
            autoRebirthStoppingPointCooldown = inputNumber
        else
            autoRebirthStoppingPointCooldown = 0.5
        end
    end)
    Section4:AddToggle("Auto Rebirth", function(state)
        if state then 
            autoRebirthStoppingPoint = true
            while autoRebirthStoppingPoint do 
                wait()
                local success, err = pcall(function()
                    local rebirthsBefore = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                    game:GetService("ReplicatedStorage").rEvents.rebirthEvent:FireServer("rebirthRequest")
                    wait(autoRebirthStoppingPointCooldown)
                    local rebirthsAfter = game.Players.LocalPlayer.leaderstats.Rebirths.Value
                    if rebirthsAfter > rebirthsBefore then
                        rebirthSuccessful = true
                        wait(autoRebirthStoppingPointCooldown)
                        rebirthSuccessful = false
                    end
                    if rebirthsAfter >= rebamount then
                        autoRebirthStoppingPoint = false
                        primaryAutoOrbActive = false
                        secondaryAutoOrbActive = false
                    end
                end)
                if not success then
                    autoRebirthStoppingPoint = false
                    primaryAutoOrbActive = false
                    secondaryAutoOrbActive = false
                end
            end 
        else 
            autoRebirthStoppingPoint = false
            primaryAutoOrbActive = false
            secondaryAutoOrbActive = false
        end 
    end)
    Section40:AddSection("Ping Optimizer")
    Section40:AddBox("Minimum Ping", function(input)
        minPing = tonumber(input) or 450
    end)
    Section40:AddBox("Maximum Ping", function(input)
        maxPing = tonumber(input) or 2500
    end)
    Section40:AddToggle("Enable", function(state)
        pingMonitorActive = state
        if pingMonitorActive then
            spawn(function()
                while pingMonitorActive do
                    local ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
                    ping = tonumber(string.match(ping, "%d+"))
                    if ping and maxPing and ping > maxPing then
                        repeat
                            wait(1)
                            ping = tonumber(string.match(
                                game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(),
                                "%d+"
                            ))
                        until (ping and ping < minPing) or not pingMonitorActive
                        if pingMonitorActive then
                            print("Ping stabilized!")
                        end
                    end    
                    wait(0.5)
                end
            end)
        end
    end)
    Section5:AddSection("Miscellaneous")
    Section5:AddToggle("Connection Enhancer", function(state)
        if state then
            connectionEnhancer = true
            while connectionEnhancer == true do wait()
                game:GetService("NetworkClient"):SetOutgoingKBPSLimit(800000)
                game:GetService("NetworkClient"):SetIncomingKBPSLimit(800000)
                wait(5)
            end
        else
            connectionEnhancer = false
        end
    end)
    Section5:AddToggle("Bull", function(state)
        if state then 
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local newProperties = PhysicalProperties.new(30, 0.3, 0.5)
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CustomPhysicalProperties = newProperties
                end
            end
        else 
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("BasePart") then
                    part.CustomPhysicalProperties = nil
                end
            end
        end 
    end)
    Section5:AddToggle("Anti Idle", function(state)
        if state then
            antiKickConnection = game:service'Players'.LocalPlayer.Idled:connect(function()
                game:GetService('VirtualUser'):CaptureController()
                game:GetService('VirtualUser'):ClickButton2(Vector2.new())
            end)
        else
            if antiKickConnection then
                antiKickConnection:Disconnect()
                antiKickConnection = nil
            end
        end 
    end)
    
    Section6:AddSection("Trading")
    Section6:AddToggle("Enable Trading", function(state)
        if state then 
            local args = { 
                [1] = "enableTrading" 
            }
            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("tradingEvent"):FireServer(unpack(args)) 
        else 
            local args = { 
                [1] = "disableTrading" 
             }
            game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("tradingEvent"):FireServer(unpack(args)) 
        end 
    end)
    Section6:AddBox("Target Username", function(input)
        usernameTrade = input
    end)
    Section6:AddButton("Send Trade", function()
        if usernameTrade and usernameTrade ~= "" then
            local playerTrade = game:GetService("Players")[usernameTrade]
            if playerTrade then
                local args = {
                    [1] = "sendTradeRequest",
                    [2] = playerTrade
                }
                game:GetService("ReplicatedStorage").rEvents.tradingEvent:FireServer(unpack(args))
            end
        end
    end)

    -- AutoFarmTab
    Section9:AddSection("Farming Configuration")
    Section9:AddBox("Enter Orb Cooldown", function(input)
        local inputNumber = tonumber(input)
        if inputNumber then
            orbCooldown = inputNumber / 100
        else
            orbCooldown = 0.25
        end
    end)

    Section7:AddSection("Primary Orb Auto Farm")
    Section7:AddDropdown("Select Orb", {"Yellow Orb","Orange Orb","Blue Orb","Red Orb","Ethereal Orb","Gem","Infernal Gem"}, function(ddmorbs)
        if ddmorbs == "Yellow Orb" then
            optionOrb = "Yellow Orb"
        elseif ddmorbs == "Orange Orb" then
            optionOrb = "Orange Orb"
        elseif ddmorbs == "Blue Orb" then
            optionOrb = "Blue Orb"
        elseif ddmorbs == "Red Orb" then
            optionOrb = "Red Orb"
        elseif ddmorbs == "Ethereal Orb" then
            optionOrb = "Ethereal Orb"
        elseif ddmorbs == "Gem" then
            optionOrb = "Gem"
        elseif ddmorbs == "Infernal Gem" then
            optionOrb = "Infernal Gem"
        end
    end)
    Section7:AddDropdown("Select City", {"City","Snow City","Magma City","Legends Highway","Speed Jungle","Space","Desert"}, function(ddmcities)
        if ddmcities == "City" then
            optionCity = "City"
        elseif ddmcities == "Snow City" then
            optionCity = "Snow City"
        elseif ddmcities == "Magma City" then
            optionCity = "Magma City"
        elseif ddmcities == "Legends Highway" then
            optionCity = "Legends Highway"
        elseif ddmcities == "Speed Jungle" then
            optionCity = "Speed Jungle"
        elseif ddmcities == "Space" then
            optionCity = "Space"
        elseif ddmcities == "Desert" then
            optionCity = "Desert"
        end
    end)
    Section7:AddDropdown("Select Orb Multiplier", {"x50 Orbs","x100 Orbs","x150 Orbs","x200 Orbs","x250 Orbs"}, function(ddmspeed)
        if ddmspeed == "x50 Orbs" then
            optionSpeed = 50
        elseif ddmspeed == "x100 Orbs" then
            optionSpeed = 100
        elseif ddmspeed == "x150 Orbs" then
            optionSpeed = 150
        elseif ddmspeed == "x200 Orbs" then
            optionSpeed = 200
        elseif ddmspeed == "x250 Orbs" then
            optionSpeed = 250
        end
    end)
    Section7:AddToggle("Auto Orb", function(state)
        if state then 
            primaryAutoOrbActive = true
            while primaryAutoOrbActive do 
                if not primaryAutoOrbActive then break end
                local batchSize = math.ceil(optionSpeed / 5)
                local remainingOrbs = optionSpeed
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", optionOrb, optionCity)
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(orbCooldown)
            end 
        else 
            primaryAutoOrbActive = false
        end
    end)
    Section8:AddSection("Secondary Orb Auto Farm")
    Section8:AddDropdown("Select Orb", {"Yellow Orb","Orange Orb","Blue Orb","Red Orb","Ethereal Orb","Gem","Infernal Gem"}, function(ddmorbs)
        if ddmorbs == "Yellow Orb" then
            optionOrb2 = "Yellow Orb"
        elseif ddmorbs == "Orange Orb" then
            optionOrb2 = "Orange Orb"
        elseif ddmorbs == "Blue Orb" then
            optionOrb2 = "Blue Orb"
        elseif ddmorbs == "Red Orb" then
            optionOrb2 = "Red Orb"
        elseif ddmorbs == "Ethereal Orb" then
            optionOrb2 = "Ethereal Orb"
        elseif ddmorbs == "Gem" then
            optionOrb2 = "Gem"
        elseif ddmorbs == "Infernal Gem" then
            optionOrb2 = "Infernal Gem"
        end
    end)
    Section8:AddDropdown("Select City", {"City","Snow City","Magma City","Legends Highway","Speed Jungle","Space","Desert"}, function(ddmcities)
        if ddmcities == "City" then
            optionCity2 = "City"
        elseif ddmcities == "Snow City" then
            optionCity2 = "Snow City"
        elseif ddmcities == "Magma City" then
            optionCity2 = "Magma City"
        elseif ddmcities == "Legends Highway" then
            optionCity2 = "Legends Highway"
        elseif ddmcities == "Speed Jungle" then
            optionCity2 = "Speed Jungle"
        elseif ddmcities == "Space" then
            optionCity2 = "Space"
        elseif ddmcities == "Desert" then
            optionCity2 = "Desert"
        end
    end)
    Section8:AddDropdown("Select Orb Multiplier", {"x50 Orbs","x100 Orbs","x150 Orbs","x200 Orbs","x250 Orbs","x300 Orbs"}, function(ddmspeed)
        if ddmspeed == "x50 Orbs" then
            optionSpeed2 = 50
        elseif ddmspeed == "x100 Orbs" then
            optionSpeed2 = 100
        elseif ddmspeed == "x150 Orbs" then
            optionSpeed2 = 150
        elseif ddmspeed == "x200 Orbs" then
            optionSpeed2 = 200
        elseif ddmspeed == "x250 Orbs" then
            optionSpeed2 = 250
        elseif ddmspeed == "x300 Orbs" then
            optionSpeed2 = 300
        end
    end)
    Section8:AddToggle("Auto Orb", function(state)
        if state then 
            secondaryAutoOrbActive = true
            while secondaryAutoOrbActive do 
                if not secondaryAutoOrbActive then break end
                local batchSize = math.ceil(optionSpeed2 / 5)
                local remainingOrbs = optionSpeed2
                local startTime = tick()
                while remainingOrbs > 0 do
                    local currentBatch = math.min(batchSize, remainingOrbs)
                    for i = 1, currentBatch do
                        game:GetService('ReplicatedStorage').rEvents.orbEvent:FireServer("collectOrb", optionOrb2, optionCity2)
                    end
                    remainingOrbs = remainingOrbs - currentBatch
                    wait(0.11)
                end
                wait(orbCooldown)
            end 
        else 
            secondaryAutoOrbActive = false
        end
    end)
    Section8:Empty()

    -- HatchPetsTab
    Section10:AddSection("Hatch Basic Pets")
    Section10:AddDropdown("Select Pet", {"Red Bunny","Red Kitty","Blue Bunny","Silver Dog",'Yellow Squeak'}, function(input)
        if input == "Red Bunny" then
            selectedbasicpettohatch = input
        elseif input == "Red Kitty" then
            selectedbasicpettohatch = input
        elseif input == "Blue Bunny" then
            selectedbasicpettohatch = input
        elseif input == "Silver Dog" then
            selectedbasicpettohatch = input
        elseif input == "Yellow Squeak" then
            selectedbasicpettohatch = input
        end
    end)
    Section10:AddToggle("Auto Hatch",function(state)
        if state then 
            hatchBasicPets = true 
            while hatchBasicPets == true do wait() 
                local args = { 
                    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selectedbasicpettohatch)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
        else 
            hatchBasicPets = false 
        end  
    end)
    Section11:AddSection("Hatch Advanced Pets")
    Section11:AddDropdown("Select Pet", {"Green Vampy","Dark Golem","Pink Butterfly","Yellow Butterfly","Green Golem"}, function(input)
        if input == "Green Vampy" then
            selectedadvancedpettohatch = input
        elseif input == "Dark Golem" then
            selectedadvancedpettohatch = input
        elseif input == "Pink Butterfly" then
            selectedadvancedpettohatch = input
        elseif input == "Yellow Butterfly" then
            selectedadvancedpettohatch = input
        elseif input == "Green Golem" then
            selectedadvancedpettohatch = input
        end
    end)
    Section11:AddToggle("Auto Hatch",function(state)
        if state then 
            hatchAdvancedPets = true 
            while hatchAdvancedPets == true do wait() 
                local args = { 
                    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selectedadvancedpettohatch)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
        else 
            hatchAdvancedPets = false 
        end  
    end)
    Section12:AddSection("Hatch Rare Pets")
    Section12:AddDropdown("Select Pet", {"Purple Pegasus","Golden Angel","Orange Pegasus","Orange Falcon","Blue Firecaster","White Phoenix","Red Phoenix","Red Firecaster"}, function(input)
        if input == "Purple Pegasus" then
            selectedrarepettohatch = input
        elseif input == "Golden Angel" then
            selectedrarepettohatch = input
        elseif input == "Orange Pegasus" then
            selectedrarepettohatch = input
        elseif input == "Orange Falcon" then
            selectedrarepettohatch = input
        elseif input == "Blue Firecaster" then
            selectedrarepettohatch = input
        elseif input == "White Phoenix" then
            selectedrarepettohatch = input
        elseif input == "Red Phoenix" then
            selectedrarepettohatch = input
        elseif input == "Red Firecaster" then
            selectedrarepettohatch = input
        end
    end)
    Section12:AddToggle("Auto Hatch",function(state)
        if state then 
            hatchRarePets = true 
            while hatchRarePets == true do wait() 
                local args = { 
                    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selectedrarepettohatch)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
        else 
            hatchRarePets = false 
        end  
    end)
    Section13:AddSection("Hatch Epic Pets")
    Section13:AddDropdown("Select Pet", {"Golden Phoenix","Green Firecaster","Voltaic Falcon","Blue Phoenix","Divine Pegasus"}, function(input)
        if input == "Golden Phoenix" then
            selectedepicpettohatch = input
        elseif input == "Green Firecaster" then
            selectedepicpettohatch = input
        elseif input == "Voltaic Falcon" then
            selectedepicpettohatch = input
        elseif input == "Blue Phoenix" then
            selectedepicpettohatch = input
        elseif input == "Divine Pegasus" then
            selectedepicpettohatch = input
        end
    end)
    Section13:AddToggle("Auto Hatch",function(state)
        if state then 
            hatchEpicPets = true 
            while hatchEpicPets == true do wait() 
                local args = { 
                    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selectedepicpettohatch)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
        else 
            hatchEpicPets = false 
        end  
    end)
    Section14:AddSection("Hatch Unique Pets")
    Section14:AddDropdown("Select Pet", {"Flaming Hedgehog","Electro Golem","Voltaic Falcon","Void Dragon","Ultra Birdie","Quantum Dragon","Tundra Dragon","Magic Butterfly","Maestro Dog","Golden Viking","Speedy Sensei"}, function(input)
        if input == "Flaming Hedgehog" then
            selecteduniquepettohatch = input
        elseif input == "Electro Golem" then
            selecteduniquepettohatch = input
        elseif input == "Voltaic Falcon" then
            selecteduniquepettohatch = input
        elseif input == "Void Dragon" then
            selecteduniquepettohatch = input
        elseif input == "Ultra Birdie" then
            selecteduniquepettohatch = input
        elseif input == "Quantum Dragon" then
            selecteduniquepettohatch = input
        elseif input == "Tundra Dragon" then
            selecteduniquepettohatch = input
        elseif input == "Magic Butterfly" then
            selecteduniquepettohatch = input
        elseif input == "Maestro Dog" then
            selecteduniquepettohatch = input
        elseif input == "Golden Viking" then
            selecteduniquepettohatch = input
        elseif input == "Speedy Sensei" then
            selecteduniquepettohatch = input
        end
    end)
    Section14:AddToggle("Auto Hatch",function(state)
        if state then 
            hatchUniquePets = true 
            while hatchUniquePets == true do wait() 
                local args = { 
                    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selecteduniquepettohatch)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
        else 
            hatchUniquePets = false 
        end  
    end)
    Section15:AddSection("Hatch Omega Pets")
    Section15:AddDropdown("Select Pet", {"Soul Fusion Dog","Hypersonic Pegasus","Dark Soul Birdie","Eternal Nebula Dragon","Shadows Edge Kitty","Ultimate Overdrive Bunny","Swift Samurai"}, function(input)
        if input == "Soul Fusion Dog" then
            selectedomegapettohatch = input
        elseif input == "Hypersonic Pegasus" then
            selectedomegapettohatch = input
        elseif input == "Dark Soul Birdie" then
            selectedomegapettohatch = input
        elseif input == "Eternal Nebula Dragon" then
            selectedomegapettohatch = input
        elseif input == "Shadows Edge Kitty" then
            selectedomegapettohatch = input
        elseif input == "Ultimate Overdrive Bunny" then
            selectedomegapettohatch = input
        elseif input == "Swift Samurai" then
            selectedomegapettohatch = input
        end
    end)
    Section15:AddToggle("Auto Hatch",function(state)
        if state then 
            hatchOmegaPets = true 
            while hatchOmegaPets == true do wait() 
                local args = { 
                    [1] = game:GetService("ReplicatedStorage"):WaitForChild("cPetShopFolder"):WaitForChild(selectedomegapettohatch)
                }
                game:GetService("ReplicatedStorage"):WaitForChild("cPetShopRemote"):InvokeServer(unpack(args)) 
            end 
        else 
            hatchOmegaPets = false 
        end  
    end)
    Section15:Empty()

    -- EvolvePetsTab
    Section16:AddSection("Evolve Basic Pets")
    Section16:AddDropdown("Select Pet", {"Red Bunny","Red Kitty","Blue Bunny","Silver Dog",'Yellow Squeak'}, function(input)
        if input == "Red Bunny" then
            selectedbasicpettoevolve = input
        elseif input == "Red Kitty" then
            selectedbasicpettoevolve = input
        elseif input == "Blue Bunny" then
            selectedbasicpettoevolve = input
        elseif input == "Silver Dog" then
            selectedbasicpettoevolve = input
        elseif input == "Yellow Squeak" then
            selectedbasicpettoevolve = input
        end
    end)
    Section16:AddToggle("Auto Evolve",function(state)
        if state then 
            evolveBasicPets = true 
            while evolveBasicPets == true do wait() 
                local args = {
                    [1] = "evolvePet",
                    [2] = selectedbasicpettoevolve
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
        else 
            evolveBasicPets = false 
        end  
    end)
    Section17:AddSection("Evolve Advanced Pets")
    Section17:AddDropdown("Select Pet", {"Green Vampy","Dark Golem","Pink Butterfly","Yellow Butterfly","Green Golem"}, function(input)
        if input == "Green Vampy" then
            selectedadvancedpettoevolve = input
        elseif input == "Dark Golem" then
            selectedadvancedpettoevolve = input
        elseif input == "Pink Butterfly" then
            selectedadvancedpettoevolve = input
        elseif input == "Yellow Butterfly" then
            selectedadvancedpettoevolve = input
        elseif input == "Green Golem" then
            selectedadvancedpettoevolve = input
        end
    end)
    Section17:AddToggle("Auto Evolve",function(state)
        if state then 
            evolveAdvancedPets = true 
            while evolveAdvancedPets == true do wait() 
                local args = {
                    [1] = "evolvePet",
                    [2] = selectedadvancedpettoevolve
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
        else 
            evolveAdvancedPets = false 
        end  
    end)
    Section18:AddSection("Evolve Rare Pets")
    Section18:AddDropdown("Select Pet", {"Purple Pegasus","Golden Angel","Orange Pegasus","Orange Falcon","Blue Firecaster","White Phoenix","Red Phoenix","Red Firecaster"}, function(input)
        if input == "Purple Pegasus" then
            selectedrarepettoevolve = input
        elseif input == "Golden Angel" then
            selectedrarepettoevolve = input
        elseif input == "Orange Pegasus" then
            selectedrarepettoevolve = input
        elseif input == "Orange Falcon" then
            selectedrarepettoevolve = input
        elseif input == "Blue Firecaster" then
            selectedrarepettoevolve = input
        elseif input == "White Phoenix" then
            selectedrarepettoevolve = input
        elseif input == "Red Phoenix" then
            selectedrarepettoevolve = input
        elseif input == "Red Firecaster" then
            selectedrarepettoevolve = input
        end
    end)
    Section18:AddToggle("Auto Evolve",function(state)
        if state then 
            evolveRarePets = true 
            while evolveRarePets == true do wait() 
                local args = {
                    [1] = "evolvePet",
                    [2] = selectedrarepettoevolve
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
        else 
            evolveRarePets = false 
        end  
    end)
    Section19:AddSection("Evolve Epic Pets")
    Section19:AddDropdown("Select Pet", {"Golden Phoenix","Green Firecaster","Voltaic Falcon","Blue Phoenix","Divine Pegasus"}, function(input)
        if input == "Golden Phoenix" then
            selectedepicpettoevolve = input
        elseif input == "Green Firecaster" then
            selectedepicpettoevolve = input
        elseif input == "Voltaic Falcon" then
            selectedepicpettoevolve = input
        elseif input == "Blue Phoenix" then
            selectedepicpettoevolve = input
        elseif input == "Divine Pegasus" then
            selectedepicpettoevolve = input
        end
    end)
    Section19:AddToggle("Auto Evolve",function(state)
        if state then 
            evolveEpicPets = true 
            while evolveEpicPets == true do wait() 
                local args = {
                    [1] = "evolvePet",
                    [2] = selectedepicpettoevolve
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
        else 
            evolveEpicPets = false 
        end  
    end)
    Section20:AddSection("Evolve Unique Pets")
    Section20:AddDropdown("Select Pet", {"Flaming Hedgehog","Electro Golem","Voltaic Falcon","Void Dragon","Ultra Birdie","Quantum Dragon","Tundra Dragon","Magic Butterfly","Maestro Dog","Golden Viking","Speedy Sensei"}, function(input)
        if input == "Flaming Hedgehog" then
            selecteduniquepettoevolve = input
        elseif input == "Electro Golem" then
            selecteduniquepettoevolve = input
        elseif input == "Voltaic Falcon" then
            selecteduniquepettoevolve = input
        elseif input == "Void Dragon" then
            selecteduniquepettoevolve = input
        elseif input == "Ultra Birdie" then
            selecteduniquepettoevolve = input
        elseif input == "Quantum Dragon" then
            selecteduniquepettoevolve = input
        elseif input == "Tundra Dragon" then
            selecteduniquepettoevolve = input
        elseif input == "Magic Butterfly" then
            selecteduniquepettoevolve = input
        elseif input == "Maestro Dog" then
            selecteduniquepettoevolve = input
        elseif input == "Golden Viking" then
            selecteduniquepettoevolve = input
        elseif input == "Speedy Sensei" then
            selecteduniquepettoevolve = input
        end
    end)
    Section20:AddToggle("Auto Evolve",function(state)
        if state then 
            evolveUniquePets = true 
            while evolveUniquePets == true do wait() 
                local args = {
                    [1] = "evolvePet",
                    [2] = selecteduniquepettoevolve
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
        else 
            evolveUniquePets = false 
        end  
    end)
    Section21:AddSection("Evolve Omega Pets")
    Section21:AddDropdown("Select Pet", {"Soul Fusion Dog","Hypersonic Pegasus","Dark Soul Birdie","Eternal Nebula Dragon","Shadows Edge Kitty","Ultimate Overdrive Bunny","Swift Samurai"}, function(input)
        if input == "Soul Fusion Dog" then
            selectedomegapettoevolve = input
        elseif input == "Hypersonic Pegasus" then
            selectedomegapettoevolve = input
        elseif input == "Dark Soul Birdie" then
            selectedomegapettoevolve = input
        elseif input == "Eternal Nebula Dragon" then
            selectedomegapettoevolve = input
        elseif input == "Shadows Edge Kitty" then
            selectedomegapettoevolve = input
        elseif input == "Ultimate Overdrive Bunny" then
            selectedomegapettoevolve = input
        elseif input == "Swift Samurai" then
            selectedomegapettoevolve = input
        end
    end)
    Section21:AddToggle("Auto Evolve",function(state)
        if state then 
            evolveOmegaPets = true 
            while evolveOmegaPets == true do wait() 
                local args = {
                    [1] = "evolvePet",
                    [2] = selectedomegapettoevolve
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("petEvolveEvent"):FireServer(unpack(args)) 
            end 
        else 
            evolveOmegaPets = false 
        end  
    end)
    Section21:Empty()

    -- CrystalsTab
    Section22:AddSection("City Crystals")
    Section22:AddToggle("Red Crystal",function(state)
        if state then 
            redCrystal = true 
            while redCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Red Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            redCrystal = false 
        end 
    end)
    Section22:AddToggle("Lightning Crystal",function(state)
        if state then 
            lightningCrystal = true 
            while lightningCrystal == true do wait() 
                local args = {
                    [1] = "openCrystal",
                    [2] = "Lightning Crystal"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
            end 
        else 
            lightningCrystal = false 
        end 
    end)
    Section22:AddToggle("Yellow Crystal",function(state)
       if state then 
          yellowCrystal = true 
          while yellowCrystal == true do wait() 
             local args = {
                [1] = "openCrystal",
                [2] = "Yellow Crystal"
             }
             game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
          end 
       else 
          yellowCrystal = false 
       end 
    end)
    Section22:AddToggle("Purple Crystal",function(state)
       if state then 
          purpleCrystal = true 
          while purpleCrystal == true do wait() 
             local args = {
                [1] = "openCrystal",
                [2] = "Purple Crystal"
             }
             game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
          end 
       else 
          purpleCrystal = false 
       end 
    end)
    Section22:AddToggle("Blue Crystal",function(state)
       if state then 
          blueCrystal = true 
          while blueCrystal == true do wait() 
             local args = {
                [1] = "openCrystal",
                [2] = "Blue Crystal"
             }
             game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
          end 
       else 
          blueCrystal = false 
       end 
    end)
    Section22:AddToggle("Snow Crystal",function(state)
       if state then 
          snowCrystal = true 
          while snowCrystal == true do wait() 
             local args = {
                [1] = "openCrystal",
                [2] = "Snow Crystal"
             }
             game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
          end 
       else 
          snowCrystal = false 
       end
    end)
    Section22:AddToggle("Lava Crystal",function(state)
       if state then 
          lavaCrystal = true 
          while lavaCrystal == true do wait() 
             local args = {
                [1] = "openCrystal",
                [2] = "Lava Crystal"
             }
             game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
          end 
       else 
          lavaCrystal = false 
       end 
    end)
    Section22:AddToggle("Inferno Crystal",function(state)
       if state then 
          infernoCrystal = true 
          while infernoCrystal == true do wait() 
             local args = {
                [1] = "openCrystal",
                [2] = "Inferno Crystal"
             }
             game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
          end 
       else 
          infernoCrystal = false 
       end 
    end)
    Section22:AddToggle("Electro Legends Crystal",function(state)
       if state then 
          electroLegendsCrystal = true 
          while electroLegendsCrystal == true do wait() 
             local args = {
                [1] = "openCrystal",
                [2] = "Electro Legends Crystal"
             }
             game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
          end 
       else 
          electroLegendsCrystal = false 
       end 
    end)
    Section22:AddToggle("Jungle Crystal",function(state)
        if state then 
           jungleCrystal = true 
           while jungleCrystal == true do wait() 
              local args = {
                 [1] = "openCrystal",
                 [2] = "Jungle Crystal"
              }
              game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
           end 
        else 
           jungleCrystal = false 
        end 
     end)
    Section23:AddSection("Space Crystals")
    Section23:AddToggle("Space Crystal",function(state)
       if state then 
          spaceCrystal = true 
          while spaceCrystal == true do wait() 
             local args = {
                [1] = "openCrystal",
                [2] = "Space Crystal"
             }
             game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
          end 
       else 
          spaceCrystal = false 
       end 
    end)
    Section23:AddToggle("Alien Crystal",function(state)
       if state then 
          alienCrystal = true 
          while alienCrystal == true do wait() 
             local args = {
                [1] = "openCrystal",
                [2] = "Alien Crystal"
             }
             game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
          end 
       else 
          alienCrystal = false 
       end 
    end)
    Section24:AddSection("Desert Crystals")
    Section24:AddToggle("Desert Crystal",function(state)
       if state then 
          desertCrystal = true 
          while desertCrystal == true do wait() 
             local args = {
                [1] = "openCrystal",
                [2] = "Desert Crystal"
             }
             game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
          end 
       else 
          desertCrystal = false 
       end 
    end)
    Section24:AddToggle("Electro Crystal",function(state)
       if state then 
          electroCrystal = true 
          while electroCrystal == true do wait() 
             local args = {
                [1] = "openCrystal",
                [2] = "Electro Crystal"
             }
             game:GetService("ReplicatedStorage"):WaitForChild("rEvents"):WaitForChild("openCrystalRemote"):InvokeServer(unpack(args))
          end 
       else 
          electroCrystal = false 
       end 
    end)

    -- MiscellaneousTab
    Section25:AddSection("City Teleports")
    Section25:AddDropdown("Select Destination", {"City","Snow City","Magma City","Legends Highway","Speed Jungle"}, function(input)
        if input == "City" then
            citiesteleport = input
        elseif input == "Snow City" then
            citiesteleport = input
        elseif input == "Magma City" then
            citiesteleport = input
        elseif input == "Legends Highway" then
            citiesteleport = input
        elseif input == "Speed Jungle" then
            citiesteleport = input
        end
    end)
    Section25:AddButton("Teleport", function()
        if citiesteleport == "City" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828, 74.8522873, 3099.03394, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
        elseif citiesteleport == "Snow City" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.13867, 74.8522873, 3782.69385, 0, 0, -1, 0, 1, 0, 1, 0, 0)
        elseif citiesteleport == "Magma City" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.9688, 232.791656, 4898.62842, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
        elseif citiesteleport == "Legends Highway" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.8711, 232.791656, 5907.62793, -0.0872479677, 0.000158954252, -0.996186614, -0.00054083002, 0.999999821, 0.00020692969, 0.996186495, 0.000556821818, -0.0872478485)
        elseif citiesteleport == "Speed Jungle" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-15274,399,5576)
        end
    end)
    Section25:Empty()
end

print("Made with love by gxslighted ♡")
print("discord.gg/ERV")

-- Made with love by gxslighted ♡
