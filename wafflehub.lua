local EventGreeting = game:GetService("ReplicatedStorage").Remotes.AlertNotification
firesignal(EventGreeting.OnClientEvent, 
    "NENORMALHII, the genius, the waffleman made this!.. wow.. holy shit.",
    {
        TextColor3 = Color3.fromRGB(255, 0, 70)
    }
)

local plr = game.Players.LocalPlayer

local success, r = pcall(function() -----------------------------------------initgui
if plr.PlayerGui:FindFirstChild("nenowafflehub") then
    plr.PlayerGui:FindFirstChild("nenowafflehub"):Destroy()
end
if plr.PlayerGui.MainGui.Hud.MenuFrame.Tabs.Container:FindFirstChild("Waffle") then
    plr.PlayerGui.MainGui.Hud.MenuFrame.Tabs.Container:WaitForChild("Waffle"):Destroy()
end

local screengui = Instance.new("ScreenGui", plr.PlayerGui)
screengui.Name = "nenowafflehub"
screengui.IgnoreGuiInset = true
screengui.ResetOnSpawn = false
screengui.DisplayOrder = 20000

local closeb = plr.PlayerGui.MainGui.Hud.MenuFrame.Tabs.Container:WaitForChild("Settings"):Clone()
closeb.Parent = plr.PlayerGui.MainGui.Hud.MenuFrame.Tabs.Container
closeb.Name = "Waffle"
closeb.Button.TextLabel.Text = "Yummy Waffles"
closeb.Button.Icon.Image = "rbxassetid://122488719941786"
closeb.Button.Icon.ScaleType = Enum.ScaleType.Crop
closeb.Button.BackgroundColor3 = Color3.fromRGB(255, 0, 80)

closeb.Button.MouseButton1Click:Connect(function()
    screengui.Enabled = not screengui.Enabled
end)

local function createtextlabel(text, size, pos, parent, hasbg, isleft, hasaero)
	local textlabel = Instance.new("TextLabel", parent)
	textlabel.Text = text
	textlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	textlabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
	textlabel.Font = Enum.Font.SourceSans
	textlabel.TextScaled = true
	textlabel.Size = size
	textlabel.TextStrokeTransparency = 0
	textlabel.Position = pos
	textlabel.BackgroundTransparency = 1
	textlabel.ZIndex = 51
	if hasbg == true then
		textlabel.BackgroundTransparency = 1
		textlabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		textlabel.BorderSizePixel = 0
	end
    if isleft == true then
        textlabel.TextXAlignment = Enum.TextXAlignment.Left
    end
    if hasaero == true then
        local textaero = Instance.new("ImageLabel")
        textaero.Parent = textlabel
        textaero.Size = UDim2.new(1, 0, 1, 0)
        textaero.Position = UDim2.new(0, 0, 0, 0)
        textaero.Image = "rbxassetid://305266753"
        textaero.ScaleType = Enum.ScaleType.Slice
        textaero.SliceCenter = Rect.new(10, 10, 10, 10)
        textaero.BackgroundTransparency = 1
        textlabel.ClipsDescendants = false
        textaero.ZIndex = 52
    end
end

local gui = Instance.new("ImageLabel")
gui.Parent = screengui
gui.Size = UDim2.new(0.37, 0,0.47, 0)
gui.Position = UDim2.new(0.398, 0, 0.4, 0)
gui.ZIndex = 50
gui.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
gui.BackgroundTransparency = 0.7
gui.ImageTransparency = 1
gui.BorderSizePixel = 0

local guiaero = Instance.new("ImageLabel")
guiaero.Parent = gui
guiaero.Size = UDim2.new(1, 16,1, 16)
guiaero.Position = UDim2.new(0, -8, 0, -8)
guiaero.ZIndex = 51
guiaero.Image = "rbxassetid://305266753"
guiaero.BackgroundTransparency = 1
guiaero.ScaleType = Enum.ScaleType.Slice
guiaero.SliceCenter = Rect.new(10, 10, 10, 10)
guiaero.ImageTransparency = 0
guiaero.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
guiaero.BorderSizePixel = 0

createtextlabel("neno waffle hub",UDim2.new(1, 0,0.07, 0),UDim2.new(0, 0, 0, 0),gui,false,true)

local mainscroll = Instance.new("ScrollingFrame", gui)
mainscroll.Size = UDim2.new(1, 0,0.9, 0)
mainscroll.Position = UDim2.new(0, 0,0.1, 0)
mainscroll.BackgroundTransparency = 0.5
mainscroll.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
mainscroll.ZIndex = 51
mainscroll.ScrollBarThickness = 2
mainscroll.BorderSizePixel = 0
mainscroll.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
mainscroll.CanvasSize = UDim2.new(0, 0, 2, 0)
--mainscroll.ScrollingDirection = Enum.ScrollingDirection.Y
--mainscroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
mainscroll.ClipsDescendants = true

local corner = Instance.new("UICorner")
corner.Parent = mainscroll
corner.CornerRadius = UDim.new(0, 5)

createtextlabel("auto farm stuffs. (WORKS ONLY IF YOU HAVE THE WEAPON IN HANDS!)",UDim2.new(1, 0,0.006, 50),UDim2.new(0, 0,0.011, 0),mainscroll, false, false, true)

local enablefarm = Instance.new("TextButton", mainscroll)
enablefarm.Size = UDim2.new(0.878, 0, -0.012, 50)
enablefarm.Position = UDim2.new(0.061, 0,0.1, 0)
enablefarm.Text = "enable farm: false"
enablefarm.TextColor3 = Color3.fromRGB(255, 0, 85)
enablefarm.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
enablefarm.TextStrokeTransparency = 0
enablefarm.Font = Enum.Font.SourceSans
enablefarm.TextScaled = true
enablefarm.BackgroundTransparency = 1
enablefarm.ZIndex = 52
local enablefarmaero = Instance.new("ImageLabel")
enablefarmaero.Parent = enablefarm
enablefarmaero.Size = UDim2.new(1, 4,1, 4)
enablefarmaero.Position = UDim2.new(0, -2, 0, -2)
enablefarmaero.ZIndex = 53
enablefarmaero.Image = "rbxassetid://305266753"
enablefarmaero.BackgroundTransparency = 1
enablefarmaero.ScaleType = Enum.ScaleType.Slice
enablefarmaero.SliceCenter = Rect.new(10, 10, 10, 10)
enablefarmaero.ImageTransparency = 0
enablefarmaero.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
enablefarmaero.BorderSizePixel = 0

enablefarm.MouseButton1Click:Connect(function()
	if enablefarm.Text == "enable farm: false" then
		enablefarm.Text = "enable farm: true"
        enablefarm.TextColor3 = Color3.fromRGB(0, 255, 85)
	else
		enablefarm.Text = "enable farm: false"
        enablefarm.TextColor3 = Color3.fromRGB(255, 0, 85)
	end
    firesignal(EventGreeting.OnClientEvent, 
    "This setting only affects Tick damage part. Auto drops and invis will still work if enabled.",
    {
        TextColor3 = Color3.fromRGB(255, 0, 70)
    }
)
end)

local tick = Instance.new("TextBox", mainscroll)
tick.Size = UDim2.new(0.878, 0, -0.012, 50)
tick.Position = UDim2.new(0.061, 0,0.15, 0)
tick.PlaceholderText = "autofarm tick cooldown: number"
tick.Text = ""
tick.PlaceholderColor3 = Color3.fromRGB(175, 175, 175)
tick.TextColor3 = Color3.fromRGB(255, 255, 255)
tick.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
tick.TextStrokeTransparency = 0
tick.Font = Enum.Font.SourceSans
tick.TextScaled = true
tick.BackgroundTransparency = 1
tick.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tick.ZIndex = 52
tick.ClipsDescendants = false
local tickaero = Instance.new("ImageLabel")
tickaero.Parent = tick
tickaero.Size = UDim2.new(1, 4,1, 4)
tickaero.Position = UDim2.new(0, -2, 0, -2)
tickaero.ZIndex = 53
tickaero.Image = "rbxassetid://305266753"
tickaero.BackgroundTransparency = 1
tickaero.ScaleType = Enum.ScaleType.Slice
tickaero.SliceCenter = Rect.new(10, 10, 10, 10)
tickaero.ImageTransparency = 0
tickaero.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
tickaero.BorderSizePixel = 0

local bosstick = Instance.new("TextBox", mainscroll)
bosstick.Size = UDim2.new(0.878, 0, -0.012, 50)
bosstick.Position = UDim2.new(0.061, 0,0.2, 0)
bosstick.PlaceholderText = "boss tick cooldown: number"
bosstick.Text = ""
bosstick.PlaceholderColor3 = Color3.fromRGB(175, 175, 175)
bosstick.TextColor3 = Color3.fromRGB(255, 255, 255)
bosstick.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
bosstick.TextStrokeTransparency = 0
bosstick.Font = Enum.Font.SourceSans
bosstick.TextScaled = true
bosstick.BackgroundTransparency = 1
bosstick.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
bosstick.ZIndex = 52
bosstick.ClipsDescendants = false
local bosstickaero = Instance.new("ImageLabel")
bosstickaero.Parent = bosstick
bosstickaero.Size = UDim2.new(1, 4,1, 4)
bosstickaero.Position = UDim2.new(0, -2, 0, -2)
bosstickaero.ZIndex = 53
bosstickaero.Image = "rbxassetid://305266753"
bosstickaero.BackgroundTransparency = 1
bosstickaero.ScaleType = Enum.ScaleType.Slice
bosstickaero.SliceCenter = Rect.new(10, 10, 10, 10)
bosstickaero.ImageTransparency = 0
bosstickaero.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
bosstickaero.BorderSizePixel = 0

local weapon = Instance.new("TextBox", mainscroll)
weapon.Size = UDim2.new(0.878, 0, -0.012, 50)
weapon.Position = UDim2.new(0.061, 0,0.25, 0)
weapon.PlaceholderText = "weapon name: string"
weapon.Text = "Plasma Bender"
weapon.PlaceholderColor3 = Color3.fromRGB(175, 175, 175)
weapon.TextColor3 = Color3.fromRGB(255, 255, 255)
weapon.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
weapon.TextStrokeTransparency = 0
weapon.Font = Enum.Font.SourceSans
weapon.TextScaled = true
weapon.BackgroundTransparency = 1
weapon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
weapon.ZIndex = 52
weapon.ClipsDescendants = false
local weaponaero = Instance.new("ImageLabel")
weaponaero.Parent = weapon
weaponaero.Size = UDim2.new(1, 4,1, 4)
weaponaero.Position = UDim2.new(0, -2, 0, -2)
weaponaero.ZIndex = 53
weaponaero.Image = "rbxassetid://305266753"
weaponaero.BackgroundTransparency = 1
weaponaero.ScaleType = Enum.ScaleType.Slice
weaponaero.SliceCenter = Rect.new(10, 10, 10, 10)
weaponaero.ImageTransparency = 0
weaponaero.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
weaponaero.BorderSizePixel = 0

weapon.Focused:Connect(function()
            firesignal(EventGreeting.OnClientEvent, 
        "⚠️currently only supported weapons:⚠️",
        {
            TextColor3 = Color3.fromRGB(255, 0, 70)
        }
    )
                firesignal(EventGreeting.OnClientEvent, 
        "Plasma Bender",
        {
            TextColor3 = Color3.fromRGB(255, 0, 70)
        }
    )
end)


local autocollect = Instance.new("TextButton", mainscroll)
autocollect.Size = UDim2.new(0.878, 0, -0.012, 50)
autocollect.Position = UDim2.new(0.061, 0,0.3, 0)
autocollect.Text = "(laggy) auto collect all drops: true"
autocollect.TextColor3 = Color3.fromRGB(0, 255, 85)
autocollect.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
autocollect.TextStrokeTransparency = 0
autocollect.Font = Enum.Font.SourceSans
autocollect.TextScaled = true
autocollect.BackgroundTransparency = 1
autocollect.ZIndex = 52
local autocollectaero = Instance.new("ImageLabel")
autocollectaero.Parent = autocollect
autocollectaero.Size = UDim2.new(1, 4,1, 4)
autocollectaero.Position = UDim2.new(0, -2, 0, -2)
autocollectaero.ZIndex = 53
autocollectaero.Image = "rbxassetid://305266753"
autocollectaero.BackgroundTransparency = 1
autocollectaero.ScaleType = Enum.ScaleType.Slice
autocollectaero.SliceCenter = Rect.new(10, 10, 10, 10)
autocollectaero.ImageTransparency = 0
autocollectaero.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
autocollectaero.BorderSizePixel = 0

autocollect.MouseButton1Click:Connect(function()
	if autocollect.Text == "(laggy) auto collect all drops: true" then
		autocollect.Text = "(laggy) auto collect all drops: false"
        autocollect.TextColor3 = Color3.fromRGB(255, 0, 85)
	else
		autocollect.Text = "(laggy) auto collect all drops: true"
        autocollect.TextColor3 = Color3.fromRGB(0, 255, 85)
	end
end)

local iframes = Instance.new("TextButton", mainscroll)
iframes.Size = UDim2.new(0.878, 0, -0.012, 50)
iframes.Position = UDim2.new(0.061, 0,0.35, 0)
iframes.Text = "(also laggy ig) pseudo-invincibility: false"
iframes.TextColor3 = Color3.fromRGB(255, 0, 85)
iframes.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
iframes.TextStrokeTransparency = 0
iframes.Font = Enum.Font.SourceSans
iframes.TextScaled = true
iframes.BackgroundTransparency = 1
iframes.ZIndex = 52
local iframesaero = Instance.new("ImageLabel")
iframesaero.Parent = iframes
iframesaero.Size = UDim2.new(1, 4,1, 4)
iframesaero.Position = UDim2.new(0, -2, 0, -2)
iframesaero.ZIndex = 53
iframesaero.Image = "rbxassetid://305266753"
iframesaero.BackgroundTransparency = 1
iframesaero.ScaleType = Enum.ScaleType.Slice
iframesaero.SliceCenter = Rect.new(10, 10, 10, 10)
iframesaero.ImageTransparency = 0
iframesaero.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
iframesaero.BorderSizePixel = 0

iframes.MouseButton1Click:Connect(function()
	if iframes.Text == "(also laggy ig) pseudo-invincibility: false" then
		iframes.Text = "(also laggy ig) pseudo-invincibility: true"
        iframes.TextColor3 = Color3.fromRGB(0, 255, 85)
	else
		iframes.Text = "(also laggy ig) pseudo-invincibility: false"
        iframes.TextColor3 = Color3.fromRGB(255, 0, 85)
	end
end)

local enablevote = Instance.new("TextButton", mainscroll)
enablevote.Size = UDim2.new(0.878, 0, -0.012, 50)
enablevote.Position = UDim2.new(0.061, 0,0.4, 0)
enablevote.Text = "enable autovote: false"
enablevote.TextColor3 = Color3.fromRGB(255, 0, 85)
enablevote.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
enablevote.TextStrokeTransparency = 0
enablevote.Font = Enum.Font.SourceSans
enablevote.TextScaled = true
enablevote.BackgroundTransparency = 1
enablevote.ZIndex = 52
local voteaero = Instance.new("ImageLabel")
voteaero.Parent = enablevote
voteaero.Size = UDim2.new(1, 4,1, 4)
voteaero.Position = UDim2.new(0, -2, 0, -2)
voteaero.ZIndex = 53
voteaero.Image = "rbxassetid://305266753"
voteaero.BackgroundTransparency = 1
voteaero.ScaleType = Enum.ScaleType.Slice
voteaero.SliceCenter = Rect.new(10, 10, 10, 10)
voteaero.ImageTransparency = 0
voteaero.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
voteaero.BorderSizePixel = 0

enablevote.MouseButton1Click:Connect(function()
	if enablevote.Text == "enable autovote: false" then
		enablevote.Text = "enable autovote: true"
        enablevote.TextColor3 = Color3.fromRGB(0, 255, 85)
	else
		enablevote.Text = "enable autovote: false"
        enablevote.TextColor3 = Color3.fromRGB(255, 0, 85)
	end
    firesignal(EventGreeting.OnClientEvent, 
    "this thing will vote for unlimited medium and boss locking in.",
    {
        TextColor3 = Color3.fromRGB(255, 0, 70)
    }
)
end)

local antikick = Instance.new("TextButton", mainscroll)
antikick.Size = UDim2.new(0.878, 0, -0.012, 50)
antikick.Position = UDim2.new(0.061, 0,0.45, 0)
antikick.Text = "enable anti afk kick: true"
antikick.TextColor3 = Color3.fromRGB(0, 255, 85)
antikick.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
antikick.TextStrokeTransparency = 0
antikick.Font = Enum.Font.SourceSans
antikick.TextScaled = true
antikick.BackgroundTransparency = 1
antikick.ZIndex = 52
local kickaero = Instance.new("ImageLabel")
kickaero.Parent = antikick
kickaero.Size = UDim2.new(1, 4,1, 4)
kickaero.Position = UDim2.new(0, -2, 0, -2)
kickaero.ZIndex = 53
kickaero.Image = "rbxassetid://305266753"
kickaero.BackgroundTransparency = 1
kickaero.ScaleType = Enum.ScaleType.Slice
kickaero.SliceCenter = Rect.new(10, 10, 10, 10)
kickaero.ImageTransparency = 0
kickaero.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
kickaero.BorderSizePixel = 0

antikick.MouseButton1Click:Connect(function()
	if antikick.Text == "enable anti afk kick: false" then
		antikick.Text = "enable anti afk kick: true"
        antikick.TextColor3 = Color3.fromRGB(0, 255, 85)
	else
		antikick.Text = "enable anti afk kick: false"
        antikick.TextColor3 = Color3.fromRGB(255, 0, 85)
	end
    firesignal(EventGreeting.OnClientEvent, 
    "this must prevent 20 minute idling afk kick (i hope so).",
    {
        TextColor3 = Color3.fromRGB(255, 0, 70)
    }
)
end)

    local UserInputService = game:GetService("UserInputService")

    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
    	local delta = input.Position - dragStart
    	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)

--[--[AUTO FARM]--]--

    game.Workspace.Pickups.ChildAdded:Connect(function(pickinst)
        if autocollect.Text == "(laggy) auto collect all drops: true" then
            if pickinst.Name == "ZouxSmall" or pickinst.Name == "ZouxMed" or pickinst.Name == "ZouxBig" or pickinst.Name == "ExpGemSmall" then
            else
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PickupEvent"):FireServer(pickinst.Name)
            end
        end
    end)

    task.spawn(function()
        while true do
            task.wait(0.262)
            if iframes.Text == "(also laggy ig) pseudo-invincibility: true" then
                local args1 = {
	                "Dodging",
	                true
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SetState"):FireServer(unpack(args1))
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("SetState"):FireServer(unpack(args1))
            end
        end
    end)

    local VirtualUser = game:GetService("VirtualUser")
    plr.Idled:Connect(function()
        if antikick.Text == "enable anti afk kick: true" then
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end
    end)

    plr.PlayerGui.MainGui.Hud.InGame.ReadyFrame.Changed:Connect(function(v)
        if enablevote.Text == "enable autovote: true" then
            print("Voted for locking in")
			task.wait(0.5)
            local Event = game:GetService("ReplicatedStorage").Remotes.UpdatePreparation
            Event:InvokeServer()
        end
    end)
    plr.PlayerGui.MainGui.Hud.VoteFrame.VoteModeFrame.Changed:Connect(function(v)
        if enablevote.Text == "enable autovote: true" then
            print("Voted for mode")
            local Event = game:GetService("ReplicatedStorage").Remotes.UpdateVotes
            Event:InvokeServer(
                "Mode",
                "MD2"
            )
        end
    end)

    plr.PlayerGui.MainGui.Hud.VoteFrame.VoteDifficultyFrame.Changed:Connect(function(v)
        if enablevote.Text == "enable autovote: true" then
            print("Voted for difficulty")
            local Event = game:GetService("ReplicatedStorage").Remotes.UpdateVotes
            Event:InvokeServer(
                "Difficulty",
                "D3"
            )
        end
    end)

--[--[TICKS]--]--

    local s, r = pcall(task.spawn(function()
        while true do
            task.wait(tonumber(tick.Text))
            local enemies = workspace.Enemies.Common:GetChildren()
            if enablefarm.Text == "enable farm: true" and game:GetService("Players").LocalPlayer.Character:FindFirstChild(weapon.Text) and #enemies ~= 0 then
                --print("enemytick")
                for i, child in workspace.Enemies.Common:GetChildren() do
                    if child:FindFirstChild("ForceField") then 
                    else
                         game:GetService("Players").LocalPlayer.Character:WaitForChild(weapon.Text):WaitForChild("Server"):WaitForChild("InflictTarget"):FireServer(child:WaitForChild("Humanoid"))
                    end
                end
            elseif not plr.Character:FindFirstChild(weapon.Text) and enablefarm.Text == "enable farm: true" then
                plr.Character:WaitForChild("Humanoid"):EquipTool(plr.Backpack:WaitForChild(weapon.Text))
            end
        end
    end))

    local s2, r2 = pcall(task.spawn(function()
        while true do
            task.wait(tonumber(bosstick.Text))
            local boss = workspace.Enemies.Boss:GetChildren()
                if enablefarm.Text == "enable farm: true" and game:GetService("Players").LocalPlayer.Character:FindFirstChild(weapon.Text) and #boss ~= 0 then
                --print("bosstick")
                for i, child in workspace.Enemies.Boss:GetChildren() do
                    if child:FindFirstChild("ForceField") then
                    else
                       game:GetService("Players").LocalPlayer.Character:WaitForChild(weapon.Text):WaitForChild("Server"):WaitForChild("InflictTarget"):FireServer(child:WaitForChild("Humanoid"))
                    end
                end
                elseif not plr.Character:FindFirstChild(weapon.Text) and enablefarm.Text == "enable farm: true" then
                    plr.Character:WaitForChild("Humanoid"):EquipTool(plr.Backpack:WaitForChild(weapon.Text))
            end
        end
    end))

end)

-- main
if success then
    firesignal(EventGreeting.OnClientEvent, 
        "✅anyways, everything seems to be done loading, and gui is initiated. gl.✅",
        {
            TextColor3 = Color3.fromRGB(255, 0, 70)
        }
    )

    task.spawn(function()
        task.wait(3)
        firesignal(EventGreeting.OnClientEvent, 
        "to hide this gui, open ingame menu.",
        {
            TextColor3 = Color3.fromRGB(255, 0, 70)
        }
        )
    end)
else
        firesignal(EventGreeting.OnClientEvent, 
        "❌ohh no! script seems to be broken or sum... dayum.. it didnt load properly! fuck!😢❌",
        {
            TextColor3 = Color3.fromRGB(255, 0, 70)
        }
    )
end
