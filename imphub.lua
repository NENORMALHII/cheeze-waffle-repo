
local plr = game.Players.LocalPlayer

if plr.PlayerGui:FindFirstChild("goofyimphub") then
	plr.PlayerGui:FindFirstChild("goofyimphub"):Destroy()
end

local screengui = Instance.new("ScreenGui", plr.PlayerGui)
screengui.Name = "goofyimphub"
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
gui.Size = UDim2.new(0.203, 0,0.43, 0)
gui.Position = UDim2.new(0.398, 0, 0.284, 0)
gui.ZIndex = 50
gui.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
gui.BackgroundTransparency = 0.5
gui.BorderSizePixel = 0

local uicorner = Instance.new("UIStroke", gui)
uicorner.Color = Color3.fromRGB(189, 90, 91)
uicorner.Thickness = 2
uicorner.Transparency = 0.2
uicorner.LineJoinMode = Enum.LineJoinMode.Bevel

local img = Instance.new("ImageButton", gui)
img.BackgroundTransparency = 1
img.Image = "rbxassetid://7978230503"
img.ImageColor3 = Color3.fromRGB(255, 0, 0)
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

createtextlabel("goofy imp hub",UDim2.new(0.848, 0,0.118, 0),UDim2.new(0.148, 0, -0, 0),gui)

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

plr.PlayerGui.ChildAdded:Connect(function(c)
	if c.Name == "TextGui" then
		if smallerdialog.Text == "smaller dialogue box: true" then
			plr.PlayerGui.TextGui.Frame.Position = UDim2.new(0.02, 0, 0.81, 0)
			plr.PlayerGui.TextGui.Frame.Size = UDim2.new(0.325, 0, 0.15, 0)
		end
	end
end)


local points = Instance.new("TextBox", mainscroll)
points.Size = UDim2.new(0.186, 0,-0.002, 50)
points.Position = UDim2.new(0.061, 0,0.498, 0)
points.PlaceholderText = "points: number"
points.Text = "50"
points.PlaceholderColor3 = Color3.fromRGB(129, 129, 129)
points.TextColor3 = Color3.fromRGB(189, 189, 189)
points.TextStrokeColor3 = Color3.fromRGB(79, 79, 79)
points.TextStrokeTransparency = 0
points.Font = Enum.Font.Arcade
points.TextScaled = true
points.BackgroundTransparency = 0.5
points.BackgroundColor3 = Color3.fromRGB(79, 79, 79)
points.BorderSizePixel = 2
points.BorderColor3 = Color3.fromRGB(189, 189, 189)
points.ZIndex = 52

local Cpoints = Instance.new("TextBox", mainscroll)
Cpoints.Size = UDim2.new(0.186, 0,-0.002, 50)
Cpoints.Position = UDim2.new(0.407, 0,0.498, 0)
Cpoints.PlaceholderText = "points: number"
Cpoints.Text = "5"
Cpoints.PlaceholderColor3 = Color3.fromRGB(30, 0, 129)
Cpoints.TextColor3 = Color3.fromRGB(60, 0, 189)
Cpoints.TextStrokeColor3 = Color3.fromRGB(26, 0, 79)
Cpoints.TextStrokeTransparency = 0
Cpoints.Font = Enum.Font.Arcade
Cpoints.TextScaled = true
Cpoints.BackgroundTransparency = 0.5
Cpoints.BackgroundColor3 = Color3.fromRGB(22, 0, 79)
Cpoints.BorderSizePixel = 2
Cpoints.BorderColor3 = Color3.fromRGB(54, 0, 189)
Cpoints.ZIndex = 52


local Ppoints = Instance.new("TextBox", mainscroll)
Ppoints.Size = UDim2.new(0.186, 0,-0.002, 50)
Ppoints.Position = UDim2.new(0.749, 0,0.498, 0)
Ppoints.PlaceholderText = "points: number"
Ppoints.Text = "10"
Ppoints.PlaceholderColor3 = Color3.fromRGB(127, 129, 0)
Ppoints.TextColor3 = Color3.fromRGB(186, 189, 0)
Ppoints.TextStrokeColor3 = Color3.fromRGB(79, 67, 0)
Ppoints.TextStrokeTransparency = 0
Ppoints.Font = Enum.Font.Arcade
Ppoints.TextScaled = true
Ppoints.BackgroundTransparency = 0.5
Ppoints.BackgroundColor3 = Color3.fromRGB(186, 186, 186)
Ppoints.BorderSizePixel = 2
Ppoints.BorderColor3 = Color3.fromRGB(189, 183, 0)
Ppoints.ZIndex = 52



local scrollchars = Instance.new("ScrollingFrame", char)
scrollchars.Size = UDim2.new(1, 0,10, 0)
scrollchars.Position = UDim2.new(0,0,1,0)
scrollchars.ZIndex = 55
scrollchars.ScrollBarThickness = 0
scrollchars.BackgroundTransparency = 0.5
scrollchars.BorderSizePixel = 0
scrollchars.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
scrollchars.ScrollingDirection = Enum.ScrollingDirection.Y
scrollchars.CanvasSize = UDim2.new(0,0,0,0)
scrollchars.AutomaticCanvasSize = Enum.AutomaticSize.Y
--scrollchars.AutomaticSize = Enum.AutomaticSize.Y
scrollchars.Visible = false

local scrollally = Instance.new("ScrollingFrame", ally)
scrollally.Size = UDim2.new(1, 0,10, 0)
scrollally.Position = UDim2.new(0,0,1,0)
scrollally.ZIndex = 55
scrollally.ScrollBarThickness = 0
scrollally.BackgroundTransparency = 0.5
scrollally.BorderSizePixel = 0
scrollally.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
scrollally.ScrollingDirection = Enum.ScrollingDirection.Y
scrollally.CanvasSize = UDim2.new(0,0,0,0)
scrollally.AutomaticCanvasSize = Enum.AutomaticSize.Y
--scrollally.AutomaticSize = Enum.AutomaticSize.Y
scrollally.Visible = false

local scrollenemy = Instance.new("ScrollingFrame", enemy)
scrollenemy.Size = UDim2.new(1, 0,10, 0)
scrollenemy.Position = UDim2.new(0,0,1,0)
scrollenemy.ZIndex = 55
scrollenemy.ScrollBarThickness = 0
scrollenemy.BackgroundTransparency = 0.5
scrollenemy.BorderSizePixel = 0
scrollenemy.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
scrollenemy.ScrollingDirection = Enum.ScrollingDirection.Y
scrollenemy.CanvasSize = UDim2.new(0,0,0,0)
scrollenemy.AutomaticCanvasSize = Enum.AutomaticSize.Y
--scrollenemy.AutomaticSize = Enum.AutomaticSize.Y
scrollenemy.Visible = false


local listlayout1 = Instance.new("UIListLayout", scrollchars)
listlayout1.Padding = UDim.new(0, 6)

local padding1 = Instance.new("UIPadding", scrollchars)
padding1.PaddingLeft = UDim.new(0, 2)
padding1.PaddingRight = UDim.new(0, 2)
padding1.PaddingTop = UDim.new(0, 2)
padding1.PaddingBottom = UDim.new(0, 2)


local listlayout2 = Instance.new("UIListLayout", scrollally)
listlayout2.Padding = UDim.new(0, 6)

local padding2 = Instance.new("UIPadding", scrollally)
padding2.PaddingLeft = UDim.new(0, 2)
padding2.PaddingRight = UDim.new(0, 2)
padding2.PaddingTop = UDim.new(0, 2)
padding2.PaddingBottom = UDim.new(0, 2)


local listlayout3 = Instance.new("UIListLayout", scrollenemy)
listlayout3.Padding = UDim.new(0, 6)

local padding3 = Instance.new("UIPadding", scrollenemy)
padding3.PaddingLeft = UDim.new(0, 2)
padding3.PaddingRight = UDim.new(0, 2)
padding3.PaddingTop = UDim.new(0, 2)
padding3.PaddingBottom = UDim.new(0, 2)

for i, v in pairs(game.ReplicatedStorage:WaitForChild("Characters"):GetChildren()) do
	local charr = Instance.new("TextButton", scrollchars)
	charr.Size = UDim2.new(0.9, 0, 0, 35)
	charr.Text = v.Name
	charr.Name = v.Name
	charr.TextColor3 = Color3.fromRGB(189, 90, 91)
	charr.TextStrokeColor3 = Color3.fromRGB(79, 5, 6)
	charr.TextStrokeTransparency = 0
	charr.Font = Enum.Font.Arcade
	charr.TextScaled = true
	charr.BackgroundTransparency = 0
	charr.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
	charr.BorderSizePixel = 2
	charr.BorderColor3 = Color3.fromRGB(189, 90, 91)
	charr.ZIndex = 56
	charr.TextXAlignment = Enum.TextXAlignment.Left
	
	local imgcharr = Instance.new("ImageLabel", charr)
	imgcharr.Size = UDim2.new(0.11, 0, 1, 0)
	imgcharr.Position = UDim2.new(1, 0, 0, 0)
	imgcharr.Image = "rbxassetid://"..v.PicId.Value
	imgcharr.BackgroundTransparency = 0
	imgcharr.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
	imgcharr.BorderSizePixel = 2
	imgcharr.BorderColor3 = Color3.fromRGB(189, 90, 91)
	imgcharr.ZIndex = 56
	
	charr.MouseButton1Click:Connect(function()
		plr.PlayerGui.CharacterSelector.SideMenu.Visible = false
		plr.PlayerGui.CharacterSelector.ShopFrame.Visible = false
		plr.PlayerGui.CharacterSelector.OwnedFrame.Visible = false
		plr.PlayerGui.CharacterSelector.SelectBackground.Visible = false
		local args = {
			game:GetService("ReplicatedStorage"):WaitForChild("Characters"):WaitForChild(charr.Name),
			tonumber(points.Text),
			tonumber(Cpoints.Text),
			tonumber(Ppoints.Text)
		}
		game:GetService("ReplicatedStorage"):WaitForChild("PlayerChangeCharacter"):FireServer(unpack(args))
	end)
end

for i, v in pairs(game.ReplicatedStorage:WaitForChild("Allies"):GetChildren()) do
	local allyy = Instance.new("TextButton", scrollally)
	allyy.Size = UDim2.new(1, 0, 0, 35)
	allyy.Text = v.Name
	allyy.Name = v.Name
	allyy.TextColor3 = Color3.fromRGB(189, 90, 91)
	allyy.TextStrokeColor3 = Color3.fromRGB(79, 5, 6)
	allyy.TextStrokeTransparency = 0
	allyy.Font = Enum.Font.Arcade
	allyy.TextScaled = true
	allyy.BackgroundTransparency = 0
	allyy.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
	allyy.BorderSizePixel = 2
	allyy.BorderColor3 = Color3.fromRGB(189, 90, 91)
	allyy.ZIndex = 56
	allyy.TextXAlignment = Enum.TextXAlignment.Left

	allyy.MouseButton1Click:Connect(function()
		plr.PlayerGui.CharacterSelector.SideMenu.Visible = false
		plr.PlayerGui.CharacterSelector.ShopFrame.Visible = false
		plr.PlayerGui.CharacterSelector.OwnedFrame.Visible = false
		plr.PlayerGui.CharacterSelector.SelectBackground.Visible = false
		local args = {
			game:GetService("ReplicatedStorage"):WaitForChild("Allies"):WaitForChild(allyy.Name),
			tonumber(points.Text),
			tonumber(Cpoints.Text),
			tonumber(Ppoints.Text)
		}
		game:GetService("ReplicatedStorage"):WaitForChild("PlayerChangeCharacter"):FireServer(unpack(args))
	end)
end

for i, v in pairs(game.ReplicatedStorage:WaitForChild("Enemies"):GetChildren()) do
	local enemyy = Instance.new("TextButton", scrollenemy)
	enemyy.Size = UDim2.new(1, 0, 0, 35)
	enemyy.Text = v.Name
	enemyy.Name = v.Name
	enemyy.TextColor3 = Color3.fromRGB(189, 90, 91)
	enemyy.TextStrokeColor3 = Color3.fromRGB(79, 5, 6)
	enemyy.TextStrokeTransparency = 0
	enemyy.Font = Enum.Font.Arcade
	enemyy.TextScaled = true
	enemyy.BackgroundTransparency = 0
	enemyy.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
	enemyy.BorderSizePixel = 2
	enemyy.BorderColor3 = Color3.fromRGB(189, 90, 91)
	enemyy.ZIndex = 56
	enemyy.TextXAlignment = Enum.TextXAlignment.Left

	enemyy.MouseButton1Click:Connect(function()
		plr.PlayerGui.CharacterSelector.SideMenu.Visible = false
		plr.PlayerGui.CharacterSelector.ShopFrame.Visible = false
		plr.PlayerGui.CharacterSelector.OwnedFrame.Visible = false
		plr.PlayerGui.CharacterSelector.SelectBackground.Visible = false
		local args = {
			game:GetService("ReplicatedStorage"):WaitForChild("Enemies"):WaitForChild(enemyy.Name),
			tonumber(points.Text),
			tonumber(Cpoints.Text),
			tonumber(Ppoints.Text)
		}
		game:GetService("ReplicatedStorage"):WaitForChild("PlayerChangeCharacter"):FireServer(unpack(args))
	end)
end

char.MouseButton1Click:Connect(function()
	scrollchars.Visible = not scrollchars.Visible
end)

ally.MouseButton1Click:Connect(function()
	scrollally.Visible = not scrollally.Visible
end)

enemy.MouseButton1Click:Connect(function()
	scrollenemy.Visible = not scrollenemy.Visible
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

--main stuff ig

local holding = false

UserInputService.InputBegan:Connect(function(key, processed)
	if not processed then
		local thingtopress
		if key.KeyCode == Enum.KeyCode.One then
			thingtopress = 1
			holding = true 
		elseif key.KeyCode == Enum.KeyCode.Two then
			thingtopress = 2
			holding = true 
		elseif key.KeyCode == Enum.KeyCode.Three then
			thingtopress = 3
			holding = true 
		elseif key.KeyCode == Enum.KeyCode.Four then
			thingtopress = 4
			holding = true 
		end

		while (holding == true) do 
			task.wait(tonumber(spamcd.Text))
			game:GetService("Players").LocalPlayer.Character:WaitForChild("Attack"):FireServer(thingtopress)

		end
	end
end)

UserInputService.InputEnded:Connect(function(key, processed)
	if key.KeyCode == Enum.KeyCode.One or key.KeyCode == Enum.KeyCode.Two or key.KeyCode == Enum.KeyCode.Three or key.KeyCode == Enum.KeyCode.Four then
		holding = false
	end
end)
