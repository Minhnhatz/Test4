_G.AutoBountySetting = {
    -- ["Key"] = "MinhDepZai",
	["General"] = {
		--["Team"] = "Pirates", --// Pirates or Marines
		["Bypass Teleport"] = true,
	},
	["Booster"] = {
		["FPS Boost"] = true, 
		["White Screen"] = false,
	},
	["Race"] = {
		["V3"] = false,
		["V4"] = false,
	},
	["Melee"] = {
		["Enable"] = true,
		["Delay"] = 3,
        ["Skill Z"] = {
            ["Enable"] = true,
            ["Hold Time"] = 0,
        },
        ["Skill X"] = {
            ["Enable"] = true,
            ["Hold Time"] = 0,
        },
        ["Skill C"] = {
            ["Enable"] = true,
            ["Hold Time"] = 0,
        },
	},
	["Sword"] = {
		["Enable"] = true,
		["Delay"] = 1.5,
        ["Skill Z"] = {
            ["Enable"] = true,
            ["Hold Time"] = 0,
        },
        ["Skill X"] = {
            ["Enable"] = true,
            ["Hold Time"] = 0,
        },
	},
	["Fruits"] = {
		["Enable"] = true,
		["Delay"] = 3,
        ["Skill Z"] = {
            ["Enable"] = true,
            ["Hold Time"] = 0,
        },
        ["Skill X"] = {
            ["Enable"] = true,
            ["Hold Time"] = 0,
        },
        ["Skill C"] = {
            ["Enable"] = true,
            ["Hold Time"] = 0,
        },
        ["Skill V"] = {
            ["Enable"] = true,
            ["Hold Time"] = 0,
        },
	},
	["Gun"] = {
		["Enable"] = true,
		["Delay"] = 1,
        ["Skill Z"] = {
            ["Enable"] = true,
            ["Hold Time"] = 0,
        },
        ["Skill X"] = {
            ["Enable"] = true,
            ["Hold Time"] = 0,
        },
	},
	["Skip"] = {
		["Race V4"] = false,
		["Fruits"] = false,
	},
	["Webhook"] = {
		["Enable"] = false, 
		["Url"] = "",
	},
}
_G.Team = _G.AutoBountySetting["General"]["Team"]
_G.FruitList = {
    "Leopard-Leopard",
    "Venom-Venom",
    "Dough-Dough",
    "Portal-Portal"
}
_G.ChatList = {
    ""
}
_G.StartHunt = true
local BountyWhenJoin = game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value 
repeat wait() until game:IsLoaded()
if not game:IsLoaded() then game.Loaded:Wait() end
repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");

--[[ Panda Authenticating System
local LibVersion = "v2" -- ( v3 & v4 )
local LibType = "roblox" -- Available ( FiveM or Roblox ) always use small letter
local service_name = "alchemy_hub"
--https://pandadevelopment.net/servicelib?service=alchemy_hub&core=roblox&param=v2
local PandaAuth = loadstring(game:HttpGet('https://pandadevelopment.net/servicelib?service='..service_name..'&core='..LibType..'&param='..LibVersion))()
local debugMode = true;

function DebugMode(text)
    if debugMode then
        print("[Client] - "..text)
    end
end
local KeyForSave = _G.AutoBountySetting["Key"]
DebugMode("Validating Key")
DebugMode("Service: ".. service_name)
DebugMode("Key:MinhDepZai"..KeyForSave)

if PandaAuth:ValidateKey(service_name, KeyForSave) then
    print("Yep!")
    KeyAuth_CheckingPassing = true
else
    game.Players.LocalPlayer:Kick("Alchemy Hub : Incorrect Key")
end
repeat wait(1) until KeyAuth_CheckingPassing == true
]]
--- Join Team
--[[
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
    repeat task.wait()
        if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
            if _G.AutoBountySetting["General"]["Team"] == "Marines" then
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Marines"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                       b:Fire() 
                    end
                    v.Function()
                end 
            else
                for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container["Pirates"].Frame.TextButton.Activated)) do
                    for a, b in pairs(getconnections(game:GetService("UserInputService").TouchTapInWorld)) do
                       b:Fire() 
                    end
                    v.Function()
                end 
            end
        end
        
    until game.Players.LocalPlayer.Team ~= nil and game:IsLoaded()
end
]]
_G.WebhookUrl = _G.AutoBountySetting["Webhook"]["Url"]
_G.UseWebhook = _G.AutoBountySetting["Webhook"]["Enable"]
_G.SkipV4 = _G.AutoBountySetting["Skip"]["Race V4"]
_G.SkipFruit = _G.AutoBountySetting["Skip"]["Fruits"]
_G.UseV3 = _G.AutoBountySetting["Race"]["V3"]
_G.CustomHealthV3 = 95
_G.CustomHealthEnableV3 = false
_G.UseV4 = _G.AutoBountySetting["Race"]["V4"]
_G.FastClick = false
_G.AlwaysClick = false
_G.Chat = false
_G.LockCam = false
_G.BypassTP = _G.AutoBountySetting["General"]["Bypass Teleport"]
_G.FpsBoost = _G.AutoBountySetting["Booster"]["FPS Boost"]
_G.WhiteScreen = _G.AutoBountySetting["Booster"]["White Screen"]
_G.SafeHealth = 45
-- Melee
_G.MeleeDelay = _G.AutoBountySetting["Melee"]["Enable"]
_G.UseMelee = _G.AutoBountySetting["Melee"]["Delay"]
_G.HoldZMelee = _G.AutoBountySetting["Melee"]["Skill Z"]["Hold Time"]
_G.MeleeSkillZ = _G.AutoBountySetting["Melee"]["Skill Z"]["Enable"]
_G.HoldXMelee = _G.AutoBountySetting["Melee"]["Skill X"]["Hold Time"]
_G.MeleeSkillX = _G.AutoBountySetting["Melee"]["Skill X"]["Enable"]
_G.HoldCMelee = _G.AutoBountySetting["Melee"]["Skill C"]["Hold Time"]
_G.MeleeSkillC = _G.AutoBountySetting["Melee"]["Skill C"]["Enable"]
_G.HoldVMelee = 0
_G.MeleeSkillV = false
-- Gun
_G.GunDelay = _G.AutoBountySetting["Gun"]["Delay"]
_G.UseGun = _G.AutoBountySetting["Gun"]["Enable"]
_G.UseGunMethod = false
_G.HoldZGun = _G.AutoBountySetting["Gun"]["Skill Z"]["Hold Time"]
_G.GunSkillZ = _G.AutoBountySetting["Gun"]["Skill Z"]["Enable"]
_G.HoldXGun = _G.AutoBountySetting["Gun"]["Skill X"]["Hold Time"]
_G.GunSkillX = _G.AutoBountySetting["Gun"]["Skill X"]["Enable"]
-- Sword
_G.SwordDelay = _G.AutoBountySetting["Sword"]["Delay"]
_G.UseSword = _G.AutoBountySetting["Sword"]["Enable"]
_G.UseSwordMethod = false
_G.HoldZSword = _G.AutoBountySetting["Sword"]["Skill Z"]["Hold Time"]
_G.SwordSkillZ = _G.AutoBountySetting["Sword"]["Skill Z"]["Enable"]
_G.HoldXSword = _G.AutoBountySetting["Sword"]["Skill X"]["Hold Time"]
_G.SwordSkillX = _G.AutoBountySetting["Sword"]["Skill X"]["Enable"]
-- Fruit
_G.FruitDelay = _G.AutoBountySetting["Fruits"]["Delay"]
_G.UseFruit = _G.AutoBountySetting["Fruits"]["Enable"]
_G.HoldZFruit = _G.AutoBountySetting["Sword"]["Skill Z"]["Hold Time"]
_G.FruitSkillZ = _G.AutoBountySetting["Sword"]["Skill Z"]["Enable"]
_G.HoldXFruit = _G.AutoBountySetting["Sword"]["Skill X"]["Hold Time"]
_G.FruitSkillX = _G.AutoBountySetting["Sword"]["Skill X"]["Enable"]
_G.HoldCFruit = _G.AutoBountySetting["Sword"]["Skill C"]["Hold Time"]
_G.FruitSkillC = _G.AutoBountySetting["Sword"]["Skill C"]["Enable"]
_G.HoldVFruit = _G.AutoBountySetting["Sword"]["Skill V"]["Hold Time"]
_G.FruitSkillV = _G.AutoBountySetting["Sword"]["Skill V"]["Enable"]
_G.HoldFFruit = 3
_G.FruitSkillF = false
--[[
for i = 1, 1 do
    wait(0.1)
    if game:GetService("CoreGui"):FindFirstChild("MeoMeoXHubUIB") then
        game:GetService("CoreGui"):FindFirstChild("AlchemyHubUIB"):Destroy()
    StartHunt = false
end
]]
local AlchemyHubUIB = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MainFrameStroke = Instance.new("UIStroke")
local MainFrameCorner = Instance.new("UICorner")
local ServerHop = Instance.new("TextButton")
local ServerHopStroke = Instance.new("UIStroke")
local ServerHopShadow = Instance.new("Frame")
local AlchemyHubUIToggle = Instance.new("TextButton")
local AlchemyHubUIToggleStroke = Instance.new("UIStroke")
local ServerHopShadow_2 = Instance.new("Frame")
local Logo = Instance.new("ImageLabel")
local LogoStroke = Instance.new("UIStroke")
local Description = Instance.new("TextLabel")
local DescriptionPadding = Instance.new("UIPadding")
local DescriptionStroke = Instance.new("UIStroke")
local Load4 = Instance.new("TextLabel")
local Load4Padding = Instance.new("UIPadding")
local Load4Stroke = Instance.new("UIStroke")
local TextCurrentBounty = Instance.new("TextLabel")
local TextCurrentBountyPadding = Instance.new("UIPadding")
local TextCurrentBountyStroke = Instance.new("UIStroke")
local Load4Shadow = Instance.new("TextLabel")
local Load4ShadowPadding = Instance.new("UIPadding")
local Load4ShadowStroke = Instance.new("UIStroke")
local HubName = Instance.new("TextLabel")
local HubNameStroke = Instance.new("UIStroke")
local HubNamePadding = Instance.new("UIPadding")
local FrameLoadShadow = Instance.new("ImageLabel")
local Load1 = Instance.new("TextLabel")
local Load1Padding = Instance.new("UIPadding")
local Load1Stroke = Instance.new("UIStroke")
local TextEarned = Instance.new("TextLabel")
local TextEarnedPadding = Instance.new("UIPadding")
local TextEarnedStroke = Instance.new("UIStroke")
local Load1Shadow = Instance.new("TextLabel")
local Load1ShadowPadding = Instance.new("UIPadding")
local Load1ShadowStroke = Instance.new("UIStroke")
local Load2 = Instance.new("TextLabel")
local Load2Padding = Instance.new("UIPadding")
local Load2Stroke = Instance.new("UIStroke")
local TextTime = Instance.new("TextLabel")
local TextTimePadding = Instance.new("UIPadding")
local TextTimeStroke = Instance.new("UIStroke")
local Load2Shadow = Instance.new("TextLabel")
local Load2ShadowPadding = Instance.new("UIPadding")
local Load2ShadowStroke = Instance.new("UIStroke")
local Load3 = Instance.new("TextLabel")
local Load3Padding = Instance.new("UIPadding")
local Load3Stroke = Instance.new("UIStroke")
local TextTotalEarned = Instance.new("TextLabel")
local TextTotalEarnedStroke = Instance.new("UIStroke")
local TextTotalEarnedPadding = Instance.new("UIPadding")
local Load3Shadow = Instance.new("TextLabel")
local Load3ShadowPadding = Instance.new("UIPadding")
local Load3ShadowStroke = Instance.new("UIStroke")

AlchemyHubUIB.Name = "MeoMeoXHubUIB"
AlchemyHubUIB.Parent = game:GetService("CoreGui")
AlchemyHubUIB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = MeoMeoXHubUIB
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BackgroundTransparency = -0.010
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 305, 0, 250)

MainFrameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
MainFrameStroke.Color = Color3.fromRGB(0, 255, 149)
MainFrameStroke.Thickness = 1.7000000476837158
MainFrameStroke.Name = "MainFrameStroke"
MainFrameStroke.Parent = MainFrame

MainFrameCorner.CornerRadius = UDim.new(0, 2)
MainFrameCorner.Name = "MainFrameCorner"
MainFrameCorner.Parent = MainFrame

ServerHop.Name = "ServerHop"
ServerHop.Parent = MainFrame
ServerHop.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ServerHop.BackgroundTransparency = 0.900
ServerHop.BorderColor3 = Color3.fromRGB(0, 0, 0)
ServerHop.BorderSizePixel = 0
ServerHop.Position = UDim2.new(0.516999364, 0, 0.832000017, 0)
ServerHop.Size = UDim2.new(0, 134, 0, 36)
ServerHop.Font = Enum.Font.GothamBold
ServerHop.Text = "Discord"
ServerHop.TextColor3 = Color3.fromRGB(255, 255, 255)
ServerHop.TextSize = 18.000

ServerHopStroke.Color = Color3.fromRGB(0, 255, 149)
ServerHopStroke.Name = "ServerHopStroke"
ServerHopStroke.Parent = ServerHop

ServerHopShadow.Name = "ServerHopShadow"
ServerHopShadow.Parent = ServerHop
ServerHopShadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ServerHopShadow.BackgroundTransparency = 0.900
ServerHopShadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
ServerHopShadow.BorderSizePixel = 0
ServerHopShadow.Size = UDim2.new(0, 133, 0, 36)

AlchemyHubUIToggle.Name = "MeoMeoXHubUIToggle"
AlchemyHubUIToggle.Parent = MainFrame
AlchemyHubUIToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AlchemyHubUIToggle.BackgroundTransparency = 0.900
AlchemyHubUIToggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
AlchemyHubUIToggle.BorderSizePixel = 0
AlchemyHubUIToggle.Position = UDim2.new(0.0267213918, 0, 0.832000017, 0)
AlchemyHubUIToggle.Size = UDim2.new(0, 138, 0, 36)
AlchemyHubUIToggle.Font = Enum.Font.GothamBold
AlchemyHubUIToggle.Text = "Skip Player"
AlchemyHubUIToggle.TextColor3 = Color3.fromRGB(255, 255, 255)
AlchemyHubUIToggle.TextSize = 18.000

AlchemyHubUIToggleStroke.Color = Color3.fromRGB(0, 255, 149)
AlchemyHubUIToggleStroke.Name = "AlchemyHubUIToggleStroke"
AlchemyHubUIToggleStroke.Parent = AlchemyHubUIToggle

ServerHopShadow_2.Name = "ServerHopShadow"
ServerHopShadow_2.Parent = MeoMeoXHubUIToggle
ServerHopShadow_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ServerHopShadow_2.BackgroundTransparency = 0.900
ServerHopShadow_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ServerHopShadow_2.BorderSizePixel = 0
ServerHopShadow_2.Size = UDim2.new(0, 138, 0, 36)

Logo.Name = "Logo"
Logo.Parent = MainFrame
Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Logo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Logo.BorderSizePixel = 0
Logo.Position = UDim2.new(0.0299999993, 0, 0.0320000015, 0)
Logo.Size = UDim2.new(0, 50, 0, 50)
Logo.Image = "rbxassetid://18587394471"

LogoStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
LogoStroke.Color = Color3.fromRGB(255, 255, 255)
LogoStroke.Name = "LogoStroke"
LogoStroke.Parent = Logo

Description.Name = "Description"
Description.Parent = MainFrame
Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Description.BackgroundTransparency = 1.000
Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
Description.BorderSizePixel = 0
Description.Position = UDim2.new(0.223000005, 0, 0.131999999, 0)
Description.Size = UDim2.new(0, 226, 0, 25)
Description.Font = Enum.Font.ArialBold
Description.Text = "Auto Bounty"
Description.TextColor3 = Color3.fromRGB(255, 255, 255)
Description.TextSize = 23.000

DescriptionPadding.Name = "DescriptionPadding"
DescriptionPadding.Parent = Description
DescriptionPadding.PaddingTop = UDim.new(0, 4)

DescriptionStroke.Color = Color3.fromRGB(0, 255, 149)
DescriptionStroke.Name = "DescriptionStroke"
DescriptionStroke.Parent = Description

Load4.Name = "Load4"
Load4.Parent = MainFrame
Load4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load4.BackgroundTransparency = 0.900
Load4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load4.BorderSizePixel = 0
Load4.Position = UDim2.new(0.0270000007, 0, 0.699999988, 0)
Load4.Size = UDim2.new(0, 284, 0, 31)
Load4.Font = Enum.Font.Highway
Load4.Text = "Current Bounty:"
Load4.TextColor3 = Color3.fromRGB(255, 255, 255)
Load4.TextSize = 18.000
Load4.TextXAlignment = Enum.TextXAlignment.Left

Load4Padding.Name = "Load4Padding"
Load4Padding.Parent = Load4
Load4Padding.PaddingLeft = UDim.new(0, 5)

Load4Stroke.Color = Color3.fromRGB(0, 255, 149)
Load4Stroke.Name = "Load4Stroke"
Load4Stroke.Parent = Load4

TextCurrentBounty.Name = "TextCurrentBounty"
TextCurrentBounty.Parent = Load4
TextCurrentBounty.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextCurrentBounty.BackgroundTransparency = 1.000
TextCurrentBounty.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextCurrentBounty.BorderSizePixel = 0
TextCurrentBounty.Position = UDim2.new(-0.0195951294, 0, 0.0548391044, 0)
TextCurrentBounty.Size = UDim2.new(0, 276, 0, 31)
TextCurrentBounty.Font = Enum.Font.Highway
TextCurrentBounty.Text = "5983957"
TextCurrentBounty.TextColor3 = Color3.fromRGB(255, 255, 255)
TextCurrentBounty.TextSize = 18.000
TextCurrentBounty.TextXAlignment = Enum.TextXAlignment.Right

TextCurrentBountyPadding.Name = "TextCurrentBountyPadding"
TextCurrentBountyPadding.Parent = TextCurrentBounty
TextCurrentBountyPadding.PaddingLeft = UDim.new(0, 5)

TextCurrentBountyStroke.Color = Color3.fromRGB(0, 255, 149)
TextCurrentBountyStroke.Name = "TextCurrentBountyStroke"
TextCurrentBountyStroke.Parent = TextCurrentBounty

Load4Shadow.Name = "Load4Shadow"
Load4Shadow.Parent = Load4
Load4Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load4Shadow.BackgroundTransparency = 0.900
Load4Shadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load4Shadow.BorderSizePixel = 0
Load4Shadow.Position = UDim2.new(-0.0195951294, 0, -0.00967702549, 0)
Load4Shadow.Size = UDim2.new(0, 284, 0, 31)
Load4Shadow.Font = Enum.Font.Highway
Load4Shadow.Text = "Current Bounty:"
Load4Shadow.TextColor3 = Color3.fromRGB(255, 255, 255)
Load4Shadow.TextSize = 18.000
Load4Shadow.TextXAlignment = Enum.TextXAlignment.Left

Load4ShadowPadding.Name = "Load4ShadowPadding"
Load4ShadowPadding.Parent = Load4Shadow
Load4ShadowPadding.PaddingLeft = UDim.new(0, 5)

Load4ShadowStroke.Color = Color3.fromRGB(0, 255, 149)
Load4ShadowStroke.Name = "Load4ShadowStroke"
Load4ShadowStroke.Parent = Load4Shadow

HubName.Name = "HubName"
HubName.Parent = MainFrame
HubName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
HubName.BackgroundTransparency = 1.000
HubName.BorderColor3 = Color3.fromRGB(0, 0, 0)
HubName.BorderSizePixel = 0
HubName.Position = UDim2.new(0.223000005, 0, 0.0320000015, 0)
HubName.Size = UDim2.new(0, 226, 0, 25)
HubName.Font = Enum.Font.GothamBold
HubName.Text = "Alchemy Hub"
HubName.TextColor3 = Color3.fromRGB(255, 255, 255)
HubName.TextSize = 25.000

HubNameStroke.Color = Color3.fromRGB(0, 255, 149)
HubNameStroke.Name = "HubNameStroke"
HubNameStroke.Parent = HubName

HubNamePadding.Name = "HubNamePadding"
HubNamePadding.Parent = HubName
HubNamePadding.PaddingLeft = UDim.new(0, 5)

FrameLoadShadow.Name = "FrameLoadShadow"
FrameLoadShadow.Parent = MainFrame
FrameLoadShadow.AnchorPoint = Vector2.new(0.5, 0.5)
FrameLoadShadow.BackgroundTransparency = 1.000
FrameLoadShadow.Position = UDim2.new(0.504999995, 0, 0.505999982, 2)
FrameLoadShadow.Size = UDim2.new(0.896666646, 147, 0.828000009, 147)
FrameLoadShadow.ZIndex = 0
FrameLoadShadow.Image = "rbxassetid://297694300"
FrameLoadShadow.ImageTransparency = 0.500
FrameLoadShadow.ScaleType = Enum.ScaleType.Slice
FrameLoadShadow.SliceCenter = Rect.new(85, 85, 427, 427)

Load1.Name = "Load1"
Load1.Parent = MainFrame
Load1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load1.BackgroundTransparency = 0.900
Load1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load1.BorderSizePixel = 0
Load1.Position = UDim2.new(0.0300000291, 0, 0.30399999, 0)
Load1.Size = UDim2.new(0, 284, 0, 31)
Load1.Font = Enum.Font.Highway
Load1.Text = "Earned:"
Load1.TextColor3 = Color3.fromRGB(255, 255, 255)
Load1.TextSize = 18.000
Load1.TextXAlignment = Enum.TextXAlignment.Left

Load1Padding.Name = "Load1Padding"
Load1Padding.Parent = Load1
Load1Padding.PaddingLeft = UDim.new(0, 5)

Load1Stroke.Color = Color3.fromRGB(0, 255, 149)
Load1Stroke.Name = "Load1Stroke"
Load1Stroke.Parent = Load1

TextEarned.Name = "TextEarned"
TextEarned.Parent = Load1
TextEarned.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextEarned.BackgroundTransparency = 1.000
TextEarned.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextEarned.BorderSizePixel = 0
TextEarned.Position = UDim2.new(-0.0107526882, 0, 0.0459358469, 0)
TextEarned.Size = UDim2.new(0, 272, 0, 31)
TextEarned.Font = Enum.Font.Highway
TextEarned.Text = "31327"
TextEarned.TextColor3 = Color3.fromRGB(255, 255, 255)
TextEarned.TextSize = 18.000
TextEarned.TextXAlignment = Enum.TextXAlignment.Right

TextEarnedPadding.Name = "TextEarnedPadding"
TextEarnedPadding.Parent = TextEarned
TextEarnedPadding.PaddingLeft = UDim.new(0, 5)

TextEarnedStroke.Color = Color3.fromRGB(0, 255, 149)
TextEarnedStroke.Name = "TextEarnedStroke"
TextEarnedStroke.Parent = TextEarned

Load1Shadow.Name = "Load1Shadow"
Load1Shadow.Parent = Load1
Load1Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load1Shadow.BackgroundTransparency = 0.900
Load1Shadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load1Shadow.BorderSizePixel = 0
Load1Shadow.Position = UDim2.new(-0.0130107701, 0, 0.0459358469, 0)
Load1Shadow.Size = UDim2.new(0, 281, 0, 31)
Load1Shadow.Font = Enum.Font.Highway
Load1Shadow.Text = "Earned:"
Load1Shadow.TextColor3 = Color3.fromRGB(255, 255, 255)
Load1Shadow.TextSize = 18.000
Load1Shadow.TextXAlignment = Enum.TextXAlignment.Left

Load1ShadowPadding.Name = "Load1ShadowPadding"
Load1ShadowPadding.Parent = Load1Shadow
Load1ShadowPadding.PaddingLeft = UDim.new(0, 5)

Load1ShadowStroke.Color = Color3.fromRGB(0, 255, 149)
Load1ShadowStroke.Name = "Load1ShadowStroke"
Load1ShadowStroke.Parent = Load1Shadow

Load2.Name = "Load2"
Load2.Parent = MainFrame
Load2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load2.BackgroundTransparency = 0.900
Load2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load2.BorderSizePixel = 0
Load2.Position = UDim2.new(0.0300000794, 0, 0.43599999, 0)
Load2.Size = UDim2.new(0, 283, 0, 31)
Load2.Font = Enum.Font.Highway
Load2.Text = "Time Elapsed:"
Load2.TextColor3 = Color3.fromRGB(255, 255, 255)
Load2.TextSize = 18.000
Load2.TextXAlignment = Enum.TextXAlignment.Left

Load2Padding.Name = "Load2Padding"
Load2Padding.Parent = Load2
Load2Padding.PaddingLeft = UDim.new(0, 5)

Load2Stroke.Color = Color3.fromRGB(0, 255, 149)
Load2Stroke.Name = "Load2Stroke"
Load2Stroke.Parent = Load2

TextTime.Name = "TextTime"
TextTime.Parent = Load2
TextTime.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextTime.BackgroundTransparency = 1.000
TextTime.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextTime.BorderSizePixel = 0
TextTime.Position = UDim2.new(-0.0252176188, 0, 0.0246463902, 0)
TextTime.Size = UDim2.new(0, 276, 0, 31)
TextTime.Font = Enum.Font.Highway
TextTime.Text = "01:19:11"
TextTime.TextColor3 = Color3.fromRGB(255, 255, 255)
TextTime.TextSize = 18.000
TextTime.TextXAlignment = Enum.TextXAlignment.Right

TextTimePadding.Name = "TextTimePadding"
TextTimePadding.Parent = TextTime
TextTimePadding.PaddingLeft = UDim.new(0, 5)

TextTimeStroke.Color = Color3.fromRGB(0, 255, 149)
TextTimeStroke.Name = "TextTimeStroke"
TextTimeStroke.Parent = TextTime

Load2Shadow.Name = "Load2Shadow"
Load2Shadow.Parent = Load2
Load2Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load2Shadow.BackgroundTransparency = 0.900
Load2Shadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load2Shadow.BorderSizePixel = 0
Load2Shadow.Position = UDim2.new(-0.0131655447, 0, -0.0156131871, 0)
Load2Shadow.Size = UDim2.new(0, 281, 0, 31)
Load2Shadow.Font = Enum.Font.Highway
Load2Shadow.Text = "Time Elapsed:"
Load2Shadow.TextColor3 = Color3.fromRGB(255, 255, 255)
Load2Shadow.TextSize = 18.000
Load2Shadow.TextXAlignment = Enum.TextXAlignment.Left

Load2ShadowPadding.Name = "Load2ShadowPadding"
Load2ShadowPadding.Parent = Load2Shadow
Load2ShadowPadding.PaddingLeft = UDim.new(0, 5)

Load2ShadowStroke.Color = Color3.fromRGB(0, 255, 149)
Load2ShadowStroke.Name = "Load2ShadowStroke"
Load2ShadowStroke.Parent = Load2Shadow

Load3.Name = "Load3"
Load3.Parent = MainFrame
Load3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load3.BackgroundTransparency = 0.900
Load3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load3.BorderSizePixel = 0
Load3.Position = UDim2.new(0.0269999523, 0, 0.560000002, 0)
Load3.Size = UDim2.new(0, 284, 0, 33)
Load3.Font = Enum.Font.Highway
Load3.Text = "Clock:"
Load3.TextColor3 = Color3.fromRGB(255, 255, 255)
Load3.TextSize = 17.000
Load3.TextXAlignment = Enum.TextXAlignment.Left

Load3Padding.Name = "Load3Padding"
Load3Padding.Parent = Load3
Load3Padding.PaddingLeft = UDim.new(0, 5)

Load3Stroke.Color = Color3.fromRGB(0, 255, 149)
Load3Stroke.Name = "Load3Stroke"
Load3Stroke.Parent = Load3

TextTotalEarned.Name = "TextTotalEarned"
TextTotalEarned.Parent = Load3
TextTotalEarned.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextTotalEarned.BackgroundTransparency = 1.000
TextTotalEarned.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextTotalEarned.BorderSizePixel = 0
TextTotalEarned.Position = UDim2.new(-0.00747297844, 0, 0.0518720075, 0)
TextTotalEarned.Size = UDim2.new(0, 272, 0, 31)
TextTotalEarned.Font = Enum.Font.Highway
TextTotalEarned.Text = "-2511316"
TextTotalEarned.TextColor3 = Color3.fromRGB(255, 255, 255)
TextTotalEarned.TextSize = 18.000
TextTotalEarned.TextWrapped = true
TextTotalEarned.TextXAlignment = Enum.TextXAlignment.Right

TextTotalEarnedStroke.Color = Color3.fromRGB(0, 255, 149)
TextTotalEarnedStroke.Name = "TextTotalEarnedStroke"
TextTotalEarnedStroke.Parent = TextTotalEarned

TextTotalEarnedPadding.Name = "TextTotalEarnedPadding"
TextTotalEarnedPadding.Parent = TextTotalEarned
TextTotalEarnedPadding.PaddingLeft = UDim.new(0, 5)

Load3Shadow.Name = "Load3Shadow"
Load3Shadow.Parent = Load3
Load3Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Load3Shadow.BackgroundTransparency = 0.900
Load3Shadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
Load3Shadow.BorderSizePixel = 0
Load3Shadow.Position = UDim2.new(-0.0195951294, 0, 0.0518720075, 0)
Load3Shadow.Size = UDim2.new(0, 284, 0, 30)
Load3Shadow.Font = Enum.Font.Highway
Load3Shadow.Text = "Clock:"
Load3Shadow.TextColor3 = Color3.fromRGB(255, 255, 255)
Load3Shadow.TextSize = 17.000
Load3Shadow.TextXAlignment = Enum.TextXAlignment.Left

Load3ShadowPadding.Name = "Load3ShadowPadding"
Load3ShadowPadding.Parent = Load3Shadow
Load3ShadowPadding.PaddingLeft = UDim.new(0, 5)

Load3ShadowStroke.Color = Color3.fromRGB(0, 255, 149)
Load3ShadowStroke.Name = "Load3ShadowStroke"
Load3ShadowStroke.Parent = Load3Shadow

AlchemyHubUIToggle.MouseButton1Click:Connect(function()
    SkipPlayer()
end)
ServerHop.MouseButton1Click:Connect(function()
    setclipboard("https://discord.gg/eEuMtzUtnK")
end)
if game.PlaceId == 7449423635 then
    World3 = true
else
    game.Players.LocalPlayer:Kick("Only Support BF Sea 3")
end 
if World3 then 
    distbyp = 5000
    island = {
    ["Port Town"] = CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375),
    ["Hydra Island"] = CFrame.new(5749.7861328125 + 50, 611.9736938476562, -276.2497863769531),
    ["Mansion"] = CFrame.new(-12471.169921875 + 50, 374.94024658203, -7551.677734375),
    ["Castle On The Sea"] = CFrame.new(-5085.23681640625 + 50, 316.5072021484375, -3156.202880859375),
    ["Haunted Island"] = CFrame.new(-9547.5703125, 141.0137481689453, 5535.16162109375),
    ["Great Tree"] = CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625),
    ["Candy Island"] = CFrame.new(-1106.076416015625, 13.016114234924316, -14231.9990234375),
    ["Cake Island"] = CFrame.new(-1903.6856689453125, 36.70722579956055, -11857.265625),
    ["Loaf Island"] = CFrame.new(-889.8325805664062, 64.72842407226562, -10895.8876953125),
    ["Peanut Island"] = CFrame.new(-1943.59716796875, 37.012996673583984, -10288.01171875),
    ["Cocoa Island"] = CFrame.new(147.35205078125, 23.642955780029297, -12030.5498046875),
    ["Tiki Outpost"] = CFrame.new(-16234,9,416)
    } 
elseif World2 then 
    distbyp = 3500
    island = { 
    a = CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938),
    b = CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094),
    c= CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375),
    d= CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344),
    e=CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828), 
    f=CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875),
    g=CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188),
    h=CFrame.new(923.40197753906, 125.05712890625, 32885.875),
    i=CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125),
    }
elseif World1 then 
    distbyp = 1500
    island = { 
    a = CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594), 
    b = CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156), 
    c = CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688), 
    d = CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969), 
    e =CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754), 
    f = CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094) ,
    g = CFrame.new(-4607.82275, 872.54248, -1667.55688), 
    h = CFrame.new(-7952.31006, 5545.52832, -320.704956),
    i = CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313),
    j = CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969),
    k = CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469),
    l = CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813),
    m = CFrame.new(61163.8515625, 11.6796875, 1819.7841796875),
    n = CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875),
    o =CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656),
    p = CFrame.new(-4813.0249, 903.708557, -1912.69055),
    q = CFrame.new(-4970.21875, 717.707275, -2622.35449),
    } 
end
local p = game.Players
local lp = p.LocalPlayer

local rs = game.RunService
local hb = rs.Heartbeat
local rends = rs.RenderStepped
local webhook = {} 

getgenv().weapon = nil
getgenv().targ = nil 
getgenv().lasttarrget = nil
getgenv().checked = {}
getgenv().pl = p:GetPlayers()
wait(1)
--- Tween / Bypass ---
function bypass(Pos)   
    if lp.Character:FindFirstChild("Head") and lp.Character:FindFirstChild("HumanoidRootPart") and lp.Character:FindFirstChild("Humanoid") then
        dist = math.huge
        is = nil
        for i , v in pairs(island) do
            if (Pos.Position-v.Position).magnitude < dist then
                is = v 
                dist = (Pos.Position-v.Position).magnitude 
            end
        end 
        if is == nil then return; end
        if (lp.Character.PrimaryPart.Position-Pos.Position).magnitude > distbyp then 
            if (lp.Character.PrimaryPart.Position-Pos.Position).magnitude > (is.Position-Pos.Position).magnitude then
                if tween then
                    tween:Destroy()
                end
                if (is.X == 61163.8515625 and is.Y ==11.6796875 and is.Z == 1819.7841796875) or is == CFrame.new(-12471.169921875 + 50, 374.94024658203, -7551.677734375) or is == CFrame.new(-5085.23681640625 + 50, 316.5072021484375, -3156.202880859375) or is == CFrame.new(5749.7861328125 + 50, 611.9736938476562, -276.2497863769531) then
                    if tween then
                       tween:Cancel()
                    end
                    repeat task.wait()
                        lp.Character.HumanoidRootPart.CFrame = is  
                    until lp.Character.PrimaryPart.CFrame == is   
                    task.wait(0.1)
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                else
                    if _G.BypassTP and not stopbypass then
                        if tween then
                           tween:Cancel()
                        end
                        repeat task.wait()
                            lp.Character.HumanoidRootPart.CFrame = is  
                        until lp.Character.PrimaryPart.CFrame == is  
                        game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid"):ChangeState(15)
                        lp.Character:SetPrimaryPartCFrame(is)
                        wait(0.1)
                        lp.Character.Head:Destroy()
                        wait(0.5)
                        repeat task.wait()
                            lp.Character.PrimaryPart.CFrame = is  
                        until lp.Character:FindFirstChild("Humanoid").Health > 0
                        task.wait(0.5)
                    end 
                end
            end
        end
    end
end
function to(Pos)
    pcall(function()
        if lp.Character:FindFirstChild("HumanoidRootPart") and lp.Character:FindFirstChild("Humanoid").Health > 0 then
                Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                if not game.Players.LocalPlayer.Character.PrimaryPart:FindFirstChild("Hold") then
                    local Hold = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.PrimaryPart)
                    Hold.Name = "Hold"
                    Hold.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                    Hold.Velocity = Vector3.new(0, 0, 0)
                end
                if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                end
                if Distance < 250 then
                    Speed = 400
                elseif Distance < 1000 then
                    Speed = 375
                elseif Distance >= 1000 then
                    Speed = 350
                end
                pcall(function()
                    tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance / Speed, Enum.EasingStyle.Linear),{CFrame = Pos})
                    tween:Play()
                end)
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible then
                    if not string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text), "risk") then
                        bypass(Pos)
                    else
                        dist = math.huge
                        is = nil
                        for i , v in pairs(island) do
                            if (Pos.Position-v.Position).magnitude < dist then
                                is = v 
                                dist = (Pos.Position-v.Position).magnitude 
                            end
                        end 
                        if is == nil then return; end
                        if lp:DistanceFromCharacter(Pos.Position) > distbyp then 
                            if (lp.Character.Head.Position-Pos.Position).magnitude > (is.Position-Pos.Position).magnitude then
                                if tween then
                                    tween:Destroy()
                                end
                                if (is.X == 61163.8515625 and is.Y ==11.6796875 and is.Z == 1819.7841796875) or is == CFrame.new(-12471.169921875 + 50, 374.94024658203, -7551.677734375) or is == CFrame.new(-5085.23681640625 + 50, 316.5072021484375, -3156.202880859375) or is == CFrame.new(5749.7861328125 + 50, 611.9736938476562, -276.2497863769531) then
                                    if tween then
                                       tween:Cancel()
                                    end
                                    repeat task.wait()
                                        lp.Character.HumanoidRootPart.CFrame = is  
                                    until lp.Character.PrimaryPart.CFrame == is   
                                    task.wait(0.1)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
                                end
                            end
                        end
                    end
                else
                    bypass(Pos)
                end
                if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
                    game.Players.LocalPlayer.Character.Humanoid.Sit = false
                end
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X, Pos.Y, game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
        end
    end)
end
--- Buso ---
function buso()
    if (not (game.Players.LocalPlayer.Character:FindFirstChild("HasBuso"))) then
        local rel = game.ReplicatedStorage
        rel.Remotes.CommF_:InvokeServer("Buso")
    end
end
--- Ken ---
function Ken()
    if game:GetService("Players").LocalPlayer:FindFirstChild("PlayerGui") and game.Players.LocalPlayer.PlayerGui:FindFirstChild("ScreenGui") and game.Players.LocalPlayer.PlayerGui.ScreenGui:FindFirstChild("ImageLabel") then
        buoi = true
    else
        game:service("VirtualUser"):CaptureController()
        game:service("VirtualUser"):SetKeyDown("0x65")
        game:service("VirtualUser"):SetKeyUp("0x65")
    end
end
--- Sent Key To Cilent ---
function down(use)
    pcall(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
        task.wait(l)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,use,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
    end)
end
--- Equip ---
function equip(tooltip)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:wait()
    for _, item in pairs(player.Backpack:GetChildren()) do
        if item:IsA("Tool") and item.ToolTip == tooltip then
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if humanoid and not humanoid:IsDescendantOf(item) then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(item)
                return true
            end
        end
    end
    return false
end
function EquipWeapon(Tool)
    pcall(
        function()
            if game.Players.LocalPlayer.Backpack:FindFirstChild(Tool) then
                local ToolHumanoid = game.Players.LocalPlayer.Backpack:FindFirstChild(Tool)
                ToolHumanoid.Parent = game.Players.LocalPlayer.Character
            end
        end
    )
end
--- Click ---
function Click()
    game:GetService("VirtualUser"):CaptureController()
    game:GetService("VirtualUser"):Button1Down(Vector2.new(0,1,0,1))
end
--- No Clip ---
spawn(function()
    while game:GetService("RunService").Stepped:wait() do
        pcall(function()
            if true then
                local character = game.Players.LocalPlayer.Character
                for _, v in pairs(character:GetChildren()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end
end)
--- Check Fruit
function hasValue(array, targetString)
    for _, value in ipairs(array) do
        if value == targetString then
            return true
        end
    end
    return false
end
--- Fast Attack
if _G.FastClick then
    local CameraShaker = require(game.ReplicatedStorage.Util.CameraShaker)
    CameraShaker:Stop()
    fastattack = true
    CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
    y = debug.getupvalues(CombatFrameworkR)[2]
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if fastattack then
                if typeof(y) == "table" then
                    pcall(function()
                        y.activeController.timeToNextAttack = 0
                        y.activeController.hitboxMagnitude = 60
                        y.activeController.active = false
                        y.activeController.timeToNextBlock = 0
                        y.activeController.focusStart = 1655503339.0980349
                        y.activeController.increment = 1
                        y.activeController.blocking = false
                        y.activeController.attacking = false
                        y.activeController.humanoid.AutoRotate = true
                    end)
                end
            end
        end)
    end)
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if fastattack == true then
                if game.Players.LocalPlayer.Character:FindFirstChild("Stun") then
                    game.Players.LocalPlayer.Character.Stun.Value = 0
                    game.Players.LocalPlayer.Character.Busy.Value = false 
                end
            end
        end)
    end)
else
    CombatFrameworkR = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)
    y = debug.getupvalues(CombatFrameworkR)[2]
    spawn(function()
        game:GetService("RunService").RenderStepped:Connect(function()
            if typeof(y) == "table" then
                pcall(function()
                    y.activeController.hitboxMagnitude = 60
                    y.activeController.active = false
                    y.activeController.timeToNextBlock = 0
                    y.activeController.focusStart = 1655503339.0980349
                    y.activeController.increment = 1
                    y.activeController.blocking = false
                    y.activeController.attacking = false
                    y.activeController.humanoid.AutoRotate = true
                end)
            end
        end)
    end)
end
--- Circle
local radius = 25
local speedCircle = 30
local angle = 0
local yTween = 5
local function getNextPosition(center)
    angle = angle + speedCircle
    return center + Vector3.new(math.sin(math.rad(angle)) * radius, yTween, math.cos(math.rad(angle)) * radius)
end
--- Hop Server ---
spawn(function()
    while task.wait() do
        if hopserver then
            stopbypass = true
            starthop = true
        end
    end
end)
spawn(function()
    while task.wait() do
        if starthop and getgenv().targ == nil then
            repeat task.wait()
            to(lp.Character.HumanoidRootPart.CFrame*CFrame.new(0,math.random(500,10000),0))
            until (game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible and not string.find(string.lower(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text), "risk")) or (not game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible)
            to(CFrame.new(0,10000,0))
            HopServer()
            to(lp.Character.HumanoidRootPart.CFrame*CFrame.new(0,math.random(500,10000),0))
        end
    end
end)
function HopServer(bO)
    pcall(function()
        if not bO then
            bO = 10
        end
        ticklon = tick()
        repeat
            task.wait()
        until tick() - ticklon >= 1
        local function Hop()
            for r = 1, math.huge do
                if ChooseRegion == nil or ChooseRegion == "" then
                    ChooseRegion = "Singapore"
                else
                    game:GetService("Players").LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text =
                        ChooseRegion
                end
                local bP = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(r)
                for k, v in pairs(bP) do
                    if k ~= game.JobId and v["Count"] < bO then
                    game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", k)
                    end
                end
            end
            return false
        end
        if not getgenv().Loaded then
            local function bQ(v)
                if v.Name == "ErrorPrompt" then
                    if v.Visible then
                        if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                            HopServer()
                            v.Visible = false
                        end
                    end
                    v:GetPropertyChangedSignal("Visible"):Connect(
                        function()
                            if v.Visible then
                                if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                                    HopServer()
                                    v.Visible = false
                                end
                            end
                        end
                    )
                end
            end
            for k, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
                bQ(v)
            end
            game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(bQ)
            getgenv().Loaded = true
        end
        while not Hop() do
            wait()
        end
    end)
end
--- Skip Player
function SkipPlayer()
    getgenv().killed = getgenv().targ 
    table.insert(getgenv().checked, getgenv().targ)
    getgenv().targ = nil
    target()
end
--- Main
function target() 
    pcall(function()
        d = math.huge
        p = nil
        getgenv().targ = nil
        for i, v in pairs(game.Players:GetPlayers()) do 
            if v.Team ~= nil and (tostring(lp.Team) == "Pirates" or (tostring(v.Team) == "Pirates" and tostring(lp.Team) ~= "Pirates")) then
                if v and v:FindFirstChild("Data") and ((_G.SkipFruit and hasValue(_G.FruitList, v.Data.DevilFruit.Value) == false) or not _G.SkipFruit) then
                    if v ~= lp and v ~= getgenv().targ and (v.Character:FindFirstChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame.Position).Magnitude < d and hasValue(getgenv().checked, v) == false and v.Character.HumanoidRootPart.CFrame.Y <= 12000 then
                        if (tonumber(game.Players.LocalPlayer.Data.Level.Value) - 250) < v.Data.Level.Value  then
                            if v.leaderstats["Bounty/Honor"].Value >= tonumber(_G.MinBounty) and v.leaderstats["Bounty/Honor"].Value <= tonumber(_G.MaxBounty) and not hopserver then 
                                if (_G.SkipV4 and not v.Character:FindFirstChild("RaceTransformed")) or not _G.SkipV4 then
                                    p = v 
                                    d = (v.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude 
                                    if _G.Chat then
                                        game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):FindFirstChild("SayMessageRequest"):FireServer(_G.ChatList[math.random(0, #_G.ChatList)], "All")
                                    end
                                end
                            end
                        end
                    end 
                end
            end
        end 
        if p == nil then hopserver = true end 
        getgenv().targ = p
    end)
end
spawn(function()
    while wait() do
        pcall(function()
	        if _G.StartHunt then
                if getgenv().targ and getgenv().targ.Character and (getgenv().targ.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 40 then
                    Ken()
                end
	        end
        end)
    end
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.StartHunt then
                if getgenv().targ.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    if (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Position).Magnitude < 40 then 
                        if _G.UseGunMethod and not _G.UseSwordMethod then
                            EquipWeapon("Melee")
                            EquipWeapon("Gun") 
                        elseif not _G.UseGunMethod and _G.UseSwordMethod then
                            EquipWeapon("Melee")
                            EquipWeapon("Sword") 
                        elseif _G.UseGunMethod and _G.UseSwordMethod then
                            EquipWeapon("Melee")
                            EquipWeapon("Sword")
                            EquipWeapon("Gun") 
                        else
                            if _G.UseMelee then
                                getgenv().weapon = "Melee"
                                wait(_G.MeleeDelay)
                            end
                            if _G.UseGun then
                                getgenv().weapon = "Gun"
                                wait(_G.GunDelay)
                            end
                            if _G.UseSword then
                                getgenv().weapon = "Sword"
                                wait(_G.SwordDelay)
                            end
                            if _G.UseFruit then
                                getgenv().weapon = "Blox Fruit"
                                wait(_G.FruitDelay)
                            end
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while task.wait() do 
        pcall(function()
	        if _G.StartHunt then
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                end
                if getgenv().targ ~= nil and getgenv().targ.Character and (getgenv().targ.Character.HumanoidRootPart.CFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude < 60 then
                    buso()
                    if _G.UseV3 then
                        if _G.CustomHealthEnableV3 and lp.Character.Humanoid.Health <= lp.Character.Humanoid.MaxHealth * (_G.CustomHealthV3/100) then
                            l = 0.1
                            down("T")
                        end
                    end
                    if _G.UseV4 then
                        l = 0.1
                        down("Y")
                    end  
                    for i, v in pairs(game.Players.LocalPlayer.PlayerGui.Notifications:GetChildren()) do 
                        local gay = v:GetChildren() 
                        if v:IsA("TextLabel") and (string.find(string.lower(v.Text), "player") or string.find(string.lower(v.Text), "người chơi")) then 
                            SkipPlayer()
                            v:Destroy()
                        end
                    end 
                end
	        end
        end)
    end
end)
spawn(function()
    while task.wait() do
        if _G.StartHunt then
            if getgenv().targ == nil or not getgenv().targ or not getgenv().targ.Character then target() end
            if getgenv().targ == nil then hopserver = true end 
            pcall(function()
                if getgenv().targ.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    if (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Position).Magnitude < 40 then 
                        spawn(function()
                            if not _G.UseGunMethod and not _G.UseSwordMethod then
                                EquipWeapon("Summon Sea Beast")
                                equip(getgenv().weapon)
                                for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do 
                                    if v:IsA("Tool") and v.ToolTip == "Melee" then
                                        if _G.UseMelee then
                                            if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("Z").Cooldown.AbsoluteSize.X <= 0 and _G.MeleeSkillZ then	
                                                l = _G.HoldZMelee
                                                down("Z")
                                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("X").Cooldown.AbsoluteSize.X <= 0 and _G.MeleeSkillX then	
                                                l = _G.HoldXMelee
                                                down("X")
                                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("C").Cooldown.AbsoluteSize.X <= 0 and _G.MeleeSkillC then	
                                                l = _G.HoldCMelee
                                                down("C")
                                            elseif _G.MeleeSkillV then
                                                if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("V").Cooldown.AbsoluteSize.X <= 0 then	
                                                    l = _G.HoldVMelee
                                                    down("V")
                                                else 
                                                    Click()
                                                end
                                            else 
                                                Click()
                                            end
                                        end
                                    elseif v:IsA("Tool") and v.ToolTip == "Gun" then
                                        if _G.UseGun then
                                            if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("Z").Cooldown.AbsoluteSize.X <= 0 and _G.GunSkillZ then	
                                                l = _G.HoldZGun
                                                down("Z")
                                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("X").Cooldown.AbsoluteSize.X <= 0 and _G.GunSkillX then	
                                                l = _G.HoldXGun
                                                down("X")
                                            else
                                                Click()
                                            end
                                        end
                                    elseif v:IsA("Tool") and v.ToolTip == "Sword" then
                                        if _G.UseSword then
                                            if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("Z").Cooldown.AbsoluteSize.X <= 0 and _G.SwordSkillZ then	
                                                l = _G.HoldZSword
                                                down("Z")
                                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("X").Cooldown.AbsoluteSize.X <= 0 and _G.SwordSkillX then	
                                                l = _G.HoldXSword
                                                down("X")
                                            else
                                                Click()
                                            end
                                        end
                                    elseif v:IsA("Tool") and v.ToolTip == "Blox Fruit" then
                                        if _G.UseFruit then
                                            if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("Z").Cooldown.AbsoluteSize.X <= 0 and _G.FruitSkillZ then	
                                                l = _G.HoldZFruit
                                                down("Z")
                                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("X").Cooldown.AbsoluteSize.X <= 0 and _G.FruitSkillX then	
                                                l = _G.HoldXFruit
                                                down("X")
                                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("C").Cooldown.AbsoluteSize.X <= 0 and _G.FruitSkillC then	
                                                l = _G.HoldCFruit
                                                down("C")
                                            elseif game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("V").Cooldown.AbsoluteSize.X <= 0 and _G.FruitSkillV then	
                                                l = _G.HoldVFruit
                                                down("V")
                                            elseif _G.FruitSkillF then
                                                if game.Players.LocalPlayer.PlayerGui.Main.Skills[v.Name]:FindFirstChild("F").Cooldown.AbsoluteSize.X <= 0 then	
                                                    l = _G.HoldFFruit
                                                    down("F")
                                                end
                                            else
                                                Click()
                                            end
                                        end
                                    end
                                end
                            elseif _G.UseGunMethod or _G.UseSwordMethod then
                                if _G.UseMelee then
                                    if _G.MeleeSkillZ then	
                                        l = _G.HoldZMelee
                                        down("Z")
                                    elseif _G.MeleeSkillX then	
                                        l = _G.HoldXMelee
                                        down("X")
                                    elseif _G.MeleeSkillC then	
                                        l = _G.HoldCMelee
                                        down("C")
                                    elseif _G.MeleeSkillV then	
                                        l = _G.HoldVMelee
                                        down("V")
                                    end
                                end
                                Click()
                            end
                        end)
                    end
                end
            end)
        end
    end
end)
local a,b,Nguvc = 5
spawn(function()
    while task.wait(0.05) do
        if _G.StartHunt then
            if getgenv().targ == nil then target() end
            if getgenv().targ == nil then hopserver = true end 
            pcall(function()
                if getgenv().targ.Character:FindFirstChild("HumanoidRootPart") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > (game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").MaxHealth * (_G.SafeHealth/100)) then
                        stopbypass = false
                        pcall(function()    
                            if not (game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and getgenv().targ:DistanceFromCharacter(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").Position) < 10000) then
                                if (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Position).Magnitude < 60 then 
                                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible == true then
                                        print("Safe Zone")
                                        SkipPlayer()
                                    end
                                    if getgenv().targ.Character.Humanoid.Health > 0 then
                                        if _G.AlwaysClick then
                                            Click()
                                        end
                                        if helloae then
                                            nguvl = CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + getgenv().targ.Character.HumanoidRootPart.CFrame.LookVector * Nguvc, getgenv().targ.Character.HumanoidRootPart.Position)*CFrame.new(0,5,0)
                                            to(nguvl*CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position.Unit))
                                        else
                                            nguvl = CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + getgenv().targ.Character.HumanoidRootPart.CFrame.LookVector * -5, getgenv().targ.Character.HumanoidRootPart.Position)*CFrame.new(0,5,0)
                                            to(nguvl)
                                        end
                                    else 
                                        print("Player Died")
                                        SkipPlayer()
                                    end
                                else
                                    if getgenv().targ.Character.Humanoid.Health > 0 then
                                        to(getgenv().targ.Character.HumanoidRootPart.CFrame*CFrame.new(0,10,10))
                                    else
                                        print("Player Died")
                                        SkipPlayer()
                                    end
                                end
                            else
                                print("Raid")
                                SkipPlayer()
                            end
                        end)
                        a = getgenv().targ.Character.HumanoidRootPart.Position
                        if a ~= b then
                            b = a
                            if _G.UseGun and _G.UseGunMethod then
                                Nguvc = 14
                            else
                                Nguvc = 15
                            end
                        else
                            if _G.UseGun and _G.UseGunMethod then
                                Nguvc = 3
                            else
                                Nguvc = 5
                            end
                        end
                        if getgenv().targ.Character.HumanoidRootPart.CFrame.Y >= 10 then
                            helloae = true
                        else
                            helloae = false
                        end
                    else
                        stopbypass = true
                        to(getgenv().targ.Character.HumanoidRootPart.CFrame*CFrame.new(0,math.random(5000,100000),0))
                    end
                end
            end)
        end
    end
end)
--- Aim
spawn(function()
    while task.wait() do 
        if _G.StartHunt and getgenv().targ ~= nil and (getgenv().targ.Character:WaitForChild("HumanoidRootPart").CFrame.Position - game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame.Position).Magnitude < 40 then 
            aim = true 
            if _G.UseGun and _G.UseGunMethod then
                CFrameHunt = CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + getgenv().targ.Character.HumanoidRootPart.CFrame.LookVector * 2, getgenv().targ.Character.HumanoidRootPart.Position)
            else
                CFrameHunt = CFrame.new(getgenv().targ.Character.HumanoidRootPart.Position + getgenv().targ.Character.HumanoidRootPart.CFrame.LookVector * 5, getgenv().targ.Character.HumanoidRootPart.Position)
            end
        else
            aim = false
        end
    end
end)
spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if aim then
                        args[2] = CFrameHunt.Position
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
local Mouse = lp:GetMouse()
Mouse.Button1Down:Connect(function()
    pcall(function()
        if getgenv().targ ~= nil and aim then
            local args = {
                 [1] = CFrameHunt.Position,
                 [2] = getgenv().targ.Character.HumanoidRootPart
               }
             game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteFunctionShoot:InvokeServer(unpack(args))
         end
    end)
end)
spawn(function()
    while task.wait() do
        if _G.LockCam and _G.StartHunt then
            local targetPlayer = getgenv().targ
            if targetPlayer ~= nil then
                local targetCharacter = targetPlayer.Character
                local camera = game.Workspace.CurrentCamera
                if targetCharacter then
                    local lookAtPos = targetCharacter.HumanoidRootPart.Position
                    local cameraPos = camera.CFrame.Position
                    local newLookAt = CFrame.new(cameraPos, lookAtPos)
                    camera.CFrame = newLookAt
                end
            end
        end
    end
end)
--  Rejoin
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if not hopserver and child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        print("Alchemy Hub Auto Bounty | Rejoin!")
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)
--- Webhook
function wSend(main)
    spawn(function()
        local Data = game:GetService("HttpService"):JSONEncode(main)
        local Head = {["content-type"] = "application/json"}
        Send = http_request or request or HttpPost or syn.request 
        Send({Url = _G.WebhookUrl, Body = Data, Method = "POST", Headers = Head})
    end)
end 
function wTest() 
    local data = {
        ["content"] = "",
        ["embeds"] = {
            {
                ["title"] = "MeoMeo X Hub | Auto Bounty Webhook",
                ["color"] = 0x00ff95,
                ["fields"] = {
                    {
                        ["name"] = "Starting...",
                        ["value"] = "Thank you for using MeoMeo X Hub Script.",
                        ["inline"] = false,
                    },
                },
                ["image"] = {
                    ["url"] = "rbxassetid://18587394471";
                },
                ["footer"] = {
                    ["text"] = "MeoMeo X Hub Hub - discord.gg/eEuMtzUtnK",
                },
                ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
            }
        }
    }
    wSend(data)
end
function wEarn(earn) 
    if _G.UseWebhook and targ ~= nil then
        local data = {
            ["content"] = "",
            ["embeds"] = {
                {
                    ["title"] = "MeoMeo X Hub  | Auto Bounty Webhook",
                    ["color"] = 0x00ff95,
                    ["fields"] = {
                        {
                            ["name"] = "Account: ",
                            ["value"] = "```"..game.Players.LocalPlayer.Name.."```",
                            ["inline"] = false,
                        },
                        {
                            ["name"] = "Earned :",
                            ["value"] = "```"..earn.." Bounty/Honor```",
                            ["inline"] = false,
                        },
                        {
                            ["name"] = "Current Bounty: ",
                            ["value"] = "```"..(math.round((game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value / 1000000)*100)/100).."M```",
                            ["inline"] = false,
                        }
                    },
                    ["image"] = {
                        ["url"] = "https://cdn.discordapp.com/attachments/1102970625829650502/1162707566887981096/standard_4.gif";
                    },
                    ["footer"] = {
                        ["text"] = "MeoMeo X Hub - discord.gg/eEuMtzUtnK",
                    },
                    ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ"),
                }
            }
        }
        wSend(data)
    end
end

spawn(function()
    while wait() do
        pcall(function()
            local BountyRightnow = game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value 
            local AllEarn = BountyRightnow - BountyWhenJoin
            TextEarned.Text = AllEarn
            TextTime.Text = "Coming Soon"
            TextTotalEarned.Text = os.date("!%Y-%m-%dT%H:%M:%SZ")
            TextCurrentBounty.Text = (math.round((game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value / 1000000)*100)/100).."M"
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.UseWebhook then
                local BountyRightnow = game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value 
                local AllEarn = BountyRightnow - BountyWhenJoin
                wEarn(AllEarn)
            end
        end)
    end
end)
--[[
if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
	repeat wait()
		if game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("Main").ChooseTeam.Visible == true then
			if _G.AutoBountySetting["General"]["Team"] == "Pirate" then
				for i, v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton.Activated)) do                                                                                                
					v.Function()
				end
			elseif _G.AutoBountySetting["General"]["Team"] then
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
end
]]
