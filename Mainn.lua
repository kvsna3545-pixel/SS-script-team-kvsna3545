-- kvsna3545 SS - Full GUI (safe mode: buttons insert loadstring text; execution only via Execute button)

local Players = game:GetService("Players")

local UserInputService = game:GetService("UserInputService")

local player = Players.LocalPlayer

local scripts = {

	{"Addict.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Addict"},	{"ANDRFIX.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/ANDRFIX"},

	{"Anti V7.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/AntiV7"},

	{"Assassin (broken).txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/assassin"},

	{"Ban Hammer.txt","https://raw.githubusercontent.com/nicolasbarbosa323/ban-hammer/refs/heads/main/ban"},

	{"Bird Wings.txt","https://pastebin.com/raw/zm3e6eFT"},

	{"Bladed Lightning Dark Titan.txt","https://raw.githubusercontent.com/gitezgitgit/Dark-Titan/refs/heads/main/DARK%20TITAN%20SCRIPT%20SUPER%20RARE.txt"},

	{"Caducus.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/CADUCUS%20(FIXED)"},

	{"Chara.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Chara.lua"},

	{"Chrono Sentinel.txt","https://raw.githubusercontent.com/Lock1213/Scripts/refs/heads/main/Chrono%20Sentinel%20(Converted%20With%20Music)"},

	{"DB ShotGun.txt","https://pastefy.app/1RhJtgDi/raw"},

	{"DISTORTED.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/The%20Distorted"},

	{"Dominus Scythe.txt","https://raw.githubusercontent.com/gitezgitgit/rare-scripts/refs/heads/main/Scythe.txt"},

	{"Dual Tentacle Railgun Demon.txt","https://raw.githubusercontent.com/TEST19983/Assigment/refs/heads/main/Assignment"},

	{"Ender.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Ender"},

	{"Gaster Hands.txt","https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/GasterHands.txt"},

	{"Good Cop Bad Cop.txt","https://raw.githubusercontent.com/nicolasbarbosa323/good-cop-bad-coop/refs/heads/main/KwuminKa.txt"},

	{"Goner.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Goner.lua"},

	{"Grab Knife v1.txt","https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Grab%20Knife%20V1.lua"},

	{"Grab Knife v2.txt","https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Grab%20Knife%20V2.lua"},

	{"Grab Knife v3.txt","https://rawscripts.net/raw/Universal-Script-grab-knife-v3-9232"},

	{"Grab Knife v4.txt","https://raw.githubusercontent.com/Icalock/Server/refs/heads/main/Grab%20V4.txt"},

	{"Grakkeda.txt","https://raw.githubusercontent.com/nicolasbarbosa323/grakkeda/refs/heads/main/Roblox%20Genkadda%20omega%20leaked.txt"},

	{"Incension.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Incension%20Reborn"},

	{"Internal War.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Internal%20War.lua"},

	{"John Doe.txt","https://rawscripts.net/raw/Client-Replication-Join-doe-script-uploaded-by-gojohdkaisenkt-me-34101"},

	{"KillBot.txt","https://pastebin.com/raw/yraarJ7m"},

	{"Kirito Blades.txt","https://raw.githubusercontent.com/nicolasbarbosa323/the-angel/refs/heads/main/Kirito%20Blades.txt"},

	{"Kitchen Gun.txt","https://raw.githubusercontent.com/nicolasbarbosa323/rare/refs/heads/main/kitcher%20gun.lua"},

	{"Lost Hope Scythe.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Lost%20Hope%20Scythe.lua"},

	{"Lua Hammer.txt","https://pastefy.app/Nh7FVtvC/raw"},

	{"Majora's Mask.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Mask"},

	{"Minecraft Steve.txt","https://raw.githubusercontent.com/Test4267/steve/refs/heads/main/rare"},

	{"MLG GUN.txt","https://rawscripts.net/raw/Client-Replication-the-ss-loadstring-script-27393"},

	{"Mr ByeBye.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Mr.Bye%20Bye.lua"},

	{"Mr Pixels.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Mr.Pixels.lua"},

	{"Mystic.txt","https://pastefy.app/7R72UhO9/raw"},

	{"Nebula Star.txt","https://pastebin.com/raw/j09BnGB3"},

	{"Omni God.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Omni%20God"},

	{"Pandora.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/pandora"},

	{"Placeholder.txt","https://pastefy.app/CtVFoMMq/raw"},

	{"Primadon.txt","https://pastebin.com/raw/37iQzQp3"},

	{"Project 44033514.txt","https://raw.githubusercontent.com/gitezgitgit/Project-2044033514/refs/heads/main/Project%2044033514.lua.txt"},

	{"Rainbow King.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Rainbow%20Banisher"},

	{"Ravanger Claws.txt","https://raw.githubusercontent.com/nicolasbarbosa323/sin-dragon/refs/heads/main/reevenge%20hands.txt"},

	{"Red Sword Pickaxe.txt","https://raw.githubusercontent.com/ProBypasserHax1/Idkkk/refs/heads/main/Red%20Sword%20Pickaxe.txt"},

	{"Red Trail Scythe.txt","https://pastebin.com/raw/KPYbrH1C"},

	{"Robot.txt","https://pastefy.app/ur8n4dc6/raw"},

	{"RUIN EX.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/RUIN%20EX"},

	{"RUIN IX.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/RUIN%20IX"},

	{"SCP-106.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/SCP-106"},

	{"Scary Ronald McDonald.txt","https://raw.githubusercontent.com/HappyCow91/RobloxScripts/refs/heads/main/ClientSided/clown.lua"},

	{"Server Admin.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Server%20Admin.lua"},

	{"Shadow Ravanger Claws.txt","https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Shadow%20Ravager.lua"},

	{"Sin Dragon.txt","https://raw.githubusercontent.com/gitezgitgit/Sin-Dragon/refs/heads/main/Sin%20Dragon.lua.txt"},

	{"Sin Unleashed.txt","https://raw.githubusercontent.com/gitezgitgit/Sin-Unleashed/refs/heads/main/Sin%20Unleashed.lua.txt"},

	{"Soul Reaper.txt","https://raw.githubusercontent.com/gObl00x/My-Converts/refs/heads/main/Soul%20Reaper.lua"},

	{"Spectrum Glitcher.txt","https://raw.githubusercontent.com/nicolasbarbosa323/SCPECTRUMGLITCHER/refs/heads/main/SpectrumG%20(1).txt"},

	{"SpiderBot.txt","https://pastebin.com/raw/XNVWznPH"},

	{"Studio Dummy.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Studio%20Dummy"},

	{"Sutart.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Sutart"},

	{"The Angel.txt","https://raw.githubusercontent.com/nicolasbarbosa323/the-angel/refs/heads/main/The%20Angel.txt"},

	{"The Assasian.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/The%20Assasian"},

	{"The Banisher.txt","https://raw.githubusercontent.com/retpirato/Roblox-Scripts/refs/heads/master/Banisher.lua"},

	{"The Boys.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/Boys"},

	{"The Sun Is A Deadly Laser.txt","https://raw.githubusercontent.com/gObl00x/Pendulum-Fixed-AND-Others-Scripts/refs/heads/main/The%20Sun%20Is%20A%20Deadly%20Laser"},

	{"Thomas.txt","https://raw.githubusercontent.com/Sugm4Bullet1/LuaXXccL/refs/heads/main/Thomas"},

	{"Titan.txt","https://raw.githubusercontent.com/TEST19983/Reslasjd/refs/heads/main/attac"},

	{"True Hero ULTIMATE.txt","https://pastebin.com/raw/m7r4Qeu1"},

	{"Vereus.txt","https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/fLrx77PM.txt"},

	{"Void Boss.txt","https://raw.githubusercontent.com/ian49972/SCRIPTS/refs/heads/main/come%20back"},

	{"White And Dark Titan.txt","https://pastebin.com/raw/Tf8zhZ4w"},

	{"Xester.txt","https://raw.githubusercontent.com/nicolasbarbosa323/xester/refs/heads/main/qC7MUFRJ.txt"},

    {"Hacker_Project_1.txt","https://raw.githubusercontent.com/kvsna3545-pixel/Hacker_Project_1/refs/heads/main/Hacker_Project_1.0.lua"},

}

table.sort(scripts, function(a,b) return string.lower(a[1]) < string.lower(b[1]) end)

-- Logo (persistent, rotating, on top)

local logoGui = Instance.new("ScreenGui")

logoGui.Name = "executorLogo"

logoGui.ResetOnSpawn = false

logoGui.IgnoreGuiInset = true

logoGui.ZIndexBehavior = Enum.ZIndexBehavior.Global

logoGui.Parent = player:WaitForChild("PlayerGui")

local lel = Instance.new("ImageButton")

lel.Name = "Logo"

lel.Size = UDim2.new(0, 100, 0, 100)

lel.Position = UDim2.new(-0.127000004, 0, 0.407999992, 0)

lel.BackgroundColor3 = Color3.new(0,0,0)

lel.ImageColor3 = Color3.new(1,1,1)

lel.Image = "rbxassetid://99168471635791"

lel.Parent = logoGui

lel.BackgroundTransparency = 1

lel.ZIndex = 10000

local Ring = Instance.new("ImageLabel")

Ring.Name = "Ring"

Ring.Size = UDim2.new(2,0,2,0)

Ring.Position = UDim2.new(0,0,0,0)

Ring.BackgroundColor3 = Color3.new(0,0,0)

Ring.ImageColor3 = Color3.new(0,0,0)

Ring.Image = "rbxassetid://7102118272"

Ring.Parent = lel

Ring.BackgroundTransparency = 1

Ring.ZIndex = 10001

local Orbit = Instance.new("ImageLabel")

Orbit.Name = "Orbit"

Orbit.Size = UDim2.new(0,21,0,21)

Orbit.Position = UDim2.new(0,0,0,10)

Orbit.BackgroundColor3 = Color3.new(0,0,0)

Orbit.ImageColor3 = Color3.new(1,1,1)

Orbit.Image = "rbxassetid://0"

Orbit.Parent = Ring

Orbit.BackgroundTransparency = 1

Orbit.ZIndex = 10002

task.spawn(function()

	lel:TweenPosition(UDim2.new(0.458, 0, 0.408, 0), "Out", "Linear", 0.4, true)

	task.wait(3)

	lel:TweenPosition(UDim2.new(0, 9, 0, 190), "Out", "Sine", 0.7, true)

end)

task.spawn(function()

	while true do

		task.wait(0.03)

		Ring.Rotation = Ring.Rotation + 1

		Orbit.Rotation = Orbit.Rotation - 1

	end

end)

-- Main GUI (persistent)

local gui = Instance.new("ScreenGui")

gui.Name = "kvsna3545 SS"

gui.ResetOnSpawn = false

gui.IgnoreGuiInset = true

gui.Parent = player:WaitForChild("PlayerGui")

gui.Enabled = true

local frame = Instance.new("Frame")

frame.Name = "MainFrame"

frame.Size = UDim2.new(0, 600, 0, 350)

frame.Position = UDim2.new(0.2, 0, 0.25, 0)

frame.BackgroundColor3 = Color3.fromRGB(255,255,255)

frame.BorderSizePixel = 2

frame.BorderColor3 = Color3.fromRGB(0,0,0)

frame.Active = true

frame.Parent = gui

local titleBar = Instance.new("TextLabel")

titleBar.Name = "TitleBar"

titleBar.Size = UDim2.new(1, 0, 0, 25)

titleBar.Position = UDim2.new(0,0,0,0)

titleBar.BackgroundColor3 = Color3.fromRGB(0,0,0)

titleBar.Text = "   kvsna3545 SS"

titleBar.TextColor3 = Color3.fromRGB(255,255,255)

titleBar.Font = Enum.Font.SourceSansBold

titleBar.TextSize = 17

titleBar.TextXAlignment = Enum.TextXAlignment.Left

titleBar.Parent = frame

local scriptHubFrame = Instance.new("ScrollingFrame")

scriptHubFrame.Name = "ScriptHub"

scriptHubFrame.Size = UDim2.new(0, 150, 1, -2)

scriptHubFrame.Position = UDim2.new(1, -152, 0, 1)

scriptHubFrame.BackgroundColor3 = Color3.fromRGB(240,240,240)

scriptHubFrame.BorderSizePixel = 2

scriptHubFrame.BorderColor3 = Color3.fromRGB(0,0,0)

scriptHubFrame.ScrollBarThickness = 8

scriptHubFrame.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)

scriptHubFrame.CanvasSize = UDim2.new(0,0,0,0)

scriptHubFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y

scriptHubFrame.Parent = frame

local scriptBox = Instance.new("TextBox")

scriptBox.Name = "ScriptBox"

scriptBox.Size = UDim2.new(1, -170, 1, -95)

scriptBox.Position = UDim2.new(0, 10, 0, 35)

scriptBox.BackgroundColor3 = Color3.fromRGB(0,0,0)

scriptBox.TextColor3 = Color3.fromRGB(255,255,255)

scriptBox.Font = Enum.Font.Code

scriptBox.TextSize = 16

scriptBox.MultiLine = true

scriptBox.ClearTextOnFocus = false

scriptBox.TextXAlignment = Enum.TextXAlignment.Left

scriptBox.TextYAlignment = Enum.TextYAlignment.Top

scriptBox.TextWrapped = true

scriptBox.ClipsDescendants = true

scriptBox.Text = ""

scriptBox.Parent = frame

local padding = Instance.new("UIPadding")

padding.PaddingLeft = UDim.new(0,8)

padding.PaddingTop = UDim.new(0,8)

padding.PaddingRight = UDim.new(0,8)

padding.PaddingBottom = UDim.new(0,8)

padding.Parent = scriptBox

local executeButton = Instance.new("TextButton")

executeButton.Name = "ExecuteButton"

executeButton.Size = UDim2.new(0, 120, 0, 30)

executeButton.Position = UDim2.new(0, 10, 1, -45)

executeButton.BackgroundColor3 = Color3.fromRGB(0,0,0)

executeButton.BorderColor3 = Color3.fromRGB(0,0,0)

executeButton.BorderSizePixel = 2

executeButton.Text = "Execute"

executeButton.TextColor3 = Color3.fromRGB(255,255,255)

executeButton.Font = Enum.Font.SourceSansBold

executeButton.TextSize = 15

executeButton.AutoButtonColor = false

executeButton.Parent = frame

local clearButton = Instance.new("TextButton")

clearButton.Name = "ClearButton"

clearButton.Size = UDim2.new(0, 120, 0, 30)

clearButton.Position = UDim2.new(0, 140, 1, -45)

clearButton.BackgroundColor3 = Color3.fromRGB(0,0,0)

clearButton.BorderColor3 = Color3.fromRGB(0,0,0)

clearButton.BorderSizePixel = 2

clearButton.Text = "Clear"

clearButton.TextColor3 = Color3.fromRGB(255,255,255)

clearButton.Font = Enum.Font.SourceSansBold

clearButton.TextSize = 15

clearButton.AutoButtonColor = false

clearButton.Parent = frame

local function pressEffect(button)

	button.MouseButton1Down:Connect(function()

		button.BackgroundColor3 = Color3.fromRGB(180,220,255)

	end)

	button.MouseButton1Up:Connect(function()

		button.BackgroundColor3 = Color3.fromRGB(255,255,255)

	end)

	button.MouseLeave:Connect(function()

		button.BackgroundColor3 = Color3.fromRGB(255,255,255)

	end)

end

pressEffect(executeButton)

pressEffect(clearButton)

local function makeLoadstringText(url)

	if not url or url == "" then return "-- no url provided" end

	return "-- Remote script URL (inspect before running)\n-- To run manually after review, paste this into the editor and press Execute:\nloadstring(game:HttpGet(\"" .. url:gsub("\"","\\\"") .. "\"))()\n\n"

end

local y = 10

for _, entry in ipairs(scripts) do

	local name, url = entry[1], entry[2]

	local btn = Instance.new("TextButton")

	btn.Name = name

	btn.Size = UDim2.new(1, -10, 0, 30)

	btn.Position = UDim2.new(0, 5, 0, y)

	btn.BackgroundColor3 = Color3.fromRGB(255,255,255)

	btn.BorderColor3 = Color3.fromRGB(0,0,0)

	btn.BorderSizePixel = 2

	btn.Text = name

	btn.TextColor3 = Color3.fromRGB(0,0,0)

	btn.Font = Enum.Font.SourceSans

	btn.TextScaled = true

	btn.TextWrapped = true

	btn.TextSize = 14

	btn.ClipsDescendants = true

	btn.AutoButtonColor = false

	btn.ZIndex = 2

	btn.Parent = scriptHubFrame

	btn.MouseButton1Down:Connect(function()

		btn.BackgroundColor3 = Color3.fromRGB(180,220,255)

	end)

	btn.MouseButton1Up:Connect(function()

		btn.BackgroundColor3 = Color3.fromRGB(255,255,255)

	end)

	btn.MouseLeave:Connect(function()

		btn.BackgroundColor3 = Color3.fromRGB(255,255,255)

	end)

	btn.MouseButton1Click:Connect(function()

		scriptBox.Text = makeLoadstringText(url)

	end)

	y = y + 35

end

scriptHubFrame.CanvasSize = UDim2.new(0,0,0, math.max(0, y))

executeButton.MouseButton1Click:Connect(function()

	local code = scriptBox.Text

	if code and code ~= "" then

		local ok, err = pcall(function()

			local func, loadErr = loadstring(code)

			if not func then error("loadstring error: "..tostring(loadErr)) end

			func()

		end)

		if not ok then warn("Executor error:", err) end

	end

end)

clearButton.MouseButton1Click:Connect(function()

	scriptBox.Text = ""

end)

lel.MouseButton1Click:Connect(function()

	gui.Enabled = not gui.Enabled

end)

local dragging = false

local dragInput, dragStart, startPos

local function update(input)

	local delta = input.Position - dragStart

	frame.Position = UDim2.new(

		startPos.X.Scale, startPos.X.Offset + delta.X,

		startPos.Y.Scale, startPos.Y.Offset + delta.Y

	)

end

titleBar.InputBegan:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then

		dragging = true

		dragStart = input.Position

		startPos = frame.Position

		input.Changed:Connect(function()

			if input.UserInputState == Enum.UserInputState.End then

				dragging = false

			end

		end)

	end

end)

titleBar.InputChanged:Connect(function(input)

	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then

		dragInput = input

	end

end)

UserInputService.InputChanged:Connect(function(input)

	if dragging and input == dragInput then

		update(input)

	end

end)
