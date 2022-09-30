-- Gui to Lua
-- Version: 3.2

-- Instances:
if game.PlaceId == 9848789324 then
    
if game:GetService("CoreGui"):FindFirstChild("TrookScriptss") then
	game:GetService("CoreGui"):FindFirstChild("TrookScriptss"):Destroy()

end
local TrookScriptss = Instance.new("ScreenGui")
local TrookScripts = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local Kill = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local LoopKill = Instance.new("TextButton")
local UICorner_4 = Instance.new("UICorner")
local ImageLabel_2 = Instance.new("ImageLabel")
local UICorner_5 = Instance.new("UICorner")
local Tp = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local Target = Instance.new("TextBox")
local UICorner_7 = Instance.new("UICorner")
local DestroyGui = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local UnLoop = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local ImageButton = Instance.new("ImageButton")
local UICorner_10 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_11 = Instance.new("UICorner")
local Fling = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local Scripting = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_14 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local UICorner_15 = Instance.new("UICorner")

--Properties:

TrookScriptss.Name = "TrookScriptss"
TrookScriptss.Parent = game.CoreGui
TrookScriptss.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TrookScripts.Name = "TrookScripts"
TrookScripts.Parent = TrookScriptss
TrookScripts.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TrookScripts.Position = UDim2.new(0.251824826, 0, 0.193316787, 0)
TrookScripts.Size = UDim2.new(0, 559, 0, 395)
TrookScripts.Active = true
TrookScripts.Draggable = true

UICorner.Parent = TrookScripts

ImageLabel.Parent = TrookScripts
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Position = UDim2.new(-0.000346019864, 0, -0.00250658393, 0)
ImageLabel.Size = UDim2.new(0, 559, 0, 395)
ImageLabel.Image = "rbxassetid://10904122868"


local Player = function(Ev)
	if Ev == "" then
		return nil
	elseif Ev == "random" then
		return game:GetService("Players"):GetPlayers()[math.random(1, #game:GetService("Players"):GetPlayers())]
	else
		for _, v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name:lower():sub(1, #Ev) == Ev:lower() or v.DisplayName:lower():sub(1, #Ev) == Ev then
				return v
			end
		end
	end
end

Target.Focused:Connect(function()
	while Target:IsFocused() and wait() do
		local User = Player(Target.Text)
		if User ~= nil then
			ImageLabel_2.Image = game:GetService("Players"):GetUserThumbnailAsync(User.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
		end
	end
end)

Target.FocusLost:Connect(function()
	while wait() do
		if Target:IsFocused() then break end
		if Target.Text ~= "random" then break end
		ImageLabel_2.Image = game:GetService("Players"):GetUserThumbnailAsync(Player(Target.Text).UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
	end
end)

UICorner_2.Parent = ImageLabel

Kill.Name = "Kill"
Kill.Parent = ImageLabel
Kill.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
Kill.Position = UDim2.new(0.633273721, 0, 0.721518993, 0)
Kill.Size = UDim2.new(0, 182, 0, 30)
Kill.Font = Enum.Font.SourceSansBold
Kill.Text = "Kill"
Kill.TextColor3 = Color3.fromRGB(0, 0, 0)
Kill.TextScaled = true
Kill.TextSize = 14.000
Kill.TextWrapped = true
Kill.MouseButton1Down:Connect(function()

	

	game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
	local Humanoid = game.Players.LocalPlayer.Character.Humanoid:Clone()
	local Target = Player(Target.Text)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame

	local Tool = game.Players.LocalPlayer.Backpack:FindFirstChild("potion")
	game.Players.LocalPlayer.Character.Animate.Disabled = true
	game.Players.LocalPlayer.Character.Humanoid:Destroy()
	Humanoid.Parent = game.Players.LocalPlayer.Character
	Tool.Parent = game.Players.LocalPlayer.Character
	game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
	firetouchinterest(Target.Character.HumanoidRootPart, Tool.Handle, 0);




end)
UICorner_3.Parent = Kill

LoopKill.Name = "LoopKill"
LoopKill.Parent = ImageLabel
LoopKill.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
LoopKill.Position = UDim2.new(0.633273661, 0, 0.827848077, 0)
LoopKill.Size = UDim2.new(0, 182, 0, 29)
LoopKill.Font = Enum.Font.SourceSansBold
LoopKill.Text = "Loop Kill"
LoopKill.TextColor3 = Color3.fromRGB(0, 0, 0)
LoopKill.TextScaled = true
LoopKill.TextSize = 14.000
LoopKill.TextWrapped = true
LoopKill.MouseButton1Down:Connect(function()
	_G.LoopKill = true;


	while _G.LoopKill == true do

		

		game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
		local Humanoid = game.Players.LocalPlayer.Character.Humanoid:Clone()
		local Target = Player(Target.Text)
		local Tool = game.Players.LocalPlayer.Backpack:FindFirstChild("potion")
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame

		game.Players.LocalPlayer.Character.Animate.Disabled = true
		game.Players.LocalPlayer.Character.Humanoid:Destroy()
		Humanoid.Parent = game.Players.LocalPlayer.Character
		Tool.Parent = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
		firetouchinterest(Target.Character.HumanoidRootPart, Tool.Handle, 0);






		wait()
	end

end)
UICorner_4.Parent = LoopKill

ImageLabel_2.Parent = ImageLabel
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.Position = UDim2.new(0.63685149, 0, 0.293670893, 0)
ImageLabel_2.Size = UDim2.new(0, 200, 0, 162)
ImageLabel_2.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_5.Parent = ImageLabel_2

Tp.Name = "Tp"
Tp.Parent = ImageLabel
Tp.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
Tp.Position = UDim2.new(0.0876565278, 0, 0.721518993, 0)
Tp.Size = UDim2.new(0, 182, 0, 30)
Tp.Font = Enum.Font.SourceSansBold
Tp.Text = "Tp"
Tp.TextColor3 = Color3.fromRGB(0, 0, 0)
Tp.TextScaled = true
Tp.TextSize = 14.000
Tp.TextWrapped = true
Tp.MouseButton1Down:Connect(function()
local Target = Player(Target.Text)

	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame    
    
end)
UICorner_6.Parent = Tp

Target.Name = "Target"
Target.Parent = ImageLabel
Target.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
Target.Position = UDim2.new(0.237924859, 0, 0.541772187, 0)
Target.Size = UDim2.new(0, 200, 0, 59)
Target.Font = Enum.Font.SourceSansBold
Target.PlaceholderColor3 = Color3.fromRGB(0, 0, 0)
Target.PlaceholderText = "Enter The Target Username There"
Target.Text = ""
Target.TextColor3 = Color3.fromRGB(0, 0, 0)
Target.TextScaled = true
Target.TextSize = 19.000
Target.TextWrapped = true

UICorner_7.Parent = Target

DestroyGui.Name = "DestroyGui"
DestroyGui.Parent = ImageLabel
DestroyGui.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
DestroyGui.Position = UDim2.new(0.745974958, 0, 0.0151898731, 0)
DestroyGui.Size = UDim2.new(0, 131, 0, 28)
DestroyGui.Font = Enum.Font.SourceSansBold
DestroyGui.Text = "Destroy Gui"
DestroyGui.TextColor3 = Color3.fromRGB(0, 0, 0)
DestroyGui.TextScaled = true
DestroyGui.TextSize = 14.000
DestroyGui.TextWrapped = true
DestroyGui.MouseButton1Down:Connect(function()
    if game:GetService("CoreGui"):FindFirstChild("TrookScriptss") then
	game:GetService("CoreGui"):FindFirstChild("TrookScriptss"):Destroy()

end
    end)
UICorner_8.Parent = DestroyGui

UnLoop.Name = "UnLoop"
UnLoop.Parent = ImageLabel
UnLoop.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
UnLoop.Position = UDim2.new(0.0876565278, 0, 0.827848077, 0)
UnLoop.Size = UDim2.new(0, 182, 0, 29)
UnLoop.Font = Enum.Font.SourceSansBold
UnLoop.Text = "UnLoop Kill"
UnLoop.TextColor3 = Color3.fromRGB(0, 0, 0)
UnLoop.TextScaled = true
UnLoop.TextSize = 14.000
UnLoop.TextWrapped = true
UnLoop.MouseButton1Down:Connect(function()
    	_G.LoopKill = false;


	while _G.LoopKill == true do


		game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
		local Humanoid = game.Players.LocalPlayer.Character.Humanoid:Clone()
		local Target = Player(Target.Text)
		local Tool = game.Players.LocalPlayer.Backpack:FindFirstChild("potion")
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Target.Character.HumanoidRootPart.CFrame

		game.Players.LocalPlayer.Character.Animate.Disabled = true
		game.Players.LocalPlayer.Character.Humanoid:Destroy()
		Humanoid.Parent = game.Players.LocalPlayer.Character
		Tool.Parent = game.Players.LocalPlayer.Character
		game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
		firetouchinterest(Target.Character.HumanoidRootPart, Tool.Handle, 0);






		wait()
	end
end)
UICorner_9.Parent = UnLoop

ImageButton.Parent = ImageLabel
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.Position = UDim2.new(0.864042938, 0, 0.111392409, 0)
ImageButton.Size = UDim2.new(0, 65, 0, 63)
ImageButton.Image = "rbxassetid://11104778658"

UICorner_10.Parent = ImageButton

TextLabel.Parent = ImageLabel
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.Position = UDim2.new(0.0128683746, 0, 0.156962037, 0)
TextLabel.Size = UDim2.new(0, 332, 0, 26)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "Script Support Game : Ragdoll Engine, La Katana Live"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UICorner_11.Parent = TextLabel

Fling.Name = "Fling"
Fling.Parent = ImageLabel
Fling.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
Fling.Position = UDim2.new(0.631484747, 0, 0.921518981, 0)
Fling.Size = UDim2.new(0, 182, 0, 29)
Fling.Font = Enum.Font.SourceSansBold
Fling.Text = "Nothing yet"
Fling.TextColor3 = Color3.fromRGB(0, 0, 0)
Fling.TextScaled = true
Fling.TextSize = 14.000
Fling.TextWrapped = true

UICorner_12.Parent = Fling

Scripting.Name = "Scripting"
Scripting.Parent = ImageLabel
Scripting.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
Scripting.Position = UDim2.new(0.0876565278, 0, 0.921518981, 0)
Scripting.Size = UDim2.new(0, 182, 0, 29)
Scripting.Font = Enum.Font.SourceSansBold
Scripting.Text = "Nothing yet"
Scripting.TextColor3 = Color3.fromRGB(0, 0, 0)
Scripting.TextScaled = true
Scripting.TextSize = 14.000
Scripting.TextWrapped = true

UICorner_13.Parent = Scripting

TextLabel_2.Parent = ImageLabel
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.Position = UDim2.new(0.118413992, 0, 0.0151898731, 0)
TextLabel_2.Size = UDim2.new(0, 332, 0, 44)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Trook Scripts"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

UICorner_14.Parent = TextLabel_2

TextLabel_3.Parent = ImageLabel
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.Position = UDim2.new(0.0143112699, 0, 0.270886064, 0)
TextLabel_3.Size = UDim2.new(0, 310, 0, 25)
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "Rank : None"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextWrapped = true




local friend = game.Players.LocalPlayer


if friend:IsFriendsWith(738158730) then
    wait(2)
    TextLabel_3.Text = "Rank : Friend"
    
elseif game.Players.LocalPlayer.UserId == 738158730 then
    TextLabel_3.Text = "Rank : Owner"
    else
        TextLabel_3.Text = "Rank : None"
end



UICorner_15.Parent = TextLabel_3






	
	local UserInputService = game:GetService("UserInputService")





function onKeyPress(inputObject, gameProcessedEvent)


	if not gameProcessedEvent then


		if inputObject.KeyCode == Enum.KeyCode.X then 


			if TrookScripts.Visible == false then


				TrookScripts.Visible = true


			else


				TrookScripts.Visible = false


			end


		end


	end


end
UserInputService.InputBegan:connect(onKeyPress)
end
