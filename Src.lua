if game.CoreGui:FindFirstChild("EchoUILibrary") ~= nil then
    game.CoreGui["EchoUILibrary"]:Destroy()
end

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local player = game.Players.LocalPlayer

local blissids = "https://raw.githubusercontent.com/Codex0982/ervcommunity/refs/heads/main/ervcommunity"

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

local Library = {}
function Library:CreateWindow()

    local normalSize = true

    local EchoUILibrary = Instance.new("ScreenGui")
    local Main_1 = Instance.new("Frame")
    local UICorner_1 = Instance.new("UICorner")
    local UIStroke_1 = Instance.new("UIStroke")
    local TopBar_1 = Instance.new("Frame")
    local Title_1 = Instance.new("TextLabel")
    local UIPadding_1 = Instance.new("UIPadding")
    local Logo_1 = Instance.new("ImageLabel")
    local Close_1 = Instance.new("ImageButton")
    local Minimize_1 = Instance.new("ImageButton")
    local TabsHolder_1 = Instance.new("Frame")
    local Tabs_1 = Instance.new("ScrollingFrame")
    local UIListLayout_1 = Instance.new("UIListLayout")
    local ElementsFrame_1 = Instance.new("Frame")

    EchoUILibrary.Name = "EchoUILibrary"
    EchoUILibrary.Parent = game.CoreGui
    
    Main_1.Name = "Main"
    Main_1.Parent = EchoUILibrary
    Main_1.AnchorPoint = Vector2.new(0.5, 0.5)
    Main_1.BackgroundColor3 = Color3.fromRGB(18,18,18)
    Main_1.BackgroundTransparency = 0.04
    Main_1.BorderColor3 = Color3.fromRGB(0,0,0)
    Main_1.BorderSizePixel = 0
    Main_1.Position = UDim2.new(0.5,0,2.5,0)
    Main_1.Size = UDim2.new(0, 366,0, 436)
    Main_1.Visible = true
    
    UICorner_1.Parent = Main_1
    UICorner_1.CornerRadius = UDim.new(0,10)
    
    UIStroke_1.Parent = Main_1
    UIStroke_1.Thickness = 1
    
    TopBar_1.Name = "TopBar"
    TopBar_1.Parent = Main_1
    TopBar_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
    TopBar_1.BackgroundTransparency = 1
    TopBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
    TopBar_1.BorderSizePixel = 0
    TopBar_1.Size = UDim2.new(1, 0,0, 25)
    
    Title_1.Name = "Title"
    Title_1.Parent = TopBar_1
    Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
    Title_1.BackgroundTransparency = 1
    Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
    Title_1.BorderSizePixel = 0
    Title_1.Size = UDim2.new(0, 286,0, 25)
    Title_1.Font = Enum.Font.Roboto
    Title_1.Text = "EchoUI | Free"
    Title_1.TextColor3 = Color3.fromRGB(255,255,255)
    Title_1.TextSize = 12
    Title_1.TextXAlignment = Enum.TextXAlignment.Left
    
    if blisssubscription then
        Title_1.Text = "EchoUI | Bliss"
    else
        Title_1.Text = "EchoUI | Free"
    end

    UIPadding_1.Parent = Title_1
    UIPadding_1.PaddingLeft = UDim.new(0,32)
    UIPadding_1.PaddingTop = UDim.new(0,8)
    
    Logo_1.Name = "Logo"
    Logo_1.Parent = TopBar_1
    Logo_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
    Logo_1.BackgroundTransparency = 1
    Logo_1.BorderColor3 = Color3.fromRGB(0,0,0)
    Logo_1.BorderSizePixel = 0
    Logo_1.Position = UDim2.new(0, 9,0, 7)
    Logo_1.Size = UDim2.new(0, 18,0, 18)
    Logo_1.Image = "rbxassetid://105455185423314"
    
    Close_1.Name = "Close"
    Close_1.Parent = TopBar_1
    Close_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
    Close_1.BackgroundTransparency = 1
    Close_1.BorderColor3 = Color3.fromRGB(0,0,0)
    Close_1.BorderSizePixel = 0
    Close_1.Position = UDim2.new(0, 342,0, 7)
    Close_1.Size = UDim2.new(0, 15,0, 15)
    Close_1.Image = "rbxassetid://125284147101989"
    
    Minimize_1.Name = "Minimize"
    Minimize_1.Parent = TopBar_1
    Minimize_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
    Minimize_1.BackgroundTransparency = 1
    Minimize_1.BorderColor3 = Color3.fromRGB(0,0,0)
    Minimize_1.BorderSizePixel = 0
    Minimize_1.Position = UDim2.new(0, 320,0, 7)
    Minimize_1.Size = UDim2.new(0, 15,0, 15)
    Minimize_1.Image = "rbxassetid://140337234796675"
    
    TabsHolder_1.Name = "TabsHolder"
    TabsHolder_1.Parent = Main_1
    TabsHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
    TabsHolder_1.BackgroundTransparency = 1
    TabsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
    TabsHolder_1.BorderSizePixel = 0
    TabsHolder_1.Position = UDim2.new(0, 10,0, 35)
    TabsHolder_1.Size = UDim2.new(0, 346,0, 28)
    
    Tabs_1.Name = "Tabs"
    Tabs_1.Parent = TabsHolder_1
    Tabs_1.Active = true
    Tabs_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
    Tabs_1.BackgroundTransparency = 1
    Tabs_1.BorderColor3 = Color3.fromRGB(0,0,0)
    Tabs_1.BorderSizePixel = 0
    Tabs_1.Size = UDim2.new(1, 0,1, 0)
    Tabs_1.ClipsDescendants = true
    Tabs_1.AutomaticCanvasSize = Enum.AutomaticSize.X
    Tabs_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
    Tabs_1.CanvasPosition = Vector2.new(0, 0)
    Tabs_1.CanvasSize = UDim2.new(0.5, 0,0, 0)
    Tabs_1.ElasticBehavior = Enum.ElasticBehavior.Never
    Tabs_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
    Tabs_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
    Tabs_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
    Tabs_1.ScrollBarImageTransparency = 1
    Tabs_1.ScrollBarThickness = 1
    Tabs_1.ScrollingDirection = Enum.ScrollingDirection.X
    Tabs_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
    Tabs_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
    Tabs_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

    UIListLayout_1.Parent = Tabs_1
    UIListLayout_1.Padding = UDim.new(0,5)
    UIListLayout_1.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

    ElementsFrame_1.Name = "ElementsFrame"
    ElementsFrame_1.Parent = Main_1
    ElementsFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
    ElementsFrame_1.BackgroundTransparency = 1
    ElementsFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
    ElementsFrame_1.BorderSizePixel = 0
    ElementsFrame_1.Position = UDim2.new(0, 10,0, 72)
    ElementsFrame_1.Size = UDim2.new(0, 348,0, 355)
    ElementsFrame_1.ClipsDescendants = false

    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if not gameProcessed then
            if input.KeyCode == Enum.KeyCode.LeftControl then
                Main_1.Visible = not Main_1.Visible
            end
        end
    end)

    local gui = Main_1
    local dragging
    local dragInput
    local dragStart
    local startPos
    function Lerp(a, b, m)
        return a + (b - a) * m
    end
    local lastMousePos
    local lastGoalPos
    local DRAG_SPEED = (8)
    function Update(dt)
        if not (startPos) then return end
        if not (dragging) and (lastGoalPos) then
            gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
            return 
        end

        local delta = (lastMousePos - UserInputService:GetMouseLocation())
        local xGoal = (startPos.X.Offset - delta.X)
        local yGoal = (startPos.Y.Offset - delta.Y)
        lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
        gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
    end
    gui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = gui.Position
            lastMousePos = UserInputService:GetMouseLocation()

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
    runService.Heartbeat:Connect(Update)

    local uitoggleholder_1 = Instance.new("Frame")
	local uitoggle_1 = Instance.new("ImageButton")
	local UICorner_12 = Instance.new("UICorner")
	local UIStroke_8 = Instance.new("UIStroke")

	uitoggleholder_1.Name = "uitoggleholder"
	uitoggleholder_1.Parent = EchoUILibrary
	uitoggleholder_1.AnchorPoint = Vector2.new(0.5, 0.5)
	uitoggleholder_1.BackgroundColor3 = Color3.fromRGB(0,0,0)
	uitoggleholder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	uitoggleholder_1.BorderSizePixel = 0
	uitoggleholder_1.Position = UDim2.new(0.5, 0,-0.3, 0)
	uitoggleholder_1.Size = UDim2.new(0, 35,0, 35)

	uitoggle_1.Name = "uitoggle"
	uitoggle_1.Parent = uitoggleholder_1
	uitoggle_1.Active = true
	uitoggle_1.AnchorPoint = Vector2.new(0.5, 0.5)
	uitoggle_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	uitoggle_1.BackgroundTransparency = 1
	uitoggle_1.BorderColor3 = Color3.fromRGB(0,0,0)
	uitoggle_1.BorderSizePixel = 0
	uitoggle_1.Position = UDim2.new(0.5, 0,0.5, 0)
	uitoggle_1.Size = UDim2.new(0, 32,0, 32)
	uitoggle_1.Image = "rbxassetid://73689848562699"
	uitoggle_1.ImageColor3 = Color3.fromRGB(255,255,255)

	UICorner_12.Parent = uitoggleholder_1
	UICorner_12.CornerRadius = UDim.new(0,40)

	UIStroke_8.Parent = uitoggleholder_1
	UIStroke_8.Thickness = 1
	
	uitoggle_1.MouseButton1Click:Connect(function()
		local tweenInfo = TweenInfo.new(
			0.6,
			Enum.EasingStyle.Back,
			Enum.EasingDirection.Out
		)

		local goal = { Position = UDim2.new(0.5, 0, 0.5, 0) }

		local tween = TweenService:Create(Main_1, tweenInfo, goal)

		tween:Play()

		dragging = false
		lastGoalPos = nil
		startPos = nil
		
		local tweenInfo2 = TweenInfo.new(
			0.6,
			Enum.EasingStyle.Back,
			Enum.EasingDirection.Out
		)

		local goal2 = { Position = UDim2.new(0.5, 0,-0.3, 0) }

		local tween2 = TweenService:Create(uitoggleholder_1, tweenInfo2, goal2)
		
		tween2:Play()
	end)

	Close_1.MouseButton1Click:Connect(function()
		local tweenInfo = TweenInfo.new(
			0.6,
			Enum.EasingStyle.Back,
			Enum.EasingDirection.Out
		)

		local goal = { Position = UDim2.new(0.5, 0, 2.5, 0) }

		local tween = TweenService:Create(Main_1, tweenInfo, goal)
		
		tween:Play()

		dragging = false
		lastGoalPos = nil
		startPos = nil

		wait(1.5)
		
		game.CoreGui:FindFirstChild("EchoUILibrary"):Destroy()
	end)
	
	
	Minimize_1.MouseButton1Click:Connect(function()
		local tweenInfo = TweenInfo.new(
			0.6,
			Enum.EasingStyle.Back,
			Enum.EasingDirection.Out
		)

		local goal = { Position = UDim2.new(0.5, 0, 2.5, 0) }

		local tween = TweenService:Create(Main_1, tweenInfo, goal)
		
		tween:Play()

		dragging = false
		lastGoalPos = nil
		startPos = nil
		
		local tweenInfo2 = TweenInfo.new(
			0.6,
			Enum.EasingStyle.Back,
			Enum.EasingDirection.Out
		)

		local goal2 = { Position = UDim2.new(0.5, 0,0.007, 0) }

		local tween2 = TweenService:Create(uitoggleholder_1, tweenInfo2, goal2)

		tween2:Play()
	end)
	
	wait(1.5)
	
	local tweenInfoUIToggle = TweenInfo.new(
		0.6,
		Enum.EasingStyle.Back,
		Enum.EasingDirection.Out
	)
	local goaluitoggle = { Position = UDim2.new(0.5, 0,0.007, 0) }
	local tweenuitoggle = TweenService:Create(uitoggleholder_1, tweenInfoUIToggle, goaluitoggle)
	tweenuitoggle:Play()

    local Tabs = {}
    local first = true
	local currentTab = nil
    function Tabs:CreateTab(Title)
        local TabFrame_1 = Instance.new("Frame")
        local UICorner_2 = Instance.new("UICorner")
        local TabButton_1 = Instance.new("TextButton")
        local TabIndicator_1 = Instance.new("Frame")
        local Elements_1 = Instance.new("ScrollingFrame")
        local UIListLayout_2 = Instance.new("UIListLayout")
        local UIPadding_24 = Instance.new("UIPadding")

        TabFrame_1.Name = "TabFrame"
        TabFrame_1.Parent = Tabs_1
        TabFrame_1.BackgroundColor3 = Color3.fromRGB(67,67,67)
        TabFrame_1.BackgroundTransparency = 0.8999999761581421
        TabFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
        TabFrame_1.BorderSizePixel = 0
        TabFrame_1.Size = UDim2.new(0, 70,0, 24)
        
        UICorner_2.Parent = TabFrame_1
        UICorner_2.CornerRadius = UDim.new(0,5)
        
        TabButton_1.Name = "TabButton"
        TabButton_1.Parent = TabFrame_1
        TabButton_1.Active = true
        TabButton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
        TabButton_1.BackgroundTransparency = 1
        TabButton_1.BorderColor3 = Color3.fromRGB(0,0,0)
        TabButton_1.BorderSizePixel = 0
        TabButton_1.Size = UDim2.new(1, 0,1, 0)
        TabButton_1.Font = Enum.Font.Roboto
        TabButton_1.Text = Title
        TabButton_1.TextColor3 = Color3.fromRGB(255,255,255)
        TabButton_1.TextSize = 12
        
        TabIndicator_1.Name = "TabIndicator"
        TabIndicator_1.Parent = TabFrame_1
        TabIndicator_1.AnchorPoint = Vector2.new(0.5, 0)
        TabIndicator_1.BackgroundColor3 = Color3.fromRGB(234,201,255)
        TabIndicator_1.BorderColor3 = Color3.fromRGB(0,0,0)
        TabIndicator_1.BorderSizePixel = 0
        TabIndicator_1.Position = UDim2.new(0.5, 0,0.899999976, 0)
        TabIndicator_1.Size = UDim2.new(0, 0,0, 1)

        Elements_1.Name = "Elements"
        Elements_1.Parent = ElementsFrame_1
        Elements_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
        Elements_1.BackgroundTransparency = 1
        Elements_1.BorderColor3 = Color3.fromRGB(0,0,0)
        Elements_1.BorderSizePixel = 0
        Elements_1.Size = UDim2.new(1, 0,1, 0)
        Elements_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
        Elements_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
        Elements_1.CanvasPosition = Vector2.new(0, 0)
        Elements_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
        Elements_1.ElasticBehavior = Enum.ElasticBehavior.Never
        Elements_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
        Elements_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
        Elements_1.ScrollBarImageTransparency = 1
        Elements_1.ScrollBarThickness = 1
        Elements_1.ScrollingDirection = Enum.ScrollingDirection.Y
        Elements_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
        Elements_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
        Elements_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

        UIListLayout_2.Parent = Elements_1
        UIListLayout_2.Padding = UDim.new(0,8)
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

        UIPadding_24.Parent = Elements_1
        UIPadding_24.PaddingBottom = UDim.new(0,1)
        UIPadding_24.PaddingLeft = UDim.new(0,1)
        UIPadding_24.PaddingTop = UDim.new(0,1)

        if first then
			first = false
			Elements_1.Visible = true
			currentTab = TabIndicator_1
			TabIndicator_1.Size = UDim2.new(0.5, 0,0, 1)
		else
			Elements_1.Visible = false
		end

		TabButton_1.MouseButton1Click:Connect(function()
			if currentTab == TabIndicator_1 then
				return
			end
			if currentTab then
				local deactivateTween = TweenService:Create(
                    currentTab, 
                    TweenInfo.new(0.2), 
                    {Size = UDim2.new(0, 0, 0, 1)}
                )
				deactivateTween:Play()
			end
			local activateTween = TweenService:Create(
                TabIndicator_1, 
                TweenInfo.new(0.2), 
                {Size = UDim2.new(0.5, 0, 0, 1)}
            )
			activateTween:Play()
			currentTab = TabIndicator_1
			for i, v in next, ElementsFrame_1:GetChildren() do
				v.Visible = false
			end
			Elements_1.Visible = true
		end)

        local Sections = {}
        function Sections:CreateSection()
            local Items_1 = Instance.new("Frame")
            local UIStroke_2 = Instance.new("UIStroke")
            local UIPadding_2 = Instance.new("UIPadding")
            local UIListLayout_3 = Instance.new("UIListLayout")
            local UICorner_4 = Instance.new("UICorner")

            Items_1.Name = "Items"
            Items_1.Parent = Elements_1
            Items_1.AutomaticSize = Enum.AutomaticSize.Y
            Items_1.BackgroundColor3 = Color3.fromRGB(17,17,17)
            Items_1.BackgroundTransparency = 0.2
            Items_1.BorderColor3 = Color3.fromRGB(0,0,0)
            Items_1.BorderSizePixel = 0
            Items_1.Size = UDim2.new(0, 345,0, 16)
    
            UIStroke_2.Parent = Items_1
            UIStroke_2.Color = Color3.fromRGB(67,67,67)
            UIStroke_2.Thickness = 1
            UIStroke_2.Transparency = 0.7
    
            UIPadding_2.Parent = Items_1
            UIPadding_2.PaddingBottom = UDim.new(0,8)
            UIPadding_2.PaddingTop = UDim.new(0,1)
    
            UIListLayout_3.Parent = Items_1
            UIListLayout_3.Padding = UDim.new(0,3)
            UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
    
            UICorner_4.Parent = Items_1
            UICorner_4.CornerRadius = UDim.new(0,4)

            local Elements = {}
            function Elements:AddSection(Title)
                local SectionText_1 = Instance.new("TextLabel")
                local UIPadding_3 = Instance.new("UIPadding")

                SectionText_1.Name = "SectionText"
                SectionText_1.Parent = Items_1
                SectionText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                SectionText_1.BackgroundTransparency = 1
                SectionText_1.BorderColor3 = Color3.fromRGB(0,0,0)
                SectionText_1.BorderSizePixel = 0
                SectionText_1.Size = UDim2.new(1, 0,0, 18)
                SectionText_1.Font = Enum.Font.Roboto
                SectionText_1.Text = Title
                SectionText_1.TextColor3 = Color3.fromRGB(150,150,150)
                SectionText_1.TextSize = 12
                SectionText_1.TextXAlignment = Enum.TextXAlignment.Left

                UIPadding_3.Parent = SectionText_1
                UIPadding_3.PaddingLeft = UDim.new(0,9)
                UIPadding_3.PaddingTop = UDim.new(0,2)
            end
            function Elements:AddButton(Title, Callback)
                local ButtonFrame_1 = Instance.new("Frame")
                local ButtonButton_1 = Instance.new("TextButton")
                local UIPadding_6 = Instance.new("UIPadding")

                ButtonFrame_1.Name = "ButtonFrame"
                ButtonFrame_1.Parent = Items_1
                ButtonFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                ButtonFrame_1.BackgroundTransparency = 1
                ButtonFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
                ButtonFrame_1.BorderSizePixel = 0
                ButtonFrame_1.Size = UDim2.new(1, 0,0, 20)
                
                ButtonButton_1.Name = "ButtonButton"
                ButtonButton_1.Parent = ButtonFrame_1
                ButtonButton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                ButtonButton_1.BackgroundTransparency = 1
                ButtonButton_1.BorderColor3 = Color3.fromRGB(0,0,0)
                ButtonButton_1.BorderSizePixel = 0
                ButtonButton_1.Size = UDim2.new(0.947303712, 0,1, 0)
                ButtonButton_1.Font = Enum.Font.Roboto
                ButtonButton_1.Text = Title
                ButtonButton_1.TextColor3 = Color3.fromRGB(90,90,90)
                ButtonButton_1.TextSize = 12
                ButtonButton_1.TextXAlignment = Enum.TextXAlignment.Left
                
                UIPadding_6.Parent = ButtonButton_1
                UIPadding_6.PaddingLeft = UDim.new(0,12)

                ButtonButton_1.MouseButton1Click:Connect(function()
                    local buttonClickTween = TweenService:Create(
                        ButtonButton_1, 
                        TweenInfo.new(0.1), 
                        {TextColor3 = Color3.fromRGB(150,150,150)}
                    )
                    buttonClickTween:Play()
    
                    buttonClickTween.Completed:Connect(function()
                        local buttonClickOffTween = TweenService:Create(
                            ButtonButton_1, 
                            TweenInfo.new(0.2), 
                            {TextColor3 = Color3.fromRGB(90,90,90)}
                        )
                        buttonClickOffTween:Play()
                    end)
                    Callback()
                end)
            end

            function Elements:Empty()
                local Empty_1 = Instance.new("Frame")

                Empty_1.Name = "Empty"
                Empty_1.Parent = Items_1
                Empty_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                Empty_1.BackgroundTransparency = 1
                Empty_1.BorderColor3 = Color3.fromRGB(0,0,0)
                Empty_1.BorderSizePixel = 0
                Empty_1.Size = UDim2.new(1, 0,0, 50)
                
            end

            function Elements:AddToggle(Title, Callback)
                Callback = Callback or function() end

                local toggled = false
                local debounce = false

                local ToggleFrame_1 = Instance.new("Frame")
                local ToggleText_1 = Instance.new("TextLabel")
                local UIPadding_20 = Instance.new("UIPadding")
                local TogglerFrame_1 = Instance.new("Frame")
                local UIStroke_10 = Instance.new("UIStroke")
                local UICorner_15 = Instance.new("UICorner")
                local TogglerIndicator_1 = Instance.new("Frame")
                local UICorner_16 = Instance.new("UICorner")
                local TogglerButton_1 = Instance.new("TextButton")

                ToggleFrame_1.Name = "ToggleFrame"
                ToggleFrame_1.Parent = Items_1
                ToggleFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                ToggleFrame_1.BackgroundTransparency = 1
                ToggleFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
                ToggleFrame_1.BorderSizePixel = 0
                ToggleFrame_1.Size = UDim2.new(1, 0,0, 20)

                ToggleText_1.Name = "ToggleText"
                ToggleText_1.Parent = ToggleFrame_1
                ToggleText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                ToggleText_1.BackgroundTransparency = 1
                ToggleText_1.BorderColor3 = Color3.fromRGB(0,0,0)
                ToggleText_1.BorderSizePixel = 0
                ToggleText_1.Size = UDim2.new(0.699999988, 0,1, 0)
                ToggleText_1.Font = Enum.Font.Roboto
                ToggleText_1.Text = Title
                ToggleText_1.TextColor3 = Color3.fromRGB(90,90,90)
                ToggleText_1.TextSize = 12
                ToggleText_1.TextXAlignment = Enum.TextXAlignment.Left

                UIPadding_20.Parent = ToggleText_1
                UIPadding_20.PaddingLeft = UDim.new(0,13)

                TogglerFrame_1.Name = "TogglerFrame"
                TogglerFrame_1.Parent = ToggleFrame_1
                TogglerFrame_1.BackgroundColor3 = Color3.fromRGB(15,15,15)
                TogglerFrame_1.BackgroundTransparency = 0.5
                TogglerFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
                TogglerFrame_1.BorderSizePixel = 0
                TogglerFrame_1.Position = UDim2.new(0.879999995, 0,0.166999996, 0)
                TogglerFrame_1.Size = UDim2.new(0, 28,0, 13)

                UIStroke_10.Parent = TogglerFrame_1
                UIStroke_10.Color = Color3.fromRGB(67,67,67)
                UIStroke_10.Thickness = 1
                UIStroke_10.Transparency = 0.7

                UICorner_15.Parent = TogglerFrame_1
                UICorner_15.CornerRadius = UDim.new(0,6)

                TogglerIndicator_1.Name = "TogglerIndicator"
                TogglerIndicator_1.Parent = TogglerFrame_1
                TogglerIndicator_1.AnchorPoint = Vector2.new(0, 0.5)
                TogglerIndicator_1.BackgroundColor3 = Color3.fromRGB(67,67,67)
                TogglerIndicator_1.BackgroundTransparency = 0.20000000298023224
                TogglerIndicator_1.BorderColor3 = Color3.fromRGB(0,0,0)
                TogglerIndicator_1.BorderSizePixel = 0
                TogglerIndicator_1.Position = UDim2.new(0, 1,0.5, 0)
                TogglerIndicator_1.Size = UDim2.new(0, 11,0, 11)

                UICorner_16.Parent = TogglerIndicator_1
                UICorner_16.CornerRadius = UDim.new(0,6)

                TogglerButton_1.Name = "TogglerButton"
                TogglerButton_1.Parent = TogglerFrame_1
                TogglerButton_1.Active = true
                TogglerButton_1.BackgroundColor3 = Color3.fromRGB(67,67,67)
                TogglerButton_1.BackgroundTransparency = 1
                TogglerButton_1.BorderColor3 = Color3.fromRGB(0,0,0)
                TogglerButton_1.BorderSizePixel = 0
                TogglerButton_1.Size = UDim2.new(1, 0,1, 0)
                TogglerButton_1.Font = Enum.Font.SourceSans
                TogglerButton_1.Text = ""
                TogglerButton_1.TextSize = 14

                TogglerButton_1.MouseButton1Click:Connect(function()
                    if debounce == false then
                        if toggled == false then
                            debounce = true
                            local onTween = TweenService:Create(
                                TogglerIndicator_1, 
                                TweenInfo.new(0.2),
                                {Position = UDim2.new(0, 15,0.5, 0)}
                            )
                            local onTween2 = TweenService:Create(
                                TogglerFrame_1, 
                                TweenInfo.new(0.2),
                                {BackgroundColor3 = Color3.fromRGB(234,201,255)}
                            )
                            local onTween3 = TweenService:Create(
                                ToggleText_1, 
                                TweenInfo.new(0.2),
                                {TextColor3 = Color3.fromRGB(150,150,150)}
                            )
                            local onTween4 = TweenService:Create(
                                TogglerIndicator_1, 
                                TweenInfo.new(0.2),
                                {BackgroundColor3 = Color3.fromRGB(236,215,255)}
                            )
                            onTween:Play()
                            onTween2:Play()
                            onTween3:Play()
                            onTween4:Play()
                            debounce = false
                            toggled = true
                            pcall(Callback, toggled)
                        elseif toggled == true then
                            debounce = true
                            local offTween = TweenService:Create(
                                TogglerIndicator_1, 
                                TweenInfo.new(0.2),
                                {Position = UDim2.new(0, 1,0.5, 0)}
                            )
                            local offTween2 = TweenService:Create(
                                TogglerFrame_1, 
                                TweenInfo.new(0.2),
                                {BackgroundColor3 = Color3.fromRGB(15,15,15)}
                            )
                            local offTween3 = TweenService:Create(
                                ToggleText_1, 
                                TweenInfo.new(0.2),
                                {TextColor3 = Color3.fromRGB(90,90,90)}
                            )
                            local offTween4 = TweenService:Create(
                                TogglerIndicator_1, 
                                TweenInfo.new(0.2),
                                {BackgroundColor3 = Color3.fromRGB(67,67,67)}
                            )
                            offTween:Play()
                            offTween2:Play()
                            offTween3:Play()
                            offTween4:Play()
                            debounce = false
                            toggled = false
                            pcall(Callback, toggled)
                        end
                    end
                end)
            end
            function Elements:AddBox(Title, Callback)
                local BoxFrame_1 = Instance.new("Frame")
                local BoxText_1 = Instance.new("TextLabel")
                local UIPadding_4 = Instance.new("UIPadding")
                local TextBoxFrame_1 = Instance.new("Frame")
                local UIStroke_3 = Instance.new("UIStroke")
                local UICorner_5 = Instance.new("UICorner")
                local TextBoxIndicator_1 = Instance.new("Frame")
                local UICorner_6 = Instance.new("UICorner")
                local TextBox_1 = Instance.new("TextBox")
                local UIPadding_5 = Instance.new("UIPadding")

                BoxFrame_1.Name = "BoxFrame"
                BoxFrame_1.Parent = Items_1
                BoxFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                BoxFrame_1.BackgroundTransparency = 1
                BoxFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
                BoxFrame_1.BorderSizePixel = 0
                BoxFrame_1.Size = UDim2.new(1, 0,0, 22)

                BoxText_1.Name = "BoxText"
                BoxText_1.Parent = BoxFrame_1
                BoxText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                BoxText_1.BackgroundTransparency = 1
                BoxText_1.BorderColor3 = Color3.fromRGB(0,0,0)
                BoxText_1.BorderSizePixel = 0
                BoxText_1.Size = UDim2.new(0.569999993, 0,1, 0)
                BoxText_1.Font = Enum.Font.Roboto
                BoxText_1.Text = Title
                BoxText_1.TextColor3 = Color3.fromRGB(90,90,90)
                BoxText_1.TextSize = 12
                BoxText_1.TextXAlignment = Enum.TextXAlignment.Left

                UIPadding_4.Parent = BoxText_1
                UIPadding_4.PaddingLeft = UDim.new(0,13)

                TextBoxFrame_1.Name = "TextBoxFrame"
                TextBoxFrame_1.Parent = BoxFrame_1
                TextBoxFrame_1.BackgroundColor3 = Color3.fromRGB(15,15,15)
                TextBoxFrame_1.BackgroundTransparency = 0.5
                TextBoxFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
                TextBoxFrame_1.BorderSizePixel = 0
                TextBoxFrame_1.Position = UDim2.new(0.810000002, 0,0.166999996, 0)
                TextBoxFrame_1.Size = UDim2.new(0, 52,0, 16)

                UIStroke_3.Parent = TextBoxFrame_1
                UIStroke_3.Color = Color3.fromRGB(67,67,67)
                UIStroke_3.Thickness = 1
                UIStroke_3.Transparency = 0.7

                UICorner_5.Parent = TextBoxFrame_1
                UICorner_5.CornerRadius = UDim.new(0,4)

                TextBoxIndicator_1.Name = "TextBoxIndicator"
                TextBoxIndicator_1.Parent = TextBoxFrame_1
                TextBoxIndicator_1.AnchorPoint = Vector2.new(0.5, 0)
                TextBoxIndicator_1.BackgroundColor3 = Color3.fromRGB(67,67,67)
                TextBoxIndicator_1.BackgroundTransparency = 1
                TextBoxIndicator_1.BorderColor3 = Color3.fromRGB(0,0,0)
                TextBoxIndicator_1.BorderSizePixel = 0
                TextBoxIndicator_1.Position = UDim2.new(0.5, 0,0.930000007, 0)
                TextBoxIndicator_1.Size = UDim2.new(0.899999976, 0,0, 1)

                UICorner_6.Parent = TextBoxIndicator_1
                UICorner_6.CornerRadius = UDim.new(0,10)

                TextBox_1.Parent = TextBoxFrame_1
                TextBox_1.Active = true
                TextBox_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                TextBox_1.BackgroundTransparency = 1
                TextBox_1.BorderColor3 = Color3.fromRGB(0,0,0)
                TextBox_1.BorderSizePixel = 0
                TextBox_1.CursorPosition = -1
                TextBox_1.Size = UDim2.new(1, 0,1, 0)
                TextBox_1.ClipsDescendants = true
                TextBox_1.Font = Enum.Font.Roboto
                TextBox_1.PlaceholderColor3 = Color3.fromRGB(255,255,255)
                TextBox_1.PlaceholderText = ""
                TextBox_1.Text = ""
                TextBox_1.TextColor3 = Color3.fromRGB(255,255,255)
                TextBox_1.TextSize = 11

                UIPadding_5.Parent = TextBox_1
                UIPadding_5.PaddingLeft = UDim.new(0,2)
                UIPadding_5.PaddingRight = UDim.new(0,2)

                TextBox_1.Focused:Connect(function()
                    local onTween = TweenService:Create(
                        TextBoxFrame_1, 
                        TweenInfo.new(0.2),
                        {BackgroundColor3 = Color3.fromRGB(29,29,29)}
                    )
                    local onTween2 = TweenService:Create(
                        TextBoxIndicator_1, 
                        TweenInfo.new(0.2),
                        {BackgroundTransparency = 0}
                    )
                    local onTween3 = TweenService:Create(
                        BoxText_1, 
                        TweenInfo.new(0.2),
                        {TextColor3 = Color3.fromRGB(150,150,150)}
                    )
                    onTween:Play()
                    onTween2:Play()
                    onTween3:Play()
                end)

                TextBox_1.FocusLost:Connect(function()
                    local offTween = TweenService:Create(
                        TextBoxFrame_1, 
                        TweenInfo.new(0.2),
                        {BackgroundColor3 = Color3.fromRGB(15,15,15)}
                    )
                    local offTween2 = TweenService:Create(
                        TextBoxIndicator_1, 
                        TweenInfo.new(0.2),
                        {BackgroundTransparency = 1}
                    )
                    local offTween3 = TweenService:Create(
                        BoxText_1, 
                        TweenInfo.new(0.2),
                        {TextColor3 = Color3.fromRGB(90,90,90)}
                    )
                    offTween:Play()
                    offTween2:Play()
                    offTween3:Play()
                    Callback(TextBox_1.Text)
                end)
            end
            function Elements:AddSlider(Title, Min, Max, Callback)
                local SliderFrame_1 = Instance.new("Frame")
                local SliderText_1 = Instance.new("TextLabel")
                local UIPadding_16 = Instance.new("UIPadding")
                local SliderValue_1 = Instance.new("TextLabel")
                local UIPadding_17 = Instance.new("UIPadding")
                local SliderHolder_1 = Instance.new("Frame")
                local UIStroke_8 = Instance.new("UIStroke")
                local UICorner_11 = Instance.new("UICorner")
                local SliderButton_1 = Instance.new("TextButton")
                local SliderInner_1 = Instance.new("Frame")
                local UICorner_12 = Instance.new("UICorner")

                SliderFrame_1.Name = "SliderFrame"
                SliderFrame_1.Parent = Items_1
                SliderFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                SliderFrame_1.BackgroundTransparency = 1
                SliderFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
                SliderFrame_1.BorderSizePixel = 0
                SliderFrame_1.Size = UDim2.new(1, 0,0, 28)

                SliderText_1.Name = "SliderText"
                SliderText_1.Parent = SliderFrame_1
                SliderText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                SliderText_1.BackgroundTransparency = 1
                SliderText_1.BorderColor3 = Color3.fromRGB(0,0,0)
                SliderText_1.BorderSizePixel = 0
                SliderText_1.Size = UDim2.new(0.66900003, 0,0.699999988, 0)
                SliderText_1.Font = Enum.Font.Roboto
                SliderText_1.Text = Title
                SliderText_1.TextColor3 = Color3.fromRGB(90,90,90)
                SliderText_1.TextSize = 12
                SliderText_1.TextXAlignment = Enum.TextXAlignment.Left

                UIPadding_16.Parent = SliderText_1
                UIPadding_16.PaddingLeft = UDim.new(0,13)

                SliderValue_1.Name = "SliderValue"
                SliderValue_1.Parent = SliderFrame_1
                SliderValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                SliderValue_1.BackgroundTransparency = 1
                SliderValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
                SliderValue_1.BorderSizePixel = 0
                SliderValue_1.Position = UDim2.new(0.720000029, 0,0, 0)
                SliderValue_1.Size = UDim2.new(0.244000003, 0,0.699999988, 0)
                SliderValue_1.Font = Enum.Font.Roboto
                SliderValue_1.Text = Min
                SliderValue_1.TextColor3 = Color3.fromRGB(90,90,90)
                SliderValue_1.TextSize = 12
                SliderValue_1.TextXAlignment = Enum.TextXAlignment.Right

                UIPadding_17.Parent = SliderValue_1
                UIPadding_17.PaddingRight = UDim.new(0,3)

                SliderHolder_1.Name = "SliderHolder"
                SliderHolder_1.Parent = SliderFrame_1
                SliderHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                SliderHolder_1.BackgroundTransparency = 1
                SliderHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
                SliderHolder_1.BorderSizePixel = 0
                SliderHolder_1.Position = UDim2.new(0, 14,0, 20)
                SliderHolder_1.Size = UDim2.new(0, 314,0, 5)

                UIStroke_8.Parent = SliderHolder_1
                UIStroke_8.Color = Color3.fromRGB(67,67,67)
                UIStroke_8.Thickness = 1
                UIStroke_8.Transparency = 0.7

                UICorner_11.Parent = SliderHolder_1
                UICorner_11.CornerRadius = UDim.new(0,4)

                SliderButton_1.Name = "SliderButton"
                SliderButton_1.Parent = SliderHolder_1
                SliderButton_1.Active = true
                SliderButton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                SliderButton_1.BackgroundTransparency = 1
                SliderButton_1.BorderColor3 = Color3.fromRGB(0,0,0)
                SliderButton_1.BorderSizePixel = 0
                SliderButton_1.Size = UDim2.new(1, 0,1, 0)
                SliderButton_1.Font = Enum.Font.SourceSans
                SliderButton_1.Text = ""
                SliderButton_1.TextSize = 14

                SliderInner_1.Name = "SliderInner"
                SliderInner_1.Parent = SliderButton_1
                SliderInner_1.BackgroundColor3 = Color3.fromRGB(234,201,255)
                SliderInner_1.BorderColor3 = Color3.fromRGB(0,0,0)
                SliderInner_1.BorderSizePixel = 0
                SliderInner_1.Size = UDim2.new(0, 0,0, 5)

                UICorner_12.Parent = SliderInner_1
                UICorner_12.CornerRadius = UDim.new(0,4)

                local isDragging = false

                SliderButton_1.InputBegan:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
                        local onTween = TweenService:Create(
                            SliderText_1, 
                            TweenInfo.new(0.2),
                            {TextColor3 = Color3.fromRGB(150,150,150)}
                        )
                        onTween:Play()
                        isDragging = true
                    end
                end)

                game:GetService("UserInputService").InputEnded:Connect(function(input)
                    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
                        local offTween = TweenService:Create(
                            SliderText_1, 
                            TweenInfo.new(0.2),
                            {TextColor3 = Color3.fromRGB(90,90,90)}
                        )
                        offTween:Play()
                        isDragging = false
                    end
                end)

                game:GetService("RunService").RenderStepped:Connect(function()
                    if isDragging then
                        local mousePosition = game:GetService("UserInputService"):GetMouseLocation()
						local sliderPosition = SliderButton_1.AbsolutePosition
						local sliderWidth = SliderButton_1.AbsoluteSize.X
						local fillWidth = math.clamp(mousePosition.X - sliderPosition.X, 0, sliderWidth)
						SliderInner_1.Size = UDim2.new(0, fillWidth, 1, 0)
						local value = fillWidth / sliderWidth
						local displayValue = Min + (Max - Min) * value
                        SliderValue_1.Text = (math.floor(displayValue + 0.5))
						Callback(math.floor(displayValue + 0.5))
                    end
                end)
            end
            function Elements:AddDropdown(Title, Options, Callback)
                local DropdownFrame_1 = Instance.new("Frame")
                local DropdownText_1 = Instance.new("TextLabel")
                local UIPadding_8 = Instance.new("UIPadding")
                local SelectedFrame_1 = Instance.new("Frame")
                local UIStroke_4 = Instance.new("UIStroke")
                local UICorner_7 = Instance.new("UICorner")
                local SelectedText_1 = Instance.new("TextLabel")
                local UIPadding_9 = Instance.new("UIPadding")
                local DropdownButton_1 = Instance.new("ImageButton")
                local OptionsFrame_1 = Instance.new("Frame")
                local UICorner_8 = Instance.new("UICorner")
                local UIStroke_5 = Instance.new("UIStroke")
                local UIListLayout_4 = Instance.new("UIListLayout")
                local UIPadding_11 = Instance.new("UIPadding")
                local OptionScrolling = Instance.new("ScrollingFrame")
                              
                DropdownFrame_1.Name = "DropdownFrame"
                DropdownFrame_1.Parent = Items_1
                DropdownFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                DropdownFrame_1.BackgroundTransparency = 1
                DropdownFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
                DropdownFrame_1.BorderSizePixel = 0
                DropdownFrame_1.Size = UDim2.new(1, 0,0, 22)

                DropdownText_1.Name = "DropdownText"
                DropdownText_1.Parent = DropdownFrame_1
                DropdownText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                DropdownText_1.BackgroundTransparency = 1
                DropdownText_1.BorderColor3 = Color3.fromRGB(0,0,0)
                DropdownText_1.BorderSizePixel = 0
                DropdownText_1.Size = UDim2.new(0.525056183, 0,1, 0)
                DropdownText_1.Font = Enum.Font.Roboto
                DropdownText_1.Text = Title
                DropdownText_1.TextColor3 = Color3.fromRGB(90,90,90) -- Color3.fromRGB(150,150,150)
                DropdownText_1.TextSize = 12
                DropdownText_1.TextXAlignment = Enum.TextXAlignment.Left

                UIPadding_8.Parent = DropdownText_1
                UIPadding_8.PaddingLeft = UDim.new(0,13)

                SelectedFrame_1.Name = "SelectedFrame"
                SelectedFrame_1.Parent = DropdownFrame_1
                SelectedFrame_1.BackgroundColor3 = Color3.fromRGB(15,15,15)
                SelectedFrame_1.BackgroundTransparency = 0.5
                SelectedFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
                SelectedFrame_1.BorderSizePixel = 0
                SelectedFrame_1.Position = UDim2.new(0.764999986, 0,0.159999996, 0)
                SelectedFrame_1.Size = UDim2.new(0, 67,0, 17)

                UIStroke_4.Parent = SelectedFrame_1
                UIStroke_4.Color = Color3.fromRGB(67,67,67)
                UIStroke_4.Thickness = 1
                UIStroke_4.Transparency = 0.7

                UICorner_7.Parent = SelectedFrame_1
                UICorner_7.CornerRadius = UDim.new(0,4)

                SelectedText_1.Name = "SelectedText"
                SelectedText_1.Parent = SelectedFrame_1
                SelectedText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                SelectedText_1.BackgroundTransparency = 1
                SelectedText_1.BorderColor3 = Color3.fromRGB(0,0,0)
                SelectedText_1.BorderSizePixel = 0
                SelectedText_1.Size = UDim2.new(0.763582587, 0,1, 0)
                SelectedText_1.ClipsDescendants = true
                SelectedText_1.Font = Enum.Font.Roboto
                SelectedText_1.Text = ""
                SelectedText_1.TextColor3 = Color3.fromRGB(234,201,255)
                SelectedText_1.TextSize = 11
                SelectedText_1.TextTruncate = Enum.TextTruncate.AtEnd

                
                UIPadding_9.Parent = SelectedText_1
                UIPadding_9.PaddingLeft = UDim.new(0,4)
                UIPadding_9.PaddingBottom = UDim.new(0,1)

                DropdownButton_1.Name = "DropdowButton"
                DropdownButton_1.Parent = SelectedFrame_1
                DropdownButton_1.Active = true
                DropdownButton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                DropdownButton_1.BackgroundTransparency = 1
                DropdownButton_1.BorderColor3 = Color3.fromRGB(0,0,0)
                DropdownButton_1.BorderSizePixel = 0
                DropdownButton_1.Position = UDim2.new(0.763999999, 0,0, 3)
                DropdownButton_1.Rotation = -90
                DropdownButton_1.Size = UDim2.new(0, 11,0, 11)
                DropdownButton_1.ZIndex = 3
                DropdownButton_1.Image = "rbxassetid://126929238313576"
                DropdownButton_1.ImageColor3 = Color3.fromRGB(95,95,95)

                OptionsFrame_1.Name = "OptionsFrame"
                OptionsFrame_1.Parent = DropdownFrame_1
                OptionsFrame_1.AutomaticSize = Enum.AutomaticSize.Y
                OptionsFrame_1.BackgroundColor3 = Color3.fromRGB(15,15,15)
                OptionsFrame_1.BackgroundTransparency = 0.15000000596046448
                OptionsFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
                OptionsFrame_1.BorderSizePixel = 0
                OptionsFrame_1.Position = UDim2.new(0.764999986, 0,1.20000005, 0)
                OptionsFrame_1.Size = UDim2.new(0, 67,0, 70)
                OptionsFrame_1.Visible = false
                OptionsFrame_1.ZIndex = 4

                OptionScrolling.Name = "Tabs"
                OptionScrolling.Parent = OptionsFrame_1
                OptionScrolling.Active = true
                OptionScrolling.BackgroundColor3 = Color3.fromRGB(255,255,255)
                OptionScrolling.BackgroundTransparency = 1
                OptionScrolling.BorderColor3 = Color3.fromRGB(0,0,0)
                OptionScrolling.BorderSizePixel = 0
                OptionScrolling.Size = UDim2.new(1, 0,1, 0)
                OptionScrolling.ClipsDescendants = true
                OptionScrolling.AutomaticCanvasSize = Enum.AutomaticSize.Y
                OptionScrolling.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
                OptionScrolling.CanvasPosition = Vector2.new(0, 0)
                OptionScrolling.CanvasSize = UDim2.new(0, 0,0.5, 0)
                OptionScrolling.ElasticBehavior = Enum.ElasticBehavior.Never
                OptionScrolling.HorizontalScrollBarInset = Enum.ScrollBarInset.None
                OptionScrolling.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
                OptionScrolling.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
                OptionScrolling.ScrollBarImageTransparency = 1
                OptionScrolling.ScrollBarThickness = 1
                OptionScrolling.ScrollingDirection = Enum.ScrollingDirection.Y
                OptionScrolling.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
                OptionScrolling.VerticalScrollBarInset = Enum.ScrollBarInset.None
                OptionScrolling.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

                UICorner_8.Parent = OptionsFrame_1
                UICorner_8.CornerRadius = UDim.new(0,4)

                UIStroke_5.Parent = OptionsFrame_1
                UIStroke_5.Color = Color3.fromRGB(67,67,67)
                UIStroke_5.Thickness = 1
                UIStroke_5.Transparency = 0.7

                UIListLayout_4.Parent = OptionScrolling
                UIListLayout_4.Padding = UDim.new(0,4)
                UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

                UIPadding_11.Parent = OptionScrolling
                UIPadding_11.PaddingBottom = UDim.new(0,2)

                local isDropdownOpen = false

                local function ToggleDropdown()
                    isDropdownOpen = not isDropdownOpen
                    local targetRotation = isDropdownOpen and 0 or -90
                    local rotationTweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
					local rotationTween = TweenService:Create(DropdownButton_1, rotationTweenInfo, { Rotation = targetRotation })
                    if isDropdownOpen then
                        local onTween = TweenService:Create(
                            DropdownText_1, 
                            TweenInfo.new(0.2),
                            {TextColor3 = Color3.fromRGB(150,150,150)}
                        )
                        onTween:Play()
                        OptionsFrame_1.Visible = true
                        rotationTween:Play()
                    else
                        local offTween = TweenService:Create(
                            DropdownText_1, 
                            TweenInfo.new(0.2),
                            {TextColor3 = Color3.fromRGB(90,90,90)}
                        )
                        offTween:Play()
                        OptionsFrame_1.Visible = false
                        rotationTween:Play()
                    end
                end

                DropdownButton_1.MouseButton1Click:Connect(ToggleDropdown)

                for i, optionText in ipairs(Options) do
                    local OptionButton_1 = Instance.new("TextButton")
                    local UIPadding_10 = Instance.new("UIPadding")

                    OptionButton_1.Name = "OptionButton"
                    OptionButton_1.Parent = OptionScrolling
                    OptionButton_1.Active = true
                    OptionButton_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                    OptionButton_1.BackgroundTransparency = 1
                    OptionButton_1.BorderColor3 = Color3.fromRGB(0,0,0)
                    OptionButton_1.BorderSizePixel = 0
                    OptionButton_1.Size = UDim2.new(0, 67,0, 15)
                    OptionButton_1.ZIndex = 5
                    OptionButton_1.Font = Enum.Font.Roboto
                    OptionButton_1.Text = optionText
                    OptionButton_1.TextColor3 = Color3.fromRGB(90,90,90)
                    OptionButton_1.TextSize = 11
                    OptionButton_1.TextXAlignment = Enum.TextXAlignment.Left
                    OptionButton_1.TextTruncate = Enum.TextTruncate.AtEnd

                    UIPadding_10.Parent = OptionButton_1
                    UIPadding_10.PaddingLeft = UDim.new(0,6)
                    UIPadding_10.PaddingRight = UDim.new(0,6)

                    OptionButton_1.MouseButton1Click:Connect(function()
                        SelectedText_1.Text = optionText
                        Callback(optionText)
                        ToggleDropdown()
                    end)
                end
            end
            function Elements:AddResizeToggle(Title)
                Callback = Callback or function() end
            
                local resizetoggled = false
                local resizedebounce = false
            
                local ResizeToggleFrame_1 = Instance.new("Frame")
                local ResizeToggleText_1 = Instance.new("TextLabel")
                local ResizeUIPadding_20 = Instance.new("UIPadding")
                local ResizeTogglerFrame_1 = Instance.new("Frame")
                local ResizeUIStroke_10 = Instance.new("UIStroke")
                local ResizeUICorner_15 = Instance.new("UICorner")
                local ResizeTogglerIndicator_1 = Instance.new("Frame")
                local ResizeUICorner_16 = Instance.new("UICorner")
                local ResizeTogglerButton_1 = Instance.new("TextButton")
            
                ResizeToggleFrame_1.Name = "ResizeToggleFrame"
                ResizeToggleFrame_1.Parent = Items_1
                ResizeToggleFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                ResizeToggleFrame_1.BackgroundTransparency = 1
                ResizeToggleFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
                ResizeToggleFrame_1.BorderSizePixel = 0
                ResizeToggleFrame_1.Size = UDim2.new(1, 0,0, 20)
            
                ResizeToggleText_1.Name = "ResizeToggleText"
                ResizeToggleText_1.Parent = ResizeToggleFrame_1
                ResizeToggleText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
                ResizeToggleText_1.BackgroundTransparency = 1
                ResizeToggleText_1.BorderColor3 = Color3.fromRGB(0,0,0)
                ResizeToggleText_1.BorderSizePixel = 0
                ResizeToggleText_1.Size = UDim2.new(0.699999988, 0,1, 0)
                ResizeToggleText_1.Font = Enum.Font.Roboto
                ResizeToggleText_1.Text = Title
                ResizeToggleText_1.TextColor3 = Color3.fromRGB(90,90,90)
                ResizeToggleText_1.TextSize = 12
                ResizeToggleText_1.TextXAlignment = Enum.TextXAlignment.Left
            
                ResizeUIPadding_20.Parent = ResizeToggleText_1
                ResizeUIPadding_20.PaddingLeft = UDim.new(0,13)
            
                ResizeTogglerFrame_1.Name = "ResizeTogglerFrame"
                ResizeTogglerFrame_1.Parent = ResizeToggleFrame_1
                ResizeTogglerFrame_1.BackgroundColor3 = Color3.fromRGB(15,15,15)
                ResizeTogglerFrame_1.BackgroundTransparency = 0.5
                ResizeTogglerFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
                ResizeTogglerFrame_1.BorderSizePixel = 0
                ResizeTogglerFrame_1.Position = UDim2.new(0.879999995, 0,0.166999996, 0)
                ResizeTogglerFrame_1.Size = UDim2.new(0, 28,0, 13)
            
                ResizeUIStroke_10.Parent = ResizeTogglerFrame_1
                ResizeUIStroke_10.Color = Color3.fromRGB(67,67,67)
                ResizeUIStroke_10.Thickness = 1
                ResizeUIStroke_10.Transparency = 0.7
            
                ResizeUICorner_15.Parent = ResizeTogglerFrame_1
                ResizeUICorner_15.CornerRadius = UDim.new(0,6)
            
                ResizeTogglerIndicator_1.Name = "ResizeTogglerIndicator"
                ResizeTogglerIndicator_1.Parent = ResizeTogglerFrame_1
                ResizeTogglerIndicator_1.AnchorPoint = Vector2.new(0, 0.5)
                ResizeTogglerIndicator_1.BackgroundColor3 = Color3.fromRGB(67,67,67)
                ResizeTogglerIndicator_1.BackgroundTransparency = 0.20000000298023224
                ResizeTogglerIndicator_1.BorderColor3 = Color3.fromRGB(0,0,0)
                ResizeTogglerIndicator_1.BorderSizePixel = 0
                ResizeTogglerIndicator_1.Position = UDim2.new(0, 1,0.5, 0)
                ResizeTogglerIndicator_1.Size = UDim2.new(0, 11,0, 11)
            
                ResizeUICorner_16.Parent = ResizeTogglerIndicator_1
                ResizeUICorner_16.CornerRadius = UDim.new(0,6)
            
                ResizeTogglerButton_1.Name = "ResizeTogglerButton"
                ResizeTogglerButton_1.Parent = ResizeTogglerFrame_1
                ResizeTogglerButton_1.Active = true
                ResizeTogglerButton_1.BackgroundColor3 = Color3.fromRGB(67,67,67)
                ResizeTogglerButton_1.BackgroundTransparency = 1
                ResizeTogglerButton_1.BorderColor3 = Color3.fromRGB(0,0,0)
                ResizeTogglerButton_1.BorderSizePixel = 0
                ResizeTogglerButton_1.Size = UDim2.new(1, 0,1, 0)
                ResizeTogglerButton_1.Font = Enum.Font.SourceSans
                ResizeTogglerButton_1.Text = ""
                ResizeTogglerButton_1.TextSize = 14
            
                ResizeTogglerButton_1.MouseButton1Click:Connect(function()
                    if resizedebounce == false then
                        if resizetoggled == false then
                            resizedebounce = true
                            local onTween = TweenService:Create(
                                ResizeTogglerIndicator_1, 
                                TweenInfo.new(0.2),
                                {Position = UDim2.new(0, 15,0.5, 0)}
                            )
                            local onTween2 = TweenService:Create(
                                ResizeTogglerFrame_1, 
                                TweenInfo.new(0.2),
                                {BackgroundColor3 = Color3.fromRGB(234,201,255)}
                            )
                            local onTween3 = TweenService:Create(
                                ResizeToggleText_1, 
                                TweenInfo.new(0.2),
                                {TextColor3 = Color3.fromRGB(150,150,150)}
                            )
                            local onTween4 = TweenService:Create(
                                ResizeTogglerIndicator_1, 
                                TweenInfo.new(0.2),
                                {BackgroundColor3 = Color3.fromRGB(236,215,255)}
                            )
                            onTween:Play()
                            onTween2:Play()
                            onTween3:Play()
                            onTween4:Play()
                            resizedebounce = false
                            resizetoggled = true                            

                            -- SMALL RESIZED ELEMENTS
                            local lonTween = TweenService:Create(
                                Main_1, 
                                TweenInfo.new(0.2),
                                {Size = UDim2.new(0, 453,0, 258)}
                            )
                            local lonTween3 = TweenService:Create(
                                TopBar_1, 
                                TweenInfo.new(0.2),
                                {Size = UDim2.new(1, 0,0, 25)}
                            )
                            local lonTween4 = TweenService:Create(
                                Minimize_1, 
                                TweenInfo.new(0.2),
                                {Position = UDim2.new(0, 410,0, 7)}
                            )
                            local lonTween5 = TweenService:Create(
                                Close_1, 
                                TweenInfo.new(0.2),
                                {Position = UDim2.new(0, 430,0, 7)}
                            )
                            local lonTween6 = TweenService:Create(
                                TabsHolder_1, 
                                TweenInfo.new(0.2),
                                {Size = UDim2.new(0, 434,0, 28)}
                            )
                            local lonTween7 = TweenService:Create(
                                ElementsFrame_1, 
                                TweenInfo.new(0.2),
                                {Size = UDim2.new(0, 435,0, 177)}
                            )
                            local lonTween8 = TweenService:Create(
                                Elements_1, 
                                TweenInfo.new(0.2),
                                {Size = UDim2.new(0, 435,0, 177)}
                            )

                            local elementsFrame = game.CoreGui:FindFirstChild("EchoUILibrary"):FindFirstChild("Main"):FindFirstChild("ElementsFrame")

                            if elementsFrame then
                                for _, element in ipairs(elementsFrame:GetChildren()) do
                                    if element:IsA("ScrollingFrame") and element.Name == "Elements" then
                                        for _, item in ipairs(element:GetChildren()) do
                                            if item:IsA("Frame") and item.Name == "Items" then
                                                local lonTween9 = TweenService:Create(
                                                    item, 
                                                    TweenInfo.new(0.2),
                                                    {Size = UDim2.new(0.995, 0, 0, 16)}
                                                )
                                                lonTween9:Play()
                                            end
                                        end
                                    end
                                end
                            end

                            if elementsFrame then
                                for _, element in ipairs(elementsFrame:GetChildren()) do
                                    if element:IsA("ScrollingFrame") and element.Name == "Elements" then
                                        for _, item in ipairs(element:GetChildren()) do
                                            if item:IsA("Frame") and item.Name == "Items" then
                                                for _, toggleframe in ipairs(item:GetChildren()) do
                                                    if toggleframe:IsA("Frame") and toggleframe.Name == "ToggleFrame" then
                                                        for _, toggler in ipairs(toggleframe:GetChildren()) do
                                                            if toggler:IsA("Frame") and toggler.Name == "TogglerFrame" then
                                                                local EonTweenT = TweenService:Create(
                                                                    toggler, 
                                                                    TweenInfo.new(0.2),
                                                                    {Position = UDim2.new(0.9, 0,0.167, 0)}
                                                                )
                                                                EonTweenT:Play()
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            if elementsFrame then
                                for _, element in ipairs(elementsFrame:GetChildren()) do
                                    if element:IsA("ScrollingFrame") and element.Name == "Elements" then
                                        for _, item in ipairs(element:GetChildren()) do
                                            if item:IsA("Frame") and item.Name == "Items" then
                                                for _, resizetoggleframe in ipairs(item:GetChildren()) do
                                                    if resizetoggleframe:IsA("Frame") and resizetoggleframe.Name == "ResizeToggleFrame" then
                                                        for _, resizetoggler in ipairs(resizetoggleframe:GetChildren()) do
                                                            if resizetoggler:IsA("Frame") and resizetoggler.Name == "ResizeTogglerFrame" then
                                                                local EonTweenRT = TweenService:Create(
                                                                    resizetoggler, 
                                                                    TweenInfo.new(0.2),
                                                                    {Position = UDim2.new(0.9, 0,0.167, 0)}
                                                                )
                                                                EonTweenRT:Play()
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            if elementsFrame then
                                for _, element in ipairs(elementsFrame:GetChildren()) do
                                    if element:IsA("ScrollingFrame") and element.Name == "Elements" then
                                        for _, item in ipairs(element:GetChildren()) do
                                            if item:IsA("Frame") and item.Name == "Items" then
                                                for _, dropdownframe in ipairs(item:GetChildren()) do
                                                    if dropdownframe:IsA("Frame") and dropdownframe.Name == "DropdownFrame" then
                                                        for _, optionframe in ipairs(dropdownframe:GetChildren()) do
                                                            if optionframe:IsA("Frame") and optionframe.Name == "OptionsFrame" then
                                                                local EonTweenOFT = TweenService:Create(
                                                                    optionframe, 
                                                                    TweenInfo.new(0.2),
                                                                    {Position = UDim2.new(0.815, 0,1.2, 0)}
                                                                )
                                                                EonTweenOFT:Play()
                                                            end
                                                        end
                                                        for _, selectedframe in ipairs(dropdownframe:GetChildren()) do
                                                            if selectedframe:IsA("Frame") and selectedframe.Name == "SelectedFrame" then
                                                                local EonTweenSFT = TweenService:Create(
                                                                    selectedframe, 
                                                                    TweenInfo.new(0.2),
                                                                    {Position = UDim2.new(0.815, 0,0.16, 0)}
                                                                )
                                                                EonTweenSFT:Play()
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            if elementsFrame then
                                for _, element in ipairs(elementsFrame:GetChildren()) do
                                    if element:IsA("ScrollingFrame") and element.Name == "Elements" then
                                        for _, item in ipairs(element:GetChildren()) do
                                            if item:IsA("Frame") and item.Name == "Items" then
                                                for _, boxframe in ipairs(item:GetChildren()) do
                                                    if boxframe:IsA("Frame") and boxframe.Name == "BoxFrame" then
                                                        for _, textboxframe in ipairs(boxframe:GetChildren()) do
                                                            if textboxframe:IsA("Frame") and textboxframe.Name == "TextBoxFrame" then
                                                                local EonTweenTBFT = TweenService:Create(
                                                                    textboxframe, 
                                                                    TweenInfo.new(0.2),
                                                                    {Position = UDim2.new(0.85, 0,0.167, 0)}
                                                                )
                                                                EonTweenTBFT:Play()
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            if elementsFrame then
                                for _, element in ipairs(elementsFrame:GetChildren()) do
                                    if element:IsA("ScrollingFrame") and element.Name == "Elements" then
                                        for _, item in ipairs(element:GetChildren()) do
                                            if item:IsA("Frame") and item.Name == "Items" then
                                                for _, sliderframe in ipairs(item:GetChildren()) do
                                                    if sliderframe:IsA("Frame") and sliderframe.Name == "SliderFrame" then
                                                        for _, sliderholder in ipairs(sliderframe:GetChildren()) do
                                                            if sliderholder:IsA("Frame") and sliderholder.Name == "SliderHolder" then
                                                                local EonTweenSHFT = TweenService:Create(
                                                                    sliderholder, 
                                                                    TweenInfo.new(0.2),
                                                                    {Size = UDim2.new(0, 400,0, 4)}
                                                                )
                                                                EonTweenSHFT:Play()
                                                                for _, sliderbutton in ipairs(sliderholder:GetChildren()) do
                                                                    if sliderbutton:IsA("TextButton") and sliderbutton.Name == "SliderButton" then
                                                                        for _, sliderinner in ipairs(sliderbutton:GetChildren()) do
                                                                            if sliderinner:IsA("Frame") and sliderinner.Name == "SliderInner" then               
                                                                                local EonTweenSIFT = TweenService:Create(
                                                                                    sliderinner, 
                                                                                    TweenInfo.new(0.2),
                                                                                    {Size = UDim2.new(0, 0,0, 5)}
                                                                                )
                                                                                EonTweenSIFT:Play()
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            lonTween:Play()
                            lonTween3:Play()
                            lonTween4:Play()
                            lonTween5:Play()
                            lonTween6:Play()
                            lonTween7:Play()
                            lonTween8:Play()
                        

                        elseif resizetoggled == true then
                            resizedebounce = true
                            local offTween = TweenService:Create(
                                ResizeTogglerIndicator_1, 
                                TweenInfo.new(0.2),
                                {Position = UDim2.new(0, 1,0.5, 0)}
                            )
                            local offTween2 = TweenService:Create(
                                ResizeTogglerFrame_1, 
                                TweenInfo.new(0.2),
                                {BackgroundColor3 = Color3.fromRGB(15,15,15)}
                            )
                            local offTween3 = TweenService:Create(
                                ResizeToggleText_1, 
                                TweenInfo.new(0.2),
                                {TextColor3 = Color3.fromRGB(90,90,90)}
                            )
                            local offTween4 = TweenService:Create(
                                ResizeTogglerIndicator_1, 
                                TweenInfo.new(0.2),
                                {BackgroundColor3 = Color3.fromRGB(67,67,67)}
                            )
                            offTween:Play()
                            offTween2:Play()
                            offTween3:Play()
                            offTween4:Play()
                            resizedebounce = false
                            resizetoggled = false
                            
                            -- NORMALL RESIZED ELEMENTS
                            local loffTween = TweenService:Create(
                                Main_1, 
                                TweenInfo.new(0.2),
                                {Size = UDim2.new(0, 366,0, 436)}
                            )
                            local loffTween3 = TweenService:Create(
                                TopBar_1, 
                                TweenInfo.new(0.2),
                                {Size = UDim2.new(1, 0,0, 25)}
                            )
                            local loffTween4 = TweenService:Create(
                                Minimize_1, 
                                TweenInfo.new(0.2),
                                {Position = UDim2.new(0, 320,0, 7)}
                            )
                            local loffTween5 = TweenService:Create(
                                Close_1, 
                                TweenInfo.new(0.2),
                                {Position = UDim2.new(0, 342,0, 7)}
                            )
                            local loffTween6 = TweenService:Create(
                                TabsHolder_1, 
                                TweenInfo.new(0.2),
                                {Size = UDim2.new(0, 346,0, 28)}
                            )
                            local loffTween7 = TweenService:Create(
                                ElementsFrame_1, 
                                TweenInfo.new(0.2),
                                {Size = UDim2.new(0, 348,0, 355)}
                            )
                            local loffTween8 = TweenService:Create(
                                Elements_1, 
                                TweenInfo.new(0.2),
                                {Size = UDim2.new(1, 0,1, 0)}
                            )

                            local elementsFrame = game.CoreGui:FindFirstChild("EchoUILibrary"):FindFirstChild("Main"):FindFirstChild("ElementsFrame")

                            if elementsFrame then
                                for _, element in ipairs(elementsFrame:GetChildren()) do
                                    if element:IsA("ScrollingFrame") and element.Name == "Elements" then
                                        for _, item in ipairs(element:GetChildren()) do
                                            if item:IsA("Frame") and item.Name == "Items" then
                                                local loffTween9 = TweenService:Create(
                                                    item, 
                                                    TweenInfo.new(0.2),
                                                    {Size = UDim2.new(0.995, 0, 0, 16)}
                                                )
                                                loffTween9:Play()
                                            end
                                        end
                                    end
                                end
                            end

                            if elementsFrame then
                                for _, element in ipairs(elementsFrame:GetChildren()) do
                                    if element:IsA("ScrollingFrame") and element.Name == "Elements" then
                                        for _, item in ipairs(element:GetChildren()) do
                                            if item:IsA("Frame") and item.Name == "Items" then
                                                for _, toggleframe in ipairs(item:GetChildren()) do
                                                    if toggleframe:IsA("Frame") and toggleframe.Name == "ToggleFrame" then
                                                        for _, toggler in ipairs(toggleframe:GetChildren()) do
                                                            if toggler:IsA("Frame") and toggler.Name == "TogglerFrame" then
                                                                local EoffTweenT = TweenService:Create(
                                                                    toggler, 
                                                                    TweenInfo.new(0.2),
                                                                    {Position = UDim2.new(0.88, 0,0.166999996, 0)}
                                                                )
                                                                EoffTweenT:Play()
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            if elementsFrame then
                                for _, element in ipairs(elementsFrame:GetChildren()) do
                                    if element:IsA("ScrollingFrame") and element.Name == "Elements" then
                                        for _, item in ipairs(element:GetChildren()) do
                                            if item:IsA("Frame") and item.Name == "Items" then
                                                for _, resizetoggleframe in ipairs(item:GetChildren()) do
                                                    if resizetoggleframe:IsA("Frame") and resizetoggleframe.Name == "ResizeToggleFrame" then
                                                        for _, resizetoggler in ipairs(resizetoggleframe:GetChildren()) do
                                                            if resizetoggler:IsA("Frame") and resizetoggler.Name == "ResizeTogglerFrame" then
                                                                local EoffTweenRT = TweenService:Create(
                                                                    resizetoggler, 
                                                                    TweenInfo.new(0.2),
                                                                    {Position = UDim2.new(0.88, 0,0.167, 0)}
                                                                )
                                                                EoffTweenRT:Play()
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            if elementsFrame then
                                for _, element in ipairs(elementsFrame:GetChildren()) do
                                    if element:IsA("ScrollingFrame") and element.Name == "Elements" then
                                        for _, item in ipairs(element:GetChildren()) do
                                            if item:IsA("Frame") and item.Name == "Items" then
                                                for _, dropdownframe in ipairs(item:GetChildren()) do
                                                    if dropdownframe:IsA("Frame") and dropdownframe.Name == "DropdownFrame" then
                                                        for _, optionframe in ipairs(dropdownframe:GetChildren()) do
                                                            if optionframe:IsA("Frame") and optionframe.Name == "OptionsFrame" then
                                                                local EoffTweenOFT = TweenService:Create(
                                                                    optionframe, 
                                                                    TweenInfo.new(0.2),
                                                                    {Position = UDim2.new(0.765, 0,1.2, 0)}
                                                                )
                                                                EoffTweenOFT:Play()
                                                            end
                                                        end
                                                        for _, selectedframe in ipairs(dropdownframe:GetChildren()) do
                                                            if selectedframe:IsA("Frame") and selectedframe.Name == "SelectedFrame" then
                                                                local EoffTweenSFT = TweenService:Create(
                                                                    selectedframe, 
                                                                    TweenInfo.new(0.2),
                                                                    {Position = UDim2.new(0.765, 0,0.16, 0)}
                                                                )
                                                                EoffTweenSFT:Play()
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            if elementsFrame then
                                for _, element in ipairs(elementsFrame:GetChildren()) do
                                    if element:IsA("ScrollingFrame") and element.Name == "Elements" then
                                        for _, item in ipairs(element:GetChildren()) do
                                            if item:IsA("Frame") and item.Name == "Items" then
                                                for _, boxframe in ipairs(item:GetChildren()) do
                                                    if boxframe:IsA("Frame") and boxframe.Name == "BoxFrame" then
                                                        for _, textboxframe in ipairs(boxframe:GetChildren()) do
                                                            if textboxframe:IsA("Frame") and textboxframe.Name == "TextBoxFrame" then
                                                                local EoffTweenTBFT = TweenService:Create(
                                                                    textboxframe, 
                                                                    TweenInfo.new(0.2),
                                                                    {Position = UDim2.new(0.81, 0,0.167, 0)}
                                                                )
                                                                EoffTweenTBFT:Play()
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            if elementsFrame then
                                for _, element in ipairs(elementsFrame:GetChildren()) do
                                    if element:IsA("ScrollingFrame") and element.Name == "Elements" then
                                        for _, item in ipairs(element:GetChildren()) do
                                            if item:IsA("Frame") and item.Name == "Items" then
                                                for _, sliderframe in ipairs(item:GetChildren()) do
                                                    if sliderframe:IsA("Frame") and sliderframe.Name == "SliderFrame" then
                                                        for _, sliderholder in ipairs(sliderframe:GetChildren()) do
                                                            if sliderholder:IsA("Frame") and sliderholder.Name == "SliderHolder" then
                                                                local EoffTweenSHFT = TweenService:Create(
                                                                    sliderholder, 
                                                                    TweenInfo.new(0.2),
                                                                    {Size = UDim2.new(0, 314,0, 5)}
                                                                )
                                                                EoffTweenSHFT:Play()
                                                                for _, sliderbutton in ipairs(sliderholder:GetChildren()) do
                                                                    if sliderbutton:IsA("TextButton") and sliderbutton.Name == "SliderButton" then
                                                                        for _, sliderinner in ipairs(sliderbutton:GetChildren()) do
                                                                            if sliderinner:IsA("Frame") and sliderinner.Name == "SliderInner" then               
                                                                                local EoffTweenSIFT = TweenService:Create(
                                                                                    sliderinner, 
                                                                                    TweenInfo.new(0.2),
                                                                                    {Size = UDim2.new(0, 0,0, 5)}
                                                                                )
                                                                                EoffTweenSIFT:Play()
                                                                            end
                                                                        end
                                                                    end
                                                                end
                                                            end
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end

                            loffTween:Play()
                            loffTween3:Play()
                            loffTween4:Play()
                            loffTween5:Play()
                            loffTween6:Play()
                            loffTween7:Play()
                            loffTween8:Play()
                        end
                    end
                end)
            end
            return Elements
        end
        return Sections
    end
    return Tabs
end
return Library
