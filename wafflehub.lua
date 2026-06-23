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
    plr.PlayerGui:FindFirstChild("nenocwafflehub"):Destroy()
end

local screengui = Instance.new("ScreenGui", plr.PlayerGui)
screengui.Name = "nenocheesehub"
screengui.IgnoreGuiInset = true
screengui.ResetOnSpawn = false
screengui.DisplayOrder = 20000

function createtextlabel(text, size, pos, parent, hasbg)
	local textlabel = Instance.new("TextLabel", parent)
	textlabel.Text = text
	textlabel.TextColor3 = Color3.fromRGB(189, 90, 91)
	textlabel.TextStrokeColor3 = Color3.fromRGB(79, 5, 6)
	textlabel.Font = Enum.Font.Arcade
	textlabel.TextScaled = true
	textlabel.Size = size
	textlabel.TextStrokeTransparency = 0
	textlabel.Position = pos
	textlabel.BackgroundTransparency = 1
	textlabel.ZIndex = 51
	if hasbg == true then
		textlabel.BackgroundTransparency = 0.5
		textlabel.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
		textlabel.BorderSizePixel = 2
		textlabel.BorderColor3 = Color3.fromRGB(189, 90, 91)
	end
end

local gui = Instance.new("ImageLabel")

gui.Parent = screengui
gui.Size = UDim2.new(0.2, 0,0.5, 0)
gui.Position = UDim2.new(0.398, 0, 0.4, 0)
gui.ZIndex = 50
gui.BackgroundColor3 = Color3.fromRGB(25, 0, 5)
gui.BackgroundTransparency = 0.5
gui.BorderSizePixel = 0

local uicorner = Instance.new("UIStroke", gui)
uicorner.Color = Color3.fromRGB(189, 90, 91)
uicorner.Thickness = 2
uicorner.Transparency = 0.2
uicorner.LineJoinMode = Enum.LineJoinMode.Bevel

local img = Instance.new("ImageButton", gui)
img.BackgroundTransparency = 1
img.Image = "rbxassetid://122488719941786"
img.ImageColor3 = Color3.fromRGB(255, 255, 255)
img.Position = UDim2.new(-0.247, 0, -0.174, 0)
img.Size = UDim2.new(0.532, 0,0.392, 0)
img.ZIndex = 55
img.MouseButton1Click:Connect(function()
	--gui:Destroy()
end)
task.spawn(function()
	while task.wait() do
		img.Rotation += 0.5
	end
end)
local uiratio = Instance.new("UIAspectRatioConstraint", img)
uiratio.AspectRatio = 1

createtextlabel("neno waffle hub",UDim2.new(0.848, 0,0.118, 0),UDim2.new(0.148, 0, -0, 0),gui)

local mainscroll = Instance.new("ScrollingFrame", gui)
mainscroll.Size = UDim2.new(1, 0,0.882, 0)
mainscroll.Position = UDim2.new(0, 0,0.118, 0)
mainscroll.BackgroundTransparency = 1
mainscroll.ZIndex = 51
mainscroll.ScrollBarThickness = 2
mainscroll.BorderSizePixel = 0
mainscroll.ScrollBarImageColor3 = Color3.fromRGB(189, 90, 91)
mainscroll.CanvasSize = UDim2.new(0, 0, 2, 0)
--mainscroll.ScrollingDirection = Enum.ScrollingDirection.Y
--mainscroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
mainscroll.ClipsDescendants = true

createtextlabel("1-4 key ability spam",UDim2.new(1, 0,0.006, 50),UDim2.new(0, 0,0.011, 0),mainscroll, true)

local spamcd = Instance.new("TextBox", mainscroll)
spamcd.Size = UDim2.new(0.878, 0, -0.012, 50)
spamcd.Position = UDim2.new(0.061, 0,0.1, 0)
spamcd.PlaceholderText = "cooldown: number"
spamcd.Text = "0.01"
spamcd.PlaceholderColor3 = Color3.fromRGB(129, 73, 74)
spamcd.TextColor3 = Color3.fromRGB(189, 90, 91)
spamcd.TextStrokeColor3 = Color3.fromRGB(79, 5, 6)
spamcd.TextStrokeTransparency = 0
spamcd.Font = Enum.Font.Arcade
spamcd.TextScaled = true
spamcd.BackgroundTransparency = 0.5
spamcd.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
spamcd.BorderSizePixel = 2
spamcd.BorderColor3 = Color3.fromRGB(189, 90, 91)
spamcd.ZIndex = 52

local char = Instance.new("TextButton", mainscroll)
char.Size = UDim2.new(0.878, 0, -0.012, 50)
char.Position = UDim2.new(0.061, 0,0.263, 0)
char.Text = "characters"
char.TextColor3 = Color3.fromRGB(189, 90, 91)
char.TextStrokeColor3 = Color3.fromRGB(79, 5, 6)
char.TextStrokeTransparency = 0
char.Font = Enum.Font.Arcade
char.TextScaled = true
char.BackgroundTransparency = 0.5
char.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
char.BorderSizePixel = 2
char.BorderColor3 = Color3.fromRGB(189, 90, 91)
char.ZIndex = 52

local ally = Instance.new("TextButton", mainscroll)
ally.Size = UDim2.new(0.878, 0, -0.012, 50)
ally.Position = UDim2.new(0.061, 0,0.34, 0)
ally.Text = "allies"
ally.TextColor3 = Color3.fromRGB(189, 90, 91)
ally.TextStrokeColor3 = Color3.fromRGB(79, 5, 6)
ally.TextStrokeTransparency = 0
ally.Font = Enum.Font.Arcade
ally.TextScaled = true
ally.BackgroundTransparency = 0.5
ally.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
ally.BorderSizePixel = 2
ally.BorderColor3 = Color3.fromRGB(189, 90, 91)
ally.ZIndex = 52

local enemy = Instance.new("TextButton", mainscroll)
enemy.Size = UDim2.new(0.878, 0, -0.012, 50)
enemy.Position = UDim2.new(0.061, 0,0.419, 0)
enemy.Text = "enemies"
enemy.TextColor3 = Color3.fromRGB(189, 90, 91)
enemy.TextStrokeColor3 = Color3.fromRGB(79, 5, 6)
enemy.TextStrokeTransparency = 0
enemy.Font = Enum.Font.Arcade
enemy.TextScaled = true
enemy.BackgroundTransparency = 0.5
enemy.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
enemy.BorderSizePixel = 2
enemy.BorderColor3 = Color3.fromRGB(189, 90, 91)
enemy.ZIndex = 52

local smallerdialog = Instance.new("TextButton", mainscroll)
smallerdialog.Size = UDim2.new(0.878, 0, -0.012, 50)
smallerdialog.Position = UDim2.new(0.061, 0,0.585, 0)
smallerdialog.Text = "smaller dialogue box: false"
smallerdialog.TextColor3 = Color3.fromRGB(189, 90, 91)
smallerdialog.TextStrokeColor3 = Color3.fromRGB(79, 5, 6)
smallerdialog.TextStrokeTransparency = 0
smallerdialog.Font = Enum.Font.Arcade
smallerdialog.TextScaled = true
smallerdialog.BackgroundTransparency = 0.5
smallerdialog.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
smallerdialog.BorderSizePixel = 2
smallerdialog.BorderColor3 = Color3.fromRGB(189, 90, 91)
smallerdialog.ZIndex = 52


smallerdialog.MouseButton1Click:Connect(function()
	if smallerdialog.Text == "smaller dialogue box: false" then
		plr.PlayerGui.TextGui.Frame.Position = UDim2.new(0.02, 0, 0.81, 0)
		plr.PlayerGui.TextGui.Frame.Size = UDim2.new(0.325, 0, 0.15, 0)
		smallerdialog.Text = "smaller dialogue box: true"
	else
		smallerdialog.Text = "smaller dialogue box: false"
		plr.PlayerGui.TextGui.Frame.Position = UDim2.new(0.237, 0, 0.582, 0)
		plr.PlayerGui.TextGui.Frame.Size = UDim2.new(0.525, 0, 0.318, 0)
	end
end)


createtextlabel("character selection",UDim2.new(1, 0,0.006, 50),UDim2.new(0, 0,0.172, 0),mainscroll, true)


local UserInputService = game:GetService("UserInputService")

local dragging
local dragInput
local dragStart
local startPos

local function update(input)
	local delta = input.Position - dragStart
	gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

end)

-- main
if success then
    firesignal(EventGreeting.OnClientEvent, 
        "anyways, everything seems to be done loading, and gui is initiated. gl.",
        {
            TextColor3 = Color3.fromRGB(255, 0, 70)
        }
    )
else
        firesignal(EventGreeting.OnClientEvent, 
        "ohh no! script seems to be broken or sum... dayum.. it didnt load properly! fuck!",
        {
            TextColor3 = Color3.fromRGB(255, 0, 70)
        }
    )
end


game.Workspace.Pickups.ChildAdded:Connect(function(pickinst)
    if pickinst.Name == "ZouxSmall" or pickinst.Name == "ZouxMed" or pickinst.Name == "ZouxBig" or pickinst.Name == "ExpGemSmall" then
    else
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PickupEvent"):FireServer(pickinst.Name)
    end
end)
