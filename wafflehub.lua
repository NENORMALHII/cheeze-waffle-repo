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

local screengui = Instance.new("ScreenGui", plr.PlayerGui)
screengui.Name = "nenowafflehub"
screengui.IgnoreGuiInset = true
screengui.ResetOnSpawn = false
screengui.DisplayOrder = 20000

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

--local guiaero = Instance.new("ImageLabel")
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

createtextlabel("auto farm (currently only works with Plasma Bender)",UDim2.new(1, 0,0.006, 50),UDim2.new(0, 0,0.011, 0),mainscroll, false)

local tick = Instance.new("TextBox", mainscroll)
tick.Size = UDim2.new(0.878, 0, -0.012, 50)
tick.Position = UDim2.new(0.061, 0,0.1, 0)
tick.PlaceholderText = "autofarm tick cooldown: number"
tick.Text = "2"
tick.PlaceholderColor3 = Color3.fromRGB(129, 73, 74)
tick.TextColor3 = Color3.fromRGB(189, 90, 91)
tick.TextStrokeColor3 = Color3.fromRGB(79, 5, 6)
tick.TextStrokeTransparency = 0
tick.Font = Enum.Font.Arcade
tick.TextScaled = true
tick.BackgroundTransparency = 0.5
tick.BackgroundColor3 = Color3.fromRGB(79, 5, 6)
tick.BorderSizePixel = 2
tick.BorderColor3 = Color3.fromRGB(189, 90, 91)
tick.ZIndex = 52

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

    game.Workspace.Pickups.ChildAdded:Connect(function(pickinst)
        if pickinst.Name == "ZouxSmall" or pickinst.Name == "ZouxMed" or pickinst.Name == "ZouxBig" or pickinst.Name == "ExpGemSmall" then
        else
            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("PickupEvent"):FireServer(pickinst.Name)
        end
    end)
else
        firesignal(EventGreeting.OnClientEvent, 
        "❌ohh no! script seems to be broken or sum... dayum.. it didnt load properly! fuck!😢❌",
        {
            TextColor3 = Color3.fromRGB(255, 0, 70)
        }
    )
end
