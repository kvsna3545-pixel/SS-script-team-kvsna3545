-- [ Window 7 Server Side GUI by 00script ] --


local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer

-- ============================================================
--                          GUI BUILD
-- ============================================================

local ScreenGui_1 = Instance.new("ScreenGui")
ScreenGui_1.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui_1.ResetOnSpawn = false
ScreenGui_1.Parent = LocalPlayer:WaitForChild("PlayerGui")

local ImageLabel_2 = Instance.new("ImageLabel")
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.Image = "rbxassetid://97543298401441"
ImageLabel_2.Size = UDim2.new(0, 640, 0, 354)
ImageLabel_2.Position = UDim2.new(0, 42, 0, -14)
ImageLabel_2.Parent = ScreenGui_1

Instance.new("UICorner", ImageLabel_2)

local TextLabel_4 = Instance.new("TextLabel")
TextLabel_4.BorderSizePixel = 0
TextLabel_4.TextSize = 28
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.FontFace = Font.new("rbxasset://fonts/families/Inconsolata.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1
TextLabel_4.Size = UDim2.new(0, 344, 0, 32)
TextLabel_4.Text = "Window 7 sever side"
TextLabel_4.Position = UDim2.new(0, 40, 0, 26)
TextLabel_4.Parent = ImageLabel_2

local ScrollingFrame_5 = Instance.new("ScrollingFrame")
ScrollingFrame_5.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollingFrame_5.BorderSizePixel = 0
ScrollingFrame_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame_5.Size = UDim2.new(0, 612, 0, 222)
ScrollingFrame_5.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame_5.Position = UDim2.new(0, 10, 0, 70)
ScrollingFrame_5.ScrollBarThickness = 1
ScrollingFrame_5.BackgroundTransparency = 0.3
ScrollingFrame_5.Parent = ImageLabel_2

Instance.new("UICorner", ScrollingFrame_5)

local TextBox_7 = Instance.new("TextBox")
TextBox_7.TextXAlignment = Enum.TextXAlignment.Left
TextBox_7.BorderSizePixel = 0
TextBox_7.TextSize = 12
TextBox_7.TextYAlignment = Enum.TextYAlignment.Top
TextBox_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox_7.PlaceholderText = "-- put sever script you here"
TextBox_7.Size = UDim2.new(0, 612, 0, 728)
TextBox_7.Text = ""
TextBox_7.BackgroundTransparency = 0.3
TextBox_7.MultiLine = true
TextBox_7.ClearTextOnFocus = false
TextBox_7.Parent = ScrollingFrame_5

Instance.new("UICorner", TextBox_7)

local function makeButton(text, size, pos, bgColor, textColor, parent)
    local btn = Instance.new("TextButton")
    btn.BorderSizePixel = 0
    btn.TextSize = 15
    btn.Text = text
    btn.Size = size
    btn.Position = pos
    btn.BackgroundColor3 = bgColor
    btn.TextColor3 = textColor or Color3.fromRGB(255, 255, 255)
    btn.Parent = parent or ImageLabel_2
    Instance.new("UICorner", btn)
    return btn
end

local dark = Color3.fromRGB(28, 28, 28)
local white = Color3.fromRGB(255, 255, 255)

-- Close (shadow)
local TextButton_9 = makeButton("×", UDim2.new(0,66,0,54), UDim2.new(0,566,0,6), Color3.fromRGB(138,138,138))
TextButton_9.TextSize = 30

-- Close (main)
local TextButton_b = makeButton("×", UDim2.new(0,58,0,46), UDim2.new(0,570,0,10), dark)
TextButton_b.TextSize = 30

-- Execute
local TextButton_d = makeButton("execute", UDim2.new(0,144,0,46), UDim2.new(0,8,0,300), dark)

-- Clear
local TextButton_f = makeButton("Clear", UDim2.new(0,144,0,46), UDim2.new(0,156,0,300), dark)

-- Load
local TextButton_11 = makeButton("load", UDim2.new(0,128,0,46), UDim2.new(0,306,0,300), dark)

-- R6
local TextButton_13 = makeButton("R6", UDim2.new(0,90,0,48), UDim2.new(0,438,0,300), dark)

-- RE
local TextButton_15 = makeButton("RE", UDim2.new(0,96,0,48), UDim2.new(0,534,0,300), dark)

-- Scan (shadow)
local TextButton_17 = makeButton("Scan", UDim2.new(0,104,0,52), UDim2.new(0,450,0,8), Color3.fromRGB(139,139,139))

-- Scan (main)
local TextButton_19 = makeButton("Scan", UDim2.new(0,100,0,48), UDim2.new(0,452,0,10), dark)

-- Status Label
local TextLabel_1b = Instance.new("TextLabel")
TextLabel_1b.TextWrapped = true
TextLabel_1b.BorderSizePixel = 0
TextLabel_1b.TextScaled = true
TextLabel_1b.BackgroundColor3 = white
TextLabel_1b.TextDirection = Enum.TextDirection.LeftToRight
TextLabel_1b.TextColor3 = white
TextLabel_1b.BackgroundTransparency = 1
TextLabel_1b.Size = UDim2.new(0, 146, 0, 24)
TextLabel_1b.Text = "Hello user"
TextLabel_1b.Position = UDim2.new(0, 286, 0, 6)
TextLabel_1b.Parent = ImageLabel_2

Instance.new("UIDragDetector", ImageLabel_2)

-- ============================================================
--                        BUTTON LOGIC
-- ============================================================

local function setStatus(msg, color)
    TextLabel_1b.Text = msg
    TextLabel_1b.TextColor3 = color or white
    task.delay(3, function()
        TextLabel_1b.Text = "Hello user"
        TextLabel_1b.TextColor3 = white
    end)
end

-- [CLOSE]
TextButton_b.MouseButton1Click:Connect(function()
    ScreenGui_1:Destroy()
end)
TextButton_9.MouseButton1Click:Connect(function()
    ScreenGui_1:Destroy()
end)

-- [CLEAR]
TextButton_f.MouseButton1Click:Connect(function()
    TextBox_7.Text = ""
    setStatus("Cleared!", Color3.fromRGB(100, 200, 255))
end)

-- [EXECUTE] รองรับ require()
TextButton_d.MouseButton1Click:Connect(function()
    local code = TextBox_7.Text
    if code == "" or code == nil then
        setStatus("No code!", Color3.fromRGB(255, 100, 100))
        return
    end

    local ok, err = pcall(function()
        -- สร้าง environment ที่มี require และ function อื่นๆ ครบ
        local env = setmetatable({
            require        = require,
            game           = game,
            workspace      = workspace,
            script         = script,
            print          = print,
            warn           = warn,
            wait           = task.wait,
            task           = task,
            pairs          = pairs,
            ipairs         = ipairs,
            tostring       = tostring,
            tonumber       = tonumber,
            math           = math,
            table          = table,
            string         = string,
            Instance       = Instance,
            Color3         = Color3,
            UDim2          = UDim2,
            Vector3        = Vector3,
            Enum           = Enum,
            pcall          = pcall,
            xpcall         = xpcall,
            unpack         = unpack,
            type           = type,
            rawget         = rawget,
            rawset         = rawset,
            setmetatable   = setmetatable,
            getmetatable   = getmetatable,
        }, { __index = getfenv() })

        local fn, syntaxErr = loadstring(code)
        if not fn then
            error("Syntax: " .. tostring(syntaxErr))
        end

        setfenv(fn, env)
        fn()
    end)

    if ok then
        setStatus("Executed!", Color3.fromRGB(100, 255, 100))
    else
        setStatus("Error!", Color3.fromRGB(255, 80, 80))
        warn("[Execute Error]: " .. tostring(err))
    end
end)
-- [R6] โหลด R6 Script ลง TextBox
TextButton_13.MouseButton1Click:Connect(function()
    TextBox_7.Text = [[-- R6 Character Script
local Players = game:GetService("Players")
local player = Players.LocalPlayer

game:GetService("StarterPlayer").CharacterAdded:Connect(function(char)
    local hum = char:WaitForChild("Humanoid")
    hum.RigType = Enum.HumanoidRigType.R6
end)

player:LoadCharacter()
print("[R6] Changed to R6!")]]
    setStatus("R6 Script Loaded!", Color3.fromRGB(100, 200, 255))
end)

-- [RE] รีตัวละคร
TextButton_15.MouseButton1Click:Connect(function()
    local ok, err = pcall(function()
        LocalPlayer:LoadCharacter()
    end)
    if ok then
        setStatus("Respawned!", Color3.fromRGB(100, 255, 150))
    else
        -- ถ้า LoadCharacter ใช้ไม่ได้ ให้ทำลาย HumanoidRootPart แทน
        local ok2, err2 = pcall(function()
            local char = LocalPlayer.Character
            if char then
                local hum = char:FindFirstChildOfClass("Humanoid")
                if hum then
                    hum.Health = 0
                end
            end
        end)
        if ok2 then
            setStatus("Respawned!", Color3.fromRGB(100, 255, 150))
        else
            setStatus("Failed!", Color3.fromRGB(255, 80, 80))
            warn("[RE Error]: " .. tostring(err2))
        end
    end
end)

-- ============================================================
--                    SCAN SYSTEM (NEW)
-- ============================================================

local scanning = false
local FinishedFound = false
local foundList = {}
local scanTime = 0

-- คำต้องสงสัยเพิ่มเติม
local SUSPICIOUS_NAMES = {
    "backdoor","bd","exec","execute","run","eval",
    "cmd","command","hack","bypass","exploit","admin",
    "sys","system","hidden","secret","load","require",
    "inject","fire","trigger","payload","remote","re",
    "rc","ss","serverside","srv","gate","entry","hook",
    "loader","init","start","launch","deploy","call",
    "sender","receiver","bridge","tunnel","pipe","link",
    "connect","auth","key","token","pass","code","data",
    "test","temp","tmp","unnamed","script","module",
}

-- ที่อยู่ทั้งหมดที่ client มองเห็น
local SCAN_LOCATIONS = {
    game:GetService("Workspace"),
    game:GetService("ReplicatedStorage"),
    game:GetService("ReplicatedFirst"),
    game:GetService("StarterGui"),
    game:GetService("StarterPack"),
    game:GetService("StarterPlayer"),
    game:GetService("Lighting"),
    game:GetService("Players"),
    game:GetService("SoundService"),
    game:GetService("Teams"),
    game:GetService("Chat"),
}

local function isSuspicious(name)
    if name == "" or name:match("^%s+$") then return true end
    local lower = name:lower()
    for _, kw in ipairs(SUSPICIOUS_NAMES) do
        if lower == kw or lower:find(kw) then return true end
    end
    return false
end

-- เช็คชื่อที่สั้นเกินไป (มักเป็น backdoor)
local function isShortName(name)
    return #name <= 2 and name ~= ""
end

-- เช็ค script ที่ถูก Disable ซ่อนอยู่
local function isHiddenScript(obj)
    if obj:IsA("BaseScript") or obj:IsA("ModuleScript") then
        if obj.Disabled == true then return true end
    end
    return false
end

-- เช็คตำแหน่งผิดปกติ เช่น Script อยู่ใน Part
local function isWeirdLocation(obj)
    local parent = obj.Parent
    if not parent then return false end
    local weirdHosts = {"Part","MeshPart","UnionOperation","SpecialMesh","Sound","Decal","Texture"}
    for _, host in ipairs(weirdHosts) do
        if parent:IsA(host) then return true end
    end
    return false
end

local function findRemote()
    foundList = {}
    FinishedFound = false
    local startTime = tick()

    for _, location in ipairs(SCAN_LOCATIONS) do
        local ok, descendants = pcall(function()
            return location:GetDescendants()
        end)
        if not ok then continue end

        for _, obj in ipairs(descendants) do
            local name = obj.Name
            local class = obj.ClassName
            local entry = nil

            -- 1. RemoteEvent / RemoteFunction ชื่อต้องสงสัย
            if (class == "RemoteEvent" or class == "RemoteFunction") then
                if isSuspicious(name) or isShortName(name) then
                    entry = {
                        icon  = "🟢",
                        class = class,
                        name  = name,
                        path  = obj:GetFullName(),
                        reason = "Suspicious remote name",
                    }
                end
            end

            -- 2. Script / LocalScript / ModuleScript ต้องสงสัย
            if class == "Script" or class == "LocalScript" or class == "ModuleScript" then
                if isSuspicious(name) or isShortName(name) then
                    entry = {
                        icon  = "🟢",
                        class = class,
                        name  = name,
                        path  = obj:GetFullName(),
                        reason = "Suspicious script name",
                    }
                elseif isHiddenScript(obj) then
                    entry = {
                        icon  = "🟢",
                        class = class,
                        name  = name,
                        path  = obj:GetFullName(),
                        reason = "Disabled/hidden script",
                    }
                elseif isWeirdLocation(obj) then
                    entry = {
                        icon  = "🟢",
                        class = class,
                        name  = name,
                        path  = obj:GetFullName(),
                        reason = "Script in weird location",
                    }
                end
            end

            -- 3. BindableEvent / BindableFunction ชื่อต้องสงสัย
            if class == "BindableEvent" or class == "BindableFunction" then
                if isSuspicious(name) or isShortName(name) then
                    entry = {
                        icon  = "🟢",
                        class = class,
                        name  = name,
                        path  = obj:GetFullName(),
                        reason = "Suspicious bindable name",
                    }
                end
            end

            -- 4. Object ชื่อว่าง หรือ space ล้วน
            if name == "" or name:match("^%s+$") then
                entry = {
                    icon  = "🟢",
                    class = class,
                    name  = "[blank name]",
                    path  = obj:GetFullName(),
                    reason = "Hidden (blank name)",
                }
            end

            -- 5. ชื่อสั้น 1-2 ตัวอักษรใน remote
            if (class == "RemoteEvent" or class == "RemoteFunction") and isShortName(name) then
                entry = {
                    icon  = "🟢",
                    class = class,
                    name  = name,
                    path  = obj:GetFullName(),
                    reason = "Very short remote name (suspicious)",
                }
            end

            if entry then
                -- กันซ้ำ
                local dup = false
                for _, v in ipairs(foundList) do
                    if v.path == entry.path then dup = true break end
                end
                if not dup then
                    table.insert(foundList, entry)
                end
            end
        end
    end

    scanTime = math.floor((tick() - startTime) * 100) / 100
    FinishedFound = true
end

local function doScan()
    if scanning then return end
    scanning = true
    FinishedFound = false

    TextButton_19.Visible = false
    TextButton_17.Visible = false
    TextBox_7.Text = "🔍 Deep scanning for backdoors..."
    setStatus("Scanning...", Color3.fromRGB(255, 184, 71))

    task.spawn(findRemote)

    repeat task.wait() until FinishedFound

    local lines = {}

    if #foundList > 0 then
        table.insert(lines, "====== BACKDOOR SCAN REPORT ======")
        table.insert(lines, "⏱ Time   : " .. scanTime .. "s")
        table.insert(lines, "🟢 Found  : " .. #foundList .. " suspicious item(s)")
        table.insert(lines, "----------------------------------")

        for i, item in ipairs(foundList) do
            table.insert(lines, string.format(
                "[%d] %s %s\n    Class  : %s\n    Name   : %s\n    Path   : %s\n    Reason : %s",
                i, item.icon, item.name,
                item.class, item.name,
                item.path, item.reason
            ))
        end

        table.insert(lines, "----------------------------------")
        table.insert(lines, "⚠ Check items above carefully!")
        table.insert(lines, "==================================")

        TextBox_7.Text = table.concat(lines, "\n")
        setStatus("Found " .. #foundList .. " item(s)!", Color3.fromRGB(159, 226, 191))

        -- Notification
        local firstName = foundList[1].name
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "🔍 Backdoor Scanner",
            Text = "Found " .. #foundList .. " suspect(s) in " .. scanTime .. "s!\nFirst: " .. firstName,
            Duration = 6,
        })

    else
        table.insert(lines, "====== SCAN COMPLETE ======")
        table.insert(lines, "✅ No backdoors found!")
        table.insert(lines, "⏱ Time : " .. scanTime .. "s")
        table.insert(lines, "   Map looks clean.")
        table.insert(lines, "===========================")

        TextBox_7.Text = table.concat(lines, "\n")
        setStatus("Clean! ✅", Color3.fromRGB(100, 255, 150))
        task.wait(3)
    end

    TextButton_19.Visible = true
    TextButton_17.Visible = true
    scanning = false
end

TextButton_19.MouseButton1Click:Connect(doScan)
TextButton_17.MouseButton1Click:Connect(doScan)
