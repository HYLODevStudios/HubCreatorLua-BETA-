--// Settings

local UI_Name = "UI"..math.random(000000000, 999999999) --// Example Name: UI123456789
local Hub_Name = "CrystalHub"
local Hub_Creator = "@Roblox1sjG"
local UI_Version = "1.0.0"
local Specific_Game = "0" --// [UNIVERSAL / PlaceID] Put A PlaceId if you want a specific game else put 0 if you want to allow all games to use the UI.

--// Services

local Player = game:GetService("Players").LocalPlayer
local UI = Instance.new("ScreenGui", Player.PlayerGui) ; UI.Name = tostring(UI_Name)

local MainFrame = Instance.new("Frame", UI) ; MainFrame.Name = "MainFrame" ; MainFrame.Size = UDim2.new(0, 580, 0, 430) ; MainFrame.Position = UDim2.new(0.231, 0, 0.182, 0) ; MainFrame.BackgroundColor3 = Color3.fromRGB(100, 100, 100)

--// Functions

local function CheckGame(placeid) --// Don't change this unless you know what you're doing.
	if placeid == "0" then
		return
	elseif placeid ~= "0" or game.PlaceId ~= placeid then
		return UI:Destroy()
	end
end

local function UICorner(parent, scale, offset)
	local UICorner_ = Instance.new("UICorner", parent) ; UICorner_.CornerRadius = UDim.new(tonumber(scale), tonumber(offset))
	return UICorner_
end

local function Button(parent, size_x, size_y, x, y, bg_color, text, text_color, text_size, text_scaled, text_font)
	local Button_ = Instance.new("TextButton", parent) ; Button_.Size = UDim2.new(0, size_x, 0, size_y) ; Button_.Position = UDim2.new(0, x, 0, y) ; Button_.BackgroundColor3 = bg_color ; Button_.Text = tostring(text) ; Button_.TextColor3 = text_color ; Button_.TextSize = text_size ; if text_scaled then Button_.TextScaled = true end ; Button_.Font = Enum.Font[text_font]
	return Button_
end

--// CustomScripts

local script1 = {
	scfn = function(button)
		button.MouseButton1Down:Connect(function()
			Player.Character:FindFirstChild("Humanoid").WalkSpeed = 32
		end)
	end
}

--// UI

UICorner(MainFrame, 0, 8) --// Don't change this unless you know what you're doing.

local btn1 = Button(MainFrame, 100, 100, 0, 0, Color3.new(0, 0.392157, 1), "WalkSpeed: 32", Color3.new(0, 0.196078, 1), 32, true, "FredokaOne")
UICorner(btn1, 0, 8) ; script1.scfn(btn1)

CheckGame(Specific_Game) --// Don't change this unless you know what you're doing.p
