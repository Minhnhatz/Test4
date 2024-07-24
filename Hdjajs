_G.AutoBountySetting = {
    -- ["Key"] = "Alchemy_fd9e2549a058e60375907ba15c3db7311daabd29c20926fcdd22d092008207d7",
    ["General"] = {
        --["Team"] = "Pirates", -- Pirates or Marines
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

-- Setting global variables
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

-- Wait until the game is fully loaded
repeat wait() until game:IsLoaded()
if not game:IsLoaded() then game.Loaded:Wait() end
repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes")
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main")

-- Panda Authenticating System (commented out)
/*
local LibVersion = "v2" -- (v3 & v4)
local LibType = "roblox" -- Available (FiveM or Roblox) always use small letter
local service_name = "alchemy_hub"
local PandaAuth = loadstring(game:HttpGet('https://pandadevelopment.net/servicelib?service='..service_name..'&core='..LibType..'&param='..LibVersion))()
local debugMode = true

function DebugMode(text)
    if debugMode then
        print("[Client] - "..text)
    end
end
local KeyForSave = _G.AutoBountySetting["Key"]
DebugMode("Validating Key")
DebugMode("Service: ".. service_name)
DebugMode("Key: "..KeyForSave)

if PandaAuth:ValidateKey(service_name, KeyForSave) then
    print("Yep!")
    KeyAuth_CheckingPassing = true
else
    game.Players.LocalPlayer:Kick("Alchemy Hub : Incorrect Key")
end
repeat wait(1) until KeyAuth_CheckingPassing == true
*/

-- Join Team (commented out)
/*
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
*/

-- Setting more global variables based on settings
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

-- Melee settings
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

-- Gun settings
_G.GunDelay = _G.AutoBountySetting["Gun"]["Delay"]
_G.UseGun = _G.AutoBountySetting["Gun"]["Enable"]
_G.UseGunMethod = false
_G.HoldZGun = _G.AutoBountySetting["Gun"]["Skill Z"]["Hold Time"]
_G.GunSkillZ = _G.AutoBountySetting["Gun"]["Skill Z"]["Enable"]
_G.HoldXGun = _G.AutoBountySetting["Gun"]["Skill X"]["Hold Time"]
_G.GunSkillX = _G.AutoBountySetting["Gun"]["Skill X"]["Enable"]

-- Sword settings
_G.SwordDelay = _G.AutoBountySetting["Sword"]["Delay"]
_G.UseSword = _G.AutoBountySetting["Sword"]["Enable"]
_G.UseSwordMethod = false
_G.HoldZSword = _G.AutoBountySetting["Sword"]["Skill Z"]["Hold Time"]
_G.SwordSkillZ = _G.AutoBountySetting["Sword"]["Skill Z"]["Enable"]
_G.HoldXSword = _G.AutoBountySetting["Sword"]["Skill X"]["Hold Time"]
_G.SwordSkillX = _G.AutoBountySetting["Sword"]["Skill X"]["Enable"]

-- Fruit settings
_G.FruitDelay = _G.AutoBountySetting["Fruits"]["Delay"]
_G.UseFruit = _G.AutoBountySetting["Fruits"]["Enable"]
_G.UseFruitMethod = false
_G.HoldZFruit = _G.AutoBountySetting["Fruits"]["Skill Z"]["Hold Time"]
_G.FruitSkillZ = _G.AutoBountySetting["Fruits"]["Skill Z"]["Enable"]
_G.HoldXFruit = _G.AutoBountySetting["Fruits"]["Skill X"]["Hold Time"]
_G.FruitSkillX = _G.AutoBountySetting["Fruits"]["Skill X"]["Enable"]
_G.HoldCFruit = _G.AutoBountySetting["Fruits"]["Skill C"]["Hold Time"]
_G.FruitSkillC = _G.AutoBountySetting["Fruits"]["Skill C"]["Enable"]
_G.HoldVFruit = _G.AutoBountySetting["Fruits"]["Skill V"]["Hold Time"]
_G.FruitSkillV = _G.AutoBountySetting["Fruits"]["Skill V"]["Enable"]

-- Anti-cheat and additional global variables
setfflag("AbuseReportScreenshot", "False")
setfflag("AbuseReportScreenshotPercentage", "0")
setfflag("DFFlagAbuseReportScreenshot", "False")
setfflag("DFFlagAbuseReportScreenshotPercentage", "0")
setfflag("CrashPadUploadToBacktraceToBacktraceBaseUrl", "")

local save_map = {}
function SaveCFrameValue(obj, value)
    save_map[obj] = value
    obj:GetPropertyChangedSignal("CFrame"):Connect(function()
        if save_map[obj] then
            obj.CFrame = save_map[obj]
        end
    end)
end
function SavePositionValue(obj, value)
    save_map[obj] = value
    obj:GetPropertyChangedSignal("Position"):Connect(function()
        if save_map[obj] then
            obj.Position = save_map[obj]
        end
    end)
end

local game = game
local firetouchinterest = firetouchinterest
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")
local TeleportService = game:GetService("TeleportService")
local Workspace = game:GetService("Workspace")
local HttpService = game:GetService("HttpService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local request = (syn and syn.request) or (http and http.request) or (http_request) or (fluxus and fluxus.request) or request
local queue_on_teleport = queue_on_teleport or syn.queue_on_teleport

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character
local Humanoid = Character.Humanoid
local RootPart = Character.HumanoidRootPart
local Mouse = LocalPlayer:GetMouse()

-- Validate the script
assert(_G.AutoBountySetting, "AutoBountySetting not defined")

print("Script loaded successfully")

-- Placeholder function
function placeholder()
    -- Insert your function logic here
end
