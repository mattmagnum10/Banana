vis = false
sets = {}
muted = {}
function gyro()
    	for t,b in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
	        for r,n in pairs(b:GetChildren()) do
	            for u,m in pairs(b.Handle:GetChildren()) do
	                if m.Name == "BodyPosition" then
	                    m:Destroy()
	                end
                    if m.Name == "BodyGyro" then
                 local displayName = game.Players.LocalPlayer.DisplayName       m:Destroy()
                    end
	            end
	        end
    	end
    end
function getSelection()
    local toolsl = {}
    for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
lowername = string.lower(v.Name)
        if v:IsA'Tool' and v.Name == "BoomBox" then
            table.insert(toolsl,v)
        end
    end
    for i,v in next, game.Players.LocalPlayer.Character:GetChildren() do
lowername = string.lower(v.Name)
        if v:IsA'Tool' and v.Name == "BoomBox" then
            table.insert(toolsl,v)
        end
    end
    return toolsl
end
wait(1)
    Index = 0
    Devide = 0
    x = 360
    switch = false
    pbl = Instance.new("NumberValue", game.ReplicatedStorage)
    off = Instance.new("NumberValue", game.ReplicatedStorage)
    d = 500
    prefix = "-"
    sin = Instance.new("NumberValue")
    sin.Value = 3.14
    ym = Instance.new("NumberValue")
    ym.Value = -4
    rx = Instance.new("NumberValue")
    ry = Instance.new("NumberValue")
    rz = Instance.new("NumberValue")
    tx = Instance.new("NumberValue")
    ty = Instance.new("NumberValue")
    tz = Instance.new("NumberValue")
    pbl.Value = 1
    off.Value = 1
    local ts = game:GetService("TweenService")
    function prop1(i, v)
        local ti = TweenInfo.new(0.5, Enum.EasingStyle.Back, Enum.EasingDirection.InOut, 0, false, 0)
        local prop = {
            Value = v
        }
        local aaa = ts:Create(i, ti, prop)
        aaa:Play()
    end
    mode1, mode2, mode3, mode4 = true, false, false, false
    local player = game.Players.LocalPlayer.Name
    game.Players.LocalPlayer.Chatted:Connect(function(msg)
        local msg = msg:lower()
        if msg:sub(1, 7) == "prefix " then
            prefix = msg:sub(8)
        end
        if msg:sub(1, 6) == prefix .. "mode " then
            if msg:sub(7, 7) == "1" then
                mode1 = true
                mode2 = false
                mode3 = false
                mode4 = false
            elseif msg:sub(7, 7) == "2" then
                mode1 = false
                mode2 = true
                mode3 = false
                mode4 = false
            elseif msg:sub(7, 7) == "3" then
                mode1 = false
                mode2 = false
                mode3 = true
                mode4 = false
            elseif msg:sub(7, 7) == "4" then
                mode1 = false
                mode2 = false
                mode3 = false
                mode4 = true
            end
        end
        if msg:sub(1, 6) == prefix .. "play " then
            for i, v in pairs(sets) do
                v.Remote:FireServer("PlaySong", msg:sub(7))
            end
        end
        if msg:sub(1, 3) == prefix .. "p " then
            player = gotya(msg:sub(4))
            print(player)
            if player == nil then
                FoundPlr = false
            else
                FoundPlr = true
            end
        end
        if msg:sub(1, 5) == prefix .. "pbl " then
            prop1(pbl, tonumber(msg:sub(6)))
        end
        if msg:sub(1, 4) == prefix .. "os " then
            prop1(off, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 3) == prefix .. "d " then
            d = tonumber(msg:sub(4))
        end
        if msg:sub(1, 3) == prefix .. "y " then
            prop1(ym, tonumber(msg:sub(4)))
        end
        if msg:sub(1, 3) == prefix .. "k " then
            k = tonumber(msg:sub(4))
        end
        if msg:sub(1, 4) == prefix .. "rx " then
            prop1(rx, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "ry " then
            prop1(ry, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "rz " then
            prop1(rz, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "tx " then
            prop1(tx, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "ty " then
            prop1(ty, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 4) == prefix .. "tz " then
            prop1(tz, tonumber(msg:sub(5)))
        end
        if msg:sub(1, 5) == prefix .. "sin " then
            prop1(sin, tonumber(msg:sub(6)))
        end
    end)
    k = 1.1
function anchor()
    game.Players.LocalPlayer.Character.Torso.Anchored = true
    wait(0.2)
    for i,a in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
        if a.Name == "Right Arm" then
            for i,z in pairs(a:GetChildren()) do
                if z.Name == "RightGrip" then
                    z:Destroy()
                end
            end
            wait(0.2)
            game.Players.LocalPlayer.Character.Torso.Anchored = false
        end
    end
end
wait(1)
local Player = game.Players.LocalPlayer
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "PistolaBollaHUB Key System", HidePremium = false, SaveConfig = true, IntroEnabled = false})
OrionLib:MakeNotification({
	Name = "Loggato!",
	Content = "Sei loggato come "..Player.Name.."",
	Image = "rbxassetid://4483345998",
	Time = 5
})
local Key = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://12268906704",
	PremiumOnly = false
})

_G.Key = "KeYBellA"
_G.KeyInput = "string"

function KeyCorretta()
OrionLib:MakeNotification({
	Name = "Key Corretta!",
	Content = "Hai messo la Key corretta",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end

function LinkKey()
OrionLib:MakeNotification({
 Name = "Link Copiato!",
 Content = "Il link e' stato copiato",
 Image = "rbxassetid://4483345998",
 Time = 5
})
end

function PizdaMata()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "PistolaBollaHUB -TEST-", HidePremium = false, SaveConfig = true, IntroEnabled = true, IntroText = "PistolaBollaHUB"})

function ScriptEseguito()
OrionLib:MakeNotification({
	Name = "Script Eseguito!",
	Content = "Script Eseguito correttamente!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end

function GiocatoreNonTrovato()
OrionLib:MakeNotification({
 Name = "Errore",
 Content = "Giocatore non trovato",
 Image = "rbxassetid://dopo",
 Time = 5
})
end

function LinkCopiato()
OrionLib:MakeNotification({
 Name = "Link Copiato!",
 Content = "Il Link e' stato copiato.",
 Image = "rbxassetid://4483345998",
 Time = 5
})
end

function PistolaEseguito()
OrionLib:MakeNotification({
	Name = "PistolaBollaHUB Eseguito!",
	Content = "PistolaBollaHUB Eseguito Correttamente!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end

function IdCopiato()
OrionLib:MakeNotification({
	Name = "ID copiato!",
	Content = "L'ID è stato copiato",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end

function PistolaBollaBrook()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "PistolaBollaHUB (Brookhaven)", HidePremium = false, SaveConfig = false, IntroEnabled = false})
local ColorePelle = Window:MakeTab({
 Name = "Colore Skin",
 Icon = "rbxassetid://12392896519",
 PremiumOnly = false
})

_G.ArcobalenoBelo = true
_G.MacchinaLGBT = true

function ArcobalenoBelo()
while _G.ArcobalenoBelo == true do
local args = {
    [1] = "skintone",
    [2] = "Really red"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
wait(2.75)
local args = {
    [1] = "skintone",
    [2] = "Deep orange"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
wait(2.75)
local args = {
    [1] = "skintone",
    [2] = "New Yeller"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
wait(2.75)
local args = {
    [1] = "skintone",
    [2] = "Forest green"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
wait(2.75)
local args = {
    [1] = "skintone",
    [2] = "Cyan"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
wait(2.75)
local args = {
    [1] = "skintone",
    [2] = "Really blue"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
wait(2.75)
local args = {
    [1] = "skintone",
    [2] = "Magenta"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
end
end

function MacchinaLGBT()
while _G.MacchinaLGBT == true do
local args = {
    [1] = "PickingCarColor",
    [2] = Color3.fromRGB(255, 0, 0)
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Player2NN2sCa2NN2r"):FireServer(unpack(args))
wait(0.75)
local args = {
    [1] = "PickingCarColor",
    [2] = Color3.fromRGB(255, 110, 0)
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Player2NN2sCa2NN2r"):FireServer(unpack(args))
wait(0.75)
local args = {
    [1] = "PickingCarColor",
    [2] = Color3.fromRGB(255, 242, 11)
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Player2NN2sCa2NN2r"):FireServer(unpack(args))
wait(0.75)
local args = {
    [1] = "PickingCarColor",
    [2] = Color3.fromRGB(0, 168, 255)
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Player2NN2sCa2NN2r"):FireServer(unpack(args))
wait(0.75)
local args = {
    [1] = "PickingCarColor",
    [2] = Color3.fromRGB(0, 0, 255)
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Player2NN2sCa2NN2r"):FireServer(unpack(args))
wait(2)
local args = {
    [1] = "PickingCarColor",
    [2] = Color3.fromRGB(196, 0, 255)
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Player2NN2sCa2NN2r"):FireServer(unpack(args))
end
end

ColorePelle:AddButton({
 Name = "Rosso",
 Callback = function()
    local args = {
    [1] = "skintone",
    [2] = "Really red"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
end
})
ColorePelle:AddButton({
 Name = "Arancione",
 Callback = function()
    local args = {
    [1] = "skintone",
    [2] = "Deep orange"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
end
})
ColorePelle:AddButton({
 Name = "Giallo",
 Callback = function()
    local args = {
    [1] = "skintone",
    [2] = "New Yeller"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
end
})
ColorePelle:AddButton({
 Name = "Verde",
 Callback = function()
    local args = {
    [1] = "skintone",
    [2] = "Forest green"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
end
})
ColorePelle:AddButton({
 Name = "Azzurro",
 Callback = function()
    local args = {
    [1] = "skintone",
    [2] = "Cyan"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
end
})
ColorePelle:AddButton({
 Name = "Blu",
 Callback = function()
    local args = {
    [1] = "skintone",
    [2] = "Really blue"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
end
})
ColorePelle:AddButton({
 Name = "Fucsia",
 Callback = function()
    local args = {
    [1] = "skintone",
    [2] = "Magenta"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Updat2NN2eAvata2NN2r"):FireServer(unpack(args))
end
})
ColorePelle:AddToggle({
	Name = "Arcobaleno (Rischio kick)",
	Default = false,
	Callback = function(Value)
	_G.ArcobalenoBelo = Value
	ArcobalenoBelo()
end  
})
local GiocatoreB = Window:MakeTab({
 Name = "Avatar",
 Icon = "rbxassetid://dopo",
 PremiumOnly = false
})
GiocatoreB:AddButton({
 Name = "Rimetti il tuo avatar",
 Callback = function()
    local args = {
    [1] = "OCA"
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Avata2NN2rOrigina2NN2l"):FireServer(unpack(args))
end
})
local Macchina = Window:MakeTab({
 Name = "Macchina",
 Icon = "rbxassetid://dopo",
 PremiumOnly = false
})
Macchina:AddButton({
 Name = "Macchina Rossa",
 Callback = function()
    local args = {
    [1] = "PickingCarColor",
    [2] = Color3.fromRGB(255, 0, 0)
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Player2NN2sCa2NN2r"):FireServer(unpack(args))
end
})
Macchina:AddButton({
 Name = "Macchina Arancione",
 Callback = function()
    local args = {
    [1] = "PickingCarColor",
    [2] = Color3.fromRGB(255, 110, 0)
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Player2NN2sCa2NN2r"):FireServer(unpack(args))
end
})
Macchina:AddButton({
 Name = "Macchina Gialla",
 Callback = function()
    local args = {
    [1] = "PickingCarColor",
    [2] = Color3.fromRGB(255, 242, 11)
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Player2NN2sCa2NN2r"):FireServer(unpack(args))
end
})
Macchina:AddButton({
 Name = "Macchina Verde",
 Callback = function()
    local args = {
    [1] = "PickingCarColor",
    [2] = Color3.fromRGB(0, 255, 0)
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Player2NN2sCa2NN2r"):FireServer(unpack(args))
end
})
Macchina:AddButton({
 Name = "Macchina Azzurra",
 Callback = function()
    local args = {
    [1] = "PickingCarColor",
    [2] = Color3.fromRGB(0, 168, 255)
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Player2NN2sCa2NN2r"):FireServer(unpack(args))
end
})
Macchina:AddButton({
 Name = "Macchina Blu",
 Callback = function()
    local args = {
    [1] = "PickingCarColor",
    [2] = Color3.fromRGB(0, 0, 255)
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Player2NN2sCa2NN2r"):FireServer(unpack(args))
end
})
Macchina:AddButton({
 Name = "Macchina Magenta",
 Callback = function()
    local args = {
    [1] = "PickingCarColor",
    [2] = Color3.fromRGB(196, 0, 255)
}

game:GetService("ReplicatedStorage"):WaitForChild("NN2"):WaitForChild("2NN2Player2NN2sCa2NN2r"):FireServer(unpack(args))
end
})
Macchina:AddToggle({
 Name = "Macchina Arcobaleno(Rischio kick)",
 Default = false,
 Callback = function(Value)
    _G.MacchinaLGBT = Value
    MacchinaLGBT()
end
})
local Ritorna = Window:MakeTab({
 Name = "Torna All'HUB",
 Icon = "rbxassetid://12378312397",
 PremiumOnly = false
})
Ritorna:AddButton({
 Name = "Torna indietro",
 Callback = function()
     PizdaMata()
     end
})
end

function PistolaBollaVisualizer()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "PistolaBollaHUB Visualizer", HidePremium = false, SaveConfig = true, IntroEnabled = false})

_G.id = value

local VisualizerSu = Window:MakeTab({
 Name = "Home",
 Icon = "rbxassetid://12392975271",
 PremiumOnly = false
})
VisualizerSu:AddTextbox({
 Name = "Duplica Radio",
 Default = "Numero",
 TextDisappear = true,
 Callback = function(dupe)
    local amount = dupe
        
    local plr = game:GetService("Players").LocalPlayer
    local character = plr.Character
    
    local ogpos = character.HumanoidRootPart.Position
    
    for i = 1, amount do
       character:WaitForChild("HumanoidRootPart")
       for i,v in pairs(plr.Backpack:GetChildren()) do
           if v:IsA("Tool") then v.Parent = character end
       end
       for i,v in pairs(character:GetChildren()) do
           if v:IsA("Tool") then v.Parent = character end
       end
       character.HumanoidRootPart.CFrame = CFrame.new(0,9999999999,0)
       repeat wait() until not plr.Backpack:FindFirstChildOfClass("Tool")
       wait(0.75)
       for i,v in pairs(character:GetChildren()) do
           if v:IsA("BasePart") then
               v.CanCollide = false
               v.Anchored = true
           end
       end
       for i,v in pairs(character:GetChildren()) do
           if v:IsA("Tool") then v.Parent = workspace end
       end
       character:BreakJoints()
       plr.CharacterAdded:Wait()
       character = plr.Character
    end
    
    character:WaitForChild('HumanoidRootPart')
    wait(0.15)
    character.HumanoidRootPart.CFrame = CFrame.new(ogpos)
    for i,v in pairs(workspace:GetChildren()) do
       if v:IsA("Tool") then
           character.Humanoid:EquipTool(v)    
       end
    end
    end
})
VisualizerSu:AddTextbox({
 Name = "ID",
 Default = "Metti l'id del suono",
 Callback = function(value)
    _G.id = value
    end
})
VisualizerSu:AddButton({
 Name = "Massplay",
 Callback = function()
 for _, tool in ipairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if tool:IsA("Tool") then
         tool.Parent = game:GetService("Players").LocalPlayer.Character
    end
end
    if vis == false then
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v.Name == "BoomBox" then
				coroutine.wrap(function()
					if v.Handle:FindFirstChildOfClass("Sound") then
						v.Handle:FindFirstChildOfClass("Sound"):Destroy()
					end
					idtoplay = _G.id
					v.Parent=game.Players.LocalPlayer.Character
					v:FindFirstChildOfClass("RemoteEvent"):FireServer("PlaySong",(idtoplay:gsub("%D+", "")))
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound")
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound").IsPlaying
					v.Handle:FindFirstChildOfClass("Sound").Playing=false
				end)()
			end
		end
	else
		for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
			if v.Name == "BoomBox" then
				coroutine.wrap(function()
					if v.Handle:FindFirstChildOfClass("Sound") then
						v.Handle:FindFirstChildOfClass("Sound"):Destroy()
					end
					idtoplay = _G.id
					v.Parent=game.Players.LocalPlayer.Character
					v:FindFirstChildOfClass("RemoteEvent"):FireServer("PlaySong",(idtoplay:gsub("%D+", "")))
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound")
					repeat wait() until v.Handle:FindFirstChildOfClass("Sound").IsPlaying
					v.Handle:FindFirstChildOfClass("Sound").Playing=false
				end)()
			end
		end
	end
	wait(1)
	for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
		if v.Name == "BoomBox" then
			coroutine.wrap(function()
				v.Handle:FindFirstChildOfClass("Sound").TimePosition=0
				v.Handle:FindFirstChildOfClass("Sound").Playing=true
			end)()
		end
	end
	end
})
VisualizerSu:AddLabel("Preset belli")
VisualizerSu:AddButton({
 Name = "Orbit bello",
 Callback = function()
    local waitTime = 1/60
	vis = true
	Index = 360 / #game.Players.LocalPlayer.Backpack:GetChildren()
	game.Players.LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "0"
	for i, v in next, getSelection() do
		if v:IsA("Tool") then
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("NumberValue") then
					n:Destroy()
				end
			end
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("BodyGyro") then
					n:Destroy()
				end
			end
			for z, n in pairs(v.Handle:GetChildren()) do
				if n:IsA("BodyPosition") then
					n:Destroy()
				end
			end
			_G.power = 2000
			_G.d = 50
			local bp = Instance.new("BodyPosition", v.Handle)
			bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bp.P = 10
			bp.Position = game.Players.LocalPlayer.Character.Torso.Position
			local bg = Instance.new("BodyGyro", v.Handle)
			bg.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bg.P = 1.0
			local val = Instance.new("NumberValue", v)
			local yv = Instance.new("NumberValue", v)
			local at1, at2 = Instance.new("Attachment", v.Handle), Instance.new("Attachment", v.Handle)
			at1.Name = "at1"
			at2.Name = "at2"
			at1.Position = Vector3.new(-1.4, 0, 0)
			at2.Position = Vector3.new(1.4, 0, 0)
			yv.Value = k
			k = yv.Value + k
			val.Value = x
			x = val.Value - Index
			local primaryPart = v.Handle
			local lookAt = game.Players.LocalPlayer.Character.Torso.Position
			local char = game.Players.LocalPlayer.Character
			curpos = char.HumanoidRootPart.CFrame
			char.HumanoidRootPart.Anchored = true
			char.HumanoidRootPart.CFrame = CFrame.new(0,555,0)
			wait(0.2)
			v.Parent = char
			wait(0.1)
			char.HumanoidRootPart.CFrame = curpos
			wait(0.1)
			char.HumanoidRootPart.Anchored = false
			for i,a in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if a.Name == "Right Arm" then
					for i,z in pairs(a:GetChildren()) do
						if z.Name == "RightGrip" then
							z:Destroy()
						end
					end
				end
			end
			v.Handle.Sound.TimePosition = 0
			rot = 0.1
			randomnumber = math.random(12, 69)
			secrot = 0.1
			visual = 0
			local angle = Vector3.new(0,math.rad(90),0)
			local Connection
			Connection = game:GetService("RunService").Heartbeat:Connect(function()
				bp.D = d
				rot = rot+sin.Value*0.015
				local tools = getSelection()
				v.Handle.Velocity = Vector3.new(2e2,0,0)
				v.Handle.Position = game.Players[player].Character.Torso.Position
			    if v.Handle.Parent == game.Workspace then
		    else
			    v.Handle.CFrame = CFrame.new(v.Handle.Position, Vector3.new(game.Players[player].Character.Head.Position.X, game.Players[player].Character.Head.Position.Y - 2, game.Players[player].Character.Head.Position.Z)) * CFrame.Angles(math.rad((i*(360/#tools))+rot),0,0) * CFrame.new(0,0+ym.Value,0+off.Value+v.Handle.Sound.PlaybackLoudness/150)
				if v.Parent == game.Players.LocalPlayer.Backpack then
				    vis = false
				    Connection:Disconnect()
				end
				if vis == false then
				    v.Handle["BodyGyro"]:Destroy()
				    v.Handle["BodyPosition"]:Destroy()
				    wait(0.1)
					Connection:Disconnect()
					v.Parent = game.Players.LocalPlayer.Backpack
					wait(waitTime)
					end
				end
			end)
		end
	end
	end
})
VisualizerSu:AddButton({
 Name = "Cerchio",
 Callback = function()
    local waitTime = 1/60
	vis = true
	Index = 360 / #game.Players.LocalPlayer.Backpack:GetChildren()
	game.Players.LocalPlayer.Character.Animate.toolnone.ToolNoneAnim.AnimationId = "0"
	for i, v in next, getSelection() do
		if v:IsA("Tool") then
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("NumberValue") then
					n:Destroy()
				end
			end
			for z, n in pairs(v:GetChildren()) do
				if n:IsA("BodyGyro") then
					n:Destroy()
				end
			end
			for z, n in pairs(v.Handle:GetChildren()) do
				if n:IsA("BodyPosition") then
					n:Destroy()
				end
			end
			_G.power = 2000
			_G.d = 50
			local bp = Instance.new("BodyPosition", v.Handle)
			bp.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
			bp.P = 10
			bp.Position = game.Players.LocalPlayer.Character.Torso.Position
			local bg = Instance.new("BodyGyro", v.Handle)
			bg.MaxTorque = Vector3.new(math.huge,math.huge,math.huge)
			bg.P = 1.0
			local val = Instance.new("NumberValue", v)
			local yv = Instance.new("NumberValue", v)
			local at1, at2 = Instance.new("Attachment", v.Handle), Instance.new("Attachment", v.Handle)
			at1.Name = "at1"
			at2.Name = "at2"
			at1.Position = Vector3.new(-1.4, 0, 0)
			at2.Position = Vector3.new(1.4, 0, 0)
			yv.Value = k
			k = yv.Value + k
			val.Value = x
			x = val.Value - Index
			local primaryPart = v.Handle
			local lookAt = game.Players.LocalPlayer.Character.Torso.Position
			local char = game.Players.LocalPlayer.Character
			curpos = char.HumanoidRootPart.CFrame
			char.HumanoidRootPart.Anchored = true
			char.HumanoidRootPart.CFrame = CFrame.new(0,555,0)
			wait(0.2)
			v.Parent = char
			wait(0.1)
			char.HumanoidRootPart.CFrame = curpos
			wait(0.1)
			char.HumanoidRootPart.Anchored = false
			for i,a in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if a.Name == "Right Arm" then
					for i,z in pairs(a:GetChildren()) do
						if z.Name == "RightGrip" then
							z:Destroy()
						end
					end
				end
			end
			v.Handle.Sound.TimePosition = 0
			rot = 0.1
			randomnumber = math.random(12, 69)
			secrot = 0.1
			visual = 0
			local angle = Vector3.new(0,math.rad(90),0)
			local Connection
			Connection = game:GetService("RunService").Heartbeat:Connect(function()
				bp.D = d
				rot = rot+sin.Value*0.015+v.Handle.Sound.PlaybackLoudness/1400
				local tools = getSelection()
				v.Handle.Velocity = Vector3.new(2e2,0,0)
				v.Handle.Rotation = Vector3.new(0+rot,0,0+rot)
				v.Handle.Position = game.Players[player].Character.Head.Position + Vector3.new(math.sin(math.rad(val.Value+v.Handle.Sound.PlaybackLoudness/250) + time() * sin.Value) * off.Value, ym.Value + math.abs(math.sin(yv.Value + time() * math.pi)) * v.Handle.Sound.PlaybackLoudness * 0.005 * pbl.Value, math.cos(math.rad(val.Value+v.Handle.Sound.PlaybackLoudness/250) + time() * sin.Value) * off.Value)
			    if v.Handle.Parent == game.Workspace then
		    else
			    v.Handle.CFrame = CFrame.new(v.Handle.Position, Vector3.new(game.Players[player].Character.Head.Position.X, game.Players[player].Character.Head.Position.Y - 4, game.Players[player].Character.Head.Position.Z)) * CFrame.Angles(0+v.Handle.Sound.PlaybackLoudness/600,0,0) * CFrame.new(0,0,0+v.Handle.Sound.PlaybackLoudness/300)
				if v.Parent == game.Players.LocalPlayer.Backpack then
				    vis = false
				    Connection:Disconnect()
				end
				if vis == false then
				    v.Handle["BodyGyro"]:Destroy()
				    v.Handle["BodyPosition"]:Destroy()
				    wait(0.1)
					Connection:Disconnect()
					v.Parent = game.Players.LocalPlayer.Backpack
					wait(waitTime)
					end
				end
			end)
		end
	end
	end
})
local Ritorna = Window:MakeTab({
 Name = "Torna All'HUB",
 Icon = "rbxassetid://12378312397",
 PremiumOnly = false
})
Ritorna:AddButton({
 Name = "Torna indietro",
 Callback = function()
     PizdaMata()
     end
})
end

function PistolaTap()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "PistolaBollaHUB (Tapping Simulator)", HidePremium = false, SaveConfig = true, IntroEnabled = false})

_G.AutoClickTap = true

function AutoClickTap()
while _G.AutoClickTap == true do
local args = {
    [1] = "Main"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Tap"):FireServer(unpack(args))
wait(.000000000000000000000000001)
end
end

local AutoFarm = Window:MakeTab({
 Name = "Auto Farm",
 Icon = "rbxassetid://dopo",
 PremiumOnly = false
})
AutoFarm:AddToggle({
 Name = "Auto Clicker",
 Default = false,
 Callback = function(Value)
    _G.AutoClickTap = Value
    AutoClickTap()
    end
})
local Rebirth = Window:MakeTab({
 Name = "Rebirth",
 Icon = "rbxassetid://",
 PremiumOnly = false
})
Rebirth:AddButton({
 Name = "1 Rebirth",
 Callback = function()
    local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer(unpack(args))
end
})
Rebirth:AddButton({
 Name = "5 Rebirth",
 Callback = function()
    local args = {
    [1] = 5
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer(unpack(args))
end
})
Rebirth:AddButton({
 Name = "10 Rebirth",
 Callback = function()
    local args = {
    [1] = 10
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer(unpack(args))
end
})
Rebirth:AddButton({
 Name = "20 Rebirth",
 Callback = function()
    local args = {
    [1] = 20
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Rebirth"):FireServer(unpack(args))
end
})
local TornaB = Window:MakeTab({
 Name = "Torna All'HUB",
 Icon = "rbxassetid://12378312397",
 PremiumOnly = false
})
TornaB:AddButton({
 Name = "Torna indietro",
 Callback = function()
    PizdaMata()
    end
})
end

function RainbowFriends()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "PistolaBollaHUB (Rainbow Friends)", HidePremium = false, SaveConfig = true, IntroEnabled = false})

_G.FakeBox = true

function FakeBox()
while _G.FakeBox == true do
game:GetService("ReplicatedStorage").communication.boxes.cl.BoxUpdated:FireServer("Equip")
wait(.01)
end
end

local Plaier = Window:MakeTab({
 Name = "Giocatore",
 Icon = "rbxassetid://dopo",
 PremiumOnly = false
})
Plaier:AddToggle({
 Name = "Scatola Fake (Ti fa nascondere da Blue)",
 Default = false,
 Callback = function(Value)
    _G.FakeBox = Value
    FakeBox()
    end
})
end

local displayName = game.Players.LocalPlayer.DisplayName
local place = game:GetService("MarketplaceService"):GetProductInfo(game.placeId)
local Informazioni = Window:MakeTab({
 Name = "Info",
 Icon = "rbxassetid://12610088891",
 PremiumOnly = false
})
Informazioni:AddParagraph("Nome Visualizzato Giocatore:", Player.DisplayName)
Informazioni:AddParagraph("Nome Giocatore:", Player.Name)
Informazioni:AddParagraph("ID Giocatore:", Player.UserId)
Informazioni:AddParagraph("Nome Gioco:", place.Name)
Informazioni:AddParagraph("ID Gioco:", game.PlaceId)
local Home = Window:MakeTab({
 Name = "Menu",
 Icon = "rbxassetid://12260531445",
 PremiumOnly = false
})
Home:AddLabel("Altri PistolaBollaHUB:")
Home:AddButton({
 Name = "PistolaBollaHUB V3",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BABAJI69BRUH/grippos/main/PistolaBollaHUB-V3.txt"))();
    PistolaEseguito()
    end
})
Home:AddButton({
 Name = "PistolaBollaHUB V2",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PistolaBollaHUBMaker/PistolaBollaHUB/main/PistolaBollaHUB_V2GitHub.txt"))();
    PistolaEseguito()
    end
})
local Tab1 = Window:MakeTab({
	Name = "Hub",
	Icon = "rbxassetid://12260435973",
	PremiumOnly = false
})
Tab1:AddLabel("Qua ci sono le HUB")
Tab1:AddButton({
	Name = "IceHub",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
     ScriptEseguito()
  	end    
})
Tab1:AddButton({
 Name = "GhostHub",
 Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
    ScriptEseguito()
    end
})
Tab1:AddButton({
 Name = "OwlHub (solo se hai un esecutore buono)",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))();
    end
})
Tab1:AddButton({
 Name = "HoHo Hub",
 Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI'))()
    end
})
local BoomboxHubz = Window:MakeTab({
 Name = "Hub Boombox",
 Icon = "rbxassetid://12366106300",
 PremiumOnly = false
})
BoomboxHubz:AddLabel("Hub per le boombox(visualizer, massplayer...)")
BoomboxHubz:AddButton({
 Name = "PineappleHUB Moddato",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BABAJI69BRUH/grippos/main/ModdedPineapple.lua"))()
    ScriptEseguito()
    end
})
BoomboxHubz:AddButton({
 Name = "Kadium Visualizer",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BABAJI69BRUH/grippos/main/kadiumvisualizer.lua"))()
    end
})
BoomboxHubz:AddButton({
 Name = "Lucious Ware Normale",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/NormalLucious.lua"))()
    end
})
BoomboxHubz:AddButton({
 Name = "Lucious Ware premium",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/PremiumLucious.lua"))()
    end
})
BoomboxHubz:AddButton({
 Name = "VertsHub",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/VertsCrack.lua"))()
    end
})
BoomboxHubz:AddButton({
 Name = "Cypher X",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/Cyphrex.lua"))()
    end
})
BoomboxHubz:AddButton({
 Name = "FantaHub",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/vyks/vyks/main/FantaHub.lua"))()
    end
})
local Guis = Window:MakeTab({
 Name = "Gui",
 Icon = "rbxassetid://12262151324",
 PremiumOnly = false
})
Guis:AddLabel("Qua ci sono le GUI")
Guis:AddButton({
 Name = "Fly Gui",
 Callback = function()
    loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
    end
})
Guis:AddButton({
 Name = "Fling Gui",
 Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
    end
})
Guis:AddButton({
 Name = "Spy Gui",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MichaelScripter/MiniScript/main/Spy%20gui.lua"))()
    end
})
local Visualizzatore = Window:MakeTab({
 Name = "Visualizer",
 Icon = "rbxassetid://12392975271",
 PremiumOnly = false
})
Visualizzatore:AddButton({
 Name = "PistolaBolla Visualizer",
 Callback = function()
    PistolaBollaVisualizer()
    end
})
local ScriptsBelli = Window:MakeTab({
 Name = "Altro",
 Icon = "rbxassetid://12268674045",
 PremiumOnly = false
})
ScriptsBelli:AddLabel("Altri script che potrebbero piacere")
ScriptsBelli:AddButton({
 Name = "BackDoor",
 Callback = function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua'),true))()
    ScriptEseguito()
    end
})
local Giochi = Window:MakeTab({
 Name = "Giochi",
 Icon = "rbxassetid://12378205948",
 PremiumOnly = false
})
Giochi:AddButton({
 Name = "Brookhaven",
 Callback = function()
    PistolaBollaBrook()
    end
})
Giochi:AddButton({
 Name = "Tapping Simulator",
 Callback = function()
 PistolaTap()
 end
})
Giochi:AddButton({
 Name = "Rainbow Friends",
 Callback = function()
 RainbowFriends()
 end
})
local Tab2 = Window:MakeTab({
	Name = "Oggetti",
	Icon = "rbxassetid://12260366457",
	PremiumOnly = false
})
Tab2:AddLabel("Questi sono piu' degli script per le radio")
Tab2:AddButton({
	Name = "BackPack (1-10 oggetti)",
	Callback = function()
      	local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(-1, 1, 2.3) * CFrame.Angles(0, math.rad(180), 0.65)
Tools[10].Parent = plr.Character

  	end    
})
Tab2:AddButton({
	Name = "Pene(3 oggetti lol)",
	Callback = function()
      	local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1, 0.3, -1.3) * CFrame.Angles(1.6, math.rad(0), 3.16)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(-2, 0.3, -1.3) * CFrame.Angles(1.6, math.rad(0), 3.16)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(1.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[3].Parent = plr.Character

  	end    
})
Tab2:AddButton({
	Name = "Big Pene(4 oggetti lol)",
	Callback = function()
      	
local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1, 0.3, -1.3) * CFrame.Angles(1.6, math.rad(0), 3.16)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(-2, 0.3, -1.3) * CFrame.Angles(1.6, math.rad(0), 3.16)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(1.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(4, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[4].Parent = plr.Character

  	end    
})
Tab2:AddButton({
	Name = "Pene Gigante(perche l'ho fatto)(10 oggetti)",
	Callback = function()
      	local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1, 0.3, -1.3) * CFrame.Angles(1.6, math.rad(0), 3.16)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(-2, 0.3, -1.3) * CFrame.Angles(1.6, math.rad(0), 3.16)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(1.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(4, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(6.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(9, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(11.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(14, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(16.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(16.5, -1.5, -1.3) * CFrame.Angles(1.6, math.rad(90), 3.16)
Tools[10].Parent = plr.Character

  	end    
})
Tab2:AddButton({
	Name = "Gabbia(33 oggetti)",
	Callback = function()
      	local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(0, 1.2, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(0, 2.6, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(0, -0.2, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(-1.6, -1.6, -0.6) * CFrame.Angles(0, math.rad(-45), 0)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(0, -3, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(2.6, 1.2, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(2.6, 2.6, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(2.6, -0.2, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(3.6, -1.6, -2.6) * CFrame.Angles(0, math.rad(45), 0)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(2.6, -3, 0) * CFrame.Angles(0, math.rad(0), 0)
Tools[10].Parent = plr.Character

Tools[11].Grip = CFrame.new(0, 1.2, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[11].Parent = plr.Character

Tools[12].Grip = CFrame.new(0, 2.6, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[12].Parent = plr.Character

Tools[13].Grip = CFrame.new(0, -0.2, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[13].Parent = plr.Character

Tools[14].Grip = CFrame.new(0, -1.6, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[14].Parent = plr.Character

Tools[15].Grip = CFrame.new(0, -3, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[15].Parent = plr.Character

Tools[16].Grip = CFrame.new(-2.6, 1.2, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[16].Parent = plr.Character

Tools[17].Grip = CFrame.new(-2.6, 2.6, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[17].Parent = plr.Character

Tools[18].Grip = CFrame.new(-2.6, -0.2, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[18].Parent = plr.Character

Tools[19].Grip = CFrame.new(-2.6, -1.6, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[19].Parent = plr.Character

Tools[20].Grip = CFrame.new(-2.6, -3, 3) * CFrame.Angles(0, math.rad(180), 0)
Tools[20].Parent = plr.Character

Tools[21].Grip = CFrame.new(-1.5, -3, 1.2) * CFrame.Angles(0, math.rad(90), 0)
Tools[21].Parent = plr.Character

Tools[22].Grip = CFrame.new(-1.5, 1.2, 1.2) * CFrame.Angles(0, math.rad(90), 0)
Tools[22].Parent = plr.Character

Tools[23].Grip = CFrame.new(-1.5, 2.6, 1.2) * CFrame.Angles(0, math.rad(90), 0)
Tools[23].Parent = plr.Character

Tools[24].Grip = CFrame.new(-1.5, -0.2, 1.2) * CFrame.Angles(0, math.rad(90), 0)
Tools[24].Parent = plr.Character

Tools[25].Grip = CFrame.new(-1.5, -1.6, 1.2) * CFrame.Angles(0, math.rad(90), 0)
Tools[25].Parent = plr.Character

Tools[26].Grip = CFrame.new(1.5, -3, 3.8) * CFrame.Angles(0, math.rad(-90), 0)
Tools[26].Parent = plr.Character

Tools[27].Grip = CFrame.new(1.5, -1.6, 3.8) * CFrame.Angles(0, math.rad(-90), 0)
Tools[27].Parent = plr.Character

Tools[28].Grip = CFrame.new(1.5, -0.2, 3.8) * CFrame.Angles(0, math.rad(-90), 0)
Tools[28].Parent = plr.Character

Tools[29].Grip = CFrame.new(1.5, 1.2, 3.8) * CFrame.Angles(0, math.rad(-90), 0)
Tools[29].Parent = plr.Character

Tools[30].Grip = CFrame.new(1.5, 2.6, 3.8) * CFrame.Angles(0, math.rad(-90), 0)
Tools[30].Parent = plr.Character

Tools[31].Grip = CFrame.new(-1.5, 0.1, 3.4) * CFrame.Angles(4.71, math.rad(90), 0)
Tools[31].Parent = plr.Character

Tools[32].Grip = CFrame.new(-1.5, -1.4, 3.4) * CFrame.Angles(4.71, math.rad(90), 0)
Tools[32].Parent = plr.Character

Tools[33].Grip = CFrame.new(-1.5, -2.9, 3.4) * CFrame.Angles(4.71, math.rad(90), 0)
Tools[33].Parent = plr.Character

  	end    
})
Tab2:AddButton({
	Name = "Cuffie Schifose(5 oggetti)",
	Callback = function()
      	local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(-1.5, -1.3, -2.4) * CFrame.Angles(0, math.rad(90), 0)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(1.5, -1.3, 2.5) * CFrame.Angles(0, math.rad(-90), 0)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(-1.5, -1.3, -0.5) * CFrame.Angles(0, math.rad(90), 0)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(1.5, -1.3, 0.6) * CFrame.Angles(0, math.rad(-90), 0)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(1.5, -1.8, -1.6) * CFrame.Angles(0, math.rad(0), 0)
Tools[5].Parent = plr.Character

  	end    
})
Tab2:AddButton({
	Name = "QBZ 95(45 oggetti)",
	Callback = function()
      	local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(0, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(0.4, 0, 0) * CFrame.Angles(-1.58, math.rad(160), -1.5)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(2.6, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(5.4, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-1, 2, 0) * CFrame.Angles(-1.58, math.rad(160), -1.5)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(-3.6, 2, 0) * CFrame.Angles(-1.58, math.rad(160), -1.5)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(-2.7, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(-5.4, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(0.2, -2, 0) * CFrame.Angles(-1.58, math.rad(160), -1.5)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(-5.4, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[10].Parent = plr.Character

Tools[11].Grip = CFrame.new(-2.7, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[11].Parent = plr.Character

Tools[12].Grip = CFrame.new(2.6, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[12].Parent = plr.Character

Tools[13].Grip = CFrame.new(-0, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[13].Parent = plr.Character

Tools[14].Grip = CFrame.new(5.4, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[14].Parent = plr.Character

Tools[15].Grip = CFrame.new(0.4, 7, 0) * CFrame.Angles(-1.58, math.rad(190), -1.5)
Tools[15].Parent = plr.Character

Tools[16].Grip = CFrame.new(-1.7, 7, 0) * CFrame.Angles(-1.58, math.rad(195), -1.5)
Tools[16].Parent = plr.Character

Tools[17].Grip = CFrame.new(0.5, 8.3, 0) * CFrame.Angles(-1.58, math.rad(190), -1.5)
Tools[17].Parent = plr.Character

Tools[18].Grip = CFrame.new(-1.5, 8.3, 0) * CFrame.Angles(-1.58, math.rad(195), -1.5)
Tools[18].Parent = plr.Character

Tools[19].Grip = CFrame.new(8, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[19].Parent = plr.Character

Tools[20].Grip = CFrame.new(-2.8, 9, 0) * CFrame.Angles(-1.58, math.rad(160), -1.5)
Tools[20].Parent = plr.Character

Tools[21].Grip = CFrame.new(10.9, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[21].Parent = plr.Character

Tools[22].Grip = CFrame.new(-3.6, 12, 0) * CFrame.Angles(-1.58, math.rad(160), -1.5)
Tools[22].Parent = plr.Character

Tools[23].Grip = CFrame.new(13.6, -1.7, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[23].Parent = plr.Character

Tools[24].Grip = CFrame.new(13.8, -0.4, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[24].Parent = plr.Character

Tools[25].Grip = CFrame.new(12.6, -3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[25].Parent = plr.Character

Tools[26].Grip = CFrame.new(14.3, -1.7, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[26].Parent = plr.Character

Tools[27].Grip = CFrame.new(14.4, -0.4, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[27].Parent = plr.Character

Tools[28].Grip = CFrame.new(14.3, -3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[28].Parent = plr.Character

Tools[29].Grip = CFrame.new(8, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[29].Parent = plr.Character

Tools[30].Grip = CFrame.new(10.6, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[30].Parent = plr.Character

Tools[31].Grip = CFrame.new(-8, -2, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[31].Parent = plr.Character

Tools[32].Grip = CFrame.new(-6, -1, 1) * CFrame.Angles(-0.5, math.rad(-90), 0)
Tools[32].Parent = plr.Character

Tools[33].Grip = CFrame.new(6, -1, 1) * CFrame.Angles(-0.5, math.rad(90), 0)
Tools[33].Parent = plr.Character

Tools[34].Grip = CFrame.new(-9.6, -2, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[34].Parent = plr.Character

Tools[35].Grip = CFrame.new(-12, -2, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[35].Parent = plr.Character

Tools[36].Grip = CFrame.new(1.5, 6.5, 0) * CFrame.Angles(-1.6, math.rad(160), -1.5)
Tools[36].Parent = plr.Character

Tools[37].Grip = CFrame.new(4.4, 4.5, 0) * CFrame.Angles(-1.6, math.rad(180), -1.5)
Tools[37].Parent = plr.Character

Tools[38].Grip = CFrame.new(2.4, 6.5, 0) * CFrame.Angles(-1.6, math.rad(160), -1.5)
Tools[38].Parent = plr.Character

Tools[39].Grip = CFrame.new(3.4, -5.6, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[39].Parent = plr.Character

Tools[40].Grip = CFrame.new(0.8, -5.6, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[40].Parent = plr.Character

Tools[41].Grip = CFrame.new(2.5, -3.5, 0) * CFrame.Angles(-1.65, math.rad(200), -1.6)
Tools[41].Parent = plr.Character

Tools[42].Grip = CFrame.new(3.6, -3.5, 0) * CFrame.Angles(-1.65, math.rad(200), -1.6)
Tools[42].Parent = plr.Character

Tools[43].Grip = CFrame.new(-0.3, -5.6, -0.2) * CFrame.Angles(0, math.rad(-90), 0)
Tools[43].Parent = plr.Character


Tools[44].Grip = CFrame.new(4.4, -6.3, 0) * CFrame.Angles(-1.55, math.rad(180), -1.5)
Tools[44].Parent = plr.Character

Tools[45].Grip = CFrame.new(5.9, -3.9, 0) * CFrame.Angles(-1.55, math.rad(160), -1.5)
Tools[45].Parent = plr.Character

  	end    
})
Tab2:AddButton({
	Name = "LMG (54 oggetti)",
	Callback = function()
      	local plr = game:GetService("Players").LocalPlayer; plr.Character.Humanoid:UnequipTools()
local Tools = plr.Backpack:GetChildren()

Tools[1].Grip = CFrame.new(0, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[1].Parent = plr.Character

Tools[2].Grip = CFrame.new(0.4, 0, 0) * CFrame.Angles(-1.58, math.rad(160), -1.56)
Tools[2].Parent = plr.Character

Tools[3].Grip = CFrame.new(-1, 2, 0) * CFrame.Angles(-1.58, math.rad(160), -1.56)
Tools[3].Parent = plr.Character

Tools[4].Grip = CFrame.new(-3.6, 2, 0) * CFrame.Angles(-1.58, math.rad(160), -1.56)
Tools[4].Parent = plr.Character

Tools[5].Grip = CFrame.new(-2.6, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[5].Parent = plr.Character

Tools[6].Grip = CFrame.new(-0.6, -1.3, -2) * CFrame.Angles(0, math.rad(180), -0.5)
Tools[6].Parent = plr.Character

Tools[7].Grip = CFrame.new(0.6, -1.3, -2) * CFrame.Angles(0, math.rad(180), 0.5)
Tools[7].Parent = plr.Character

Tools[8].Grip = CFrame.new(1.2, -0.2, -2) * CFrame.Angles(0, math.rad(180), 0)
Tools[8].Parent = plr.Character

Tools[9].Grip = CFrame.new(-1.2, -0.2, -2) * CFrame.Angles(0, math.rad(180), 0)
Tools[9].Parent = plr.Character

Tools[10].Grip = CFrame.new(1.2, 1, -2) * CFrame.Angles(0, math.rad(180), 0)
Tools[10].Parent = plr.Character

Tools[11].Grip = CFrame.new(-1.2, 1, -2) * CFrame.Angles(0, math.rad(180), 0)
Tools[11].Parent = plr.Character

Tools[12].Grip = CFrame.new(1.2, 2.3, -2) * CFrame.Angles(0, math.rad(180), 0)
Tools[12].Parent = plr.Character

Tools[13].Grip = CFrame.new(-1.2, 2.3, -2) * CFrame.Angles(0, math.rad(180), 0)
Tools[13].Parent = plr.Character

Tools[14].Grip = CFrame.new(2.2, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[14].Parent = plr.Character

Tools[15].Grip = CFrame.new(2.2, 2.4, 0) * CFrame.Angles(-1.58, math.rad(-150), -1.56)
Tools[15].Parent = plr.Character

Tools[16].Grip = CFrame.new(-0.6, -1.3, -2.5) * CFrame.Angles(0, math.rad(180), -0.5)
Tools[16].Parent = plr.Character

Tools[17].Grip = CFrame.new(0.6, -1.3, -2.5) * CFrame.Angles(0, math.rad(180), 0.5)
Tools[17].Parent = plr.Character

Tools[18].Grip = CFrame.new(1.2, -0.2, -2.5) * CFrame.Angles(0, math.rad(180), 0)
Tools[18].Parent = plr.Character

Tools[19].Grip = CFrame.new(-1.2, -0.2, -2.5) * CFrame.Angles(0, math.rad(180), 0)
Tools[19].Parent = plr.Character

Tools[20].Grip = CFrame.new(1.2, 1, -2.5) * CFrame.Angles(0, math.rad(180), 0)
Tools[20].Parent = plr.Character

Tools[21].Grip = CFrame.new(-1.2, 1, -2.5) * CFrame.Angles(0, math.rad(180), 0)
Tools[21].Parent = plr.Character

Tools[22].Grip = CFrame.new(1.2, 2.3, -2.5) * CFrame.Angles(0, math.rad(180), 0)
Tools[22].Parent = plr.Character

Tools[23].Grip = CFrame.new(-1.2, 2.3, -2.5) * CFrame.Angles(0, math.rad(180), 0)
Tools[23].Parent = plr.Character

Tools[24].Grip = CFrame.new(4.8, -2, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[24].Parent = plr.Character

Tools[25].Grip = CFrame.new(2.2, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[25].Parent = plr.Character

Tools[26].Grip = CFrame.new(7.4, -2, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[26].Parent = plr.Character

Tools[27].Grip = CFrame.new(10, -2, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[27].Parent = plr.Character

Tools[27].Grip = CFrame.new(-1.1, -9.3, 0) * CFrame.Angles(1.58, math.rad(-180), 1.56)
Tools[27].Parent = plr.Character

Tools[28].Grip = CFrame.new(1.7, -9.3, 0) * CFrame.Angles(1.58, math.rad(-180), 1.56)
Tools[28].Parent = plr.Character

Tools[29].Grip = CFrame.new(7, -3.9, 0) * CFrame.Angles(1.58, math.rad(-130), 1.56)
Tools[29].Parent = plr.Character

Tools[30].Grip = CFrame.new(5, -3.9, 0) * CFrame.Angles(1.58, math.rad(-130), 1.56)
Tools[30].Parent = plr.Character

Tools[31].Grip = CFrame.new(3, -3.9, 0) * CFrame.Angles(1.58, math.rad(-130), 1.56)
Tools[31].Parent = plr.Character

Tools[32].Grip = CFrame.new(-1.6, -4.5, 0) * CFrame.Angles(1.58, math.rad(-160), 1.56)
Tools[32].Parent = plr.Character

Tools[33].Grip = CFrame.new(2.2, -3.9, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[33].Parent = plr.Character

Tools[34].Grip = CFrame.new(-4.6, -2.9, 0) * CFrame.Angles(1.58, math.rad(-180), 1.58)
Tools[34].Parent = plr.Character

Tools[35].Grip = CFrame.new(-3, 3.6, 0) * CFrame.Angles(1.58, math.rad(110), 1.58)
Tools[35].Parent = plr.Character

Tools[36].Grip = CFrame.new(-0, -3.9, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[36].Parent = plr.Character

Tools[37].Grip = CFrame.new(-0, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[37].Parent = plr.Character

Tools[38].Grip = CFrame.new(-2.6, -3.9, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[38].Parent = plr.Character

Tools[39].Grip = CFrame.new(-2.6, -2.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[39].Parent = plr.Character

Tools[40].Grip = CFrame.new(-5.2, -3.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[40].Parent = plr.Character

Tools[41].Grip = CFrame.new(-5.2, -2.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[41].Parent = plr.Character

Tools[42].Grip = CFrame.new(-5.2, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[42].Parent = plr.Character

Tools[43].Grip = CFrame.new(-7.8, -3.6, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[43].Parent = plr.Character

Tools[44].Grip = CFrame.new(-7.8, -2.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[44].Parent = plr.Character

Tools[45].Grip = CFrame.new(-7.8, -1.3, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[45].Parent = plr.Character

Tools[46].Grip = CFrame.new(-4.9, 7.6, 0) * CFrame.Angles(1.58, math.rad(-160), 1.56)
Tools[46].Parent = plr.Character

Tools[47].Grip = CFrame.new(0.6, 9.2, 0) * CFrame.Angles(1.58, math.rad(-200), 1.56)
Tools[47].Parent = plr.Character

Tools[48].Grip = CFrame.new(-10.4, -2.5, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[48].Parent = plr.Character

Tools[49].Grip = CFrame.new(-13, -2.5, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[49].Parent = plr.Character

Tools[50].Grip = CFrame.new(-15.6, -2.5, 0) * CFrame.Angles(0, math.rad(-90), 0)
Tools[50].Parent = plr.Character

Tools[51].Grip = CFrame.new(-4.2, 11, 0) * CFrame.Angles(1.58, math.rad(-180), 1.56)
Tools[51].Parent = plr.Character

Tools[52].Grip = CFrame.new(0.9, 8, 0) * CFrame.Angles(1.58, math.rad(-180), 1.56)
Tools[52].Parent = plr.Character

Tools[53].Grip = CFrame.new(2.8, 8, -1.2) * CFrame.Angles(1.6, math.rad(-180), 2.3)
Tools[53].Parent = plr.Character

Tools[54].Grip = CFrame.new(2.8, 8, 1.6) * CFrame.Angles(1.6, math.rad(-180), 0.8)
Tools[54].Parent = plr.Character
  	end    
})

_G.AttivaESP = true

function AttivaESP()
while _G.AttivaESP == true do
loadstring(game:HttpGet("https://raw.githubusercontent.com/zeroisswag/universal-esp/main/esp.lua"))()
end
end

local Giocatore = Window:MakeTab({
 Name = "Giocatore",
 Icon = "rbxassetid://12318039078",
 PremuimOnly = false
})
Giocatore:AddLabel("ESP")
Giocatore:AddColorpicker({
	Name = "Colore Compagni",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		_G.FriendColor = Value
	end	  
})
Giocatore:AddToggle({
 Name = "Attiva/Disattiva ESP",
 Default = false,
 Callback = function(Value)
    _G.AttivaESP = Value
    AttivaESP()
    end
})
Giocatore:AddLabel("Altri Script")
Giocatore:AddButton({
 Name = "Hat Universe",
 Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GKLtx40H"))();
    ScriptEseguito()
    end
})
Giocatore:AddButton({
 Name = "Netless V3",
 Callback = function()
    --when you reset make sure to re-execute this or just make this execute in a loop
for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
if v:IsA("BasePart") and v.Name ~="HumanoidRootPart" then
game:GetService("RunService").Heartbeat:connect(function()
v.Velocity = Vector3.new(-30,0,0)
end)
end
end
game:GetService("StarterGui"):SetCore("SendNotification", {
Title = "Notification";
Text = "Netless Ran";
Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 16;
ScriptEseguito()
end
})
Giocatore:AddButton({
 Name = "Da R15 a R6",
 Callback = function()
    local function Notification(Title, Text)
	local GUI = game:GetService("StarterGui")
	GUI:SetCore("SendNotification", {
		Title = Title,
		Text = Text
	})
end
local function Floor(x, n)
	local n = math.pow(10, n)
	local x = x * n
	if x >= 0 then x = math.floor(x + 0.5) else x = math.ceil(x - 0.5) end; return x / n
end

local SetHiddenProperty = sethiddenproperty or function() end
local IsNetworkOwner = isnetworkowner or function(Part) return Part.ReceiveAge == 0 end
local ExecuteSpeed = tick()

local Cos, Sin, Clock, Infinite, Vector3_new, CFrame_new = math.cos, math.sin, os.clock, 1/0, Vector3.new, CFrame.new
local Players = game:GetService("Players")
local LPlayer = Players.LocalPlayer
local Character = LPlayer.Character
local Humanoid = Character:FindFirstChildWhichIsA("Humanoid")
local Script = script

if Character.Name == "FEConvertor" then
	Notification("Errore.", "Gia' in R6")
	return
end

local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

local Camera = Workspace.CurrentCamera
local CameraCFrame = Camera.CFrame

Character.Archivable = true
pcall(function() 
	LPlayer:FindFirstChild("Backpack"):ClearAllChildren() 
	local Physics = settings().Physics
	Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
	Physics.ThrottleAdjustTime = Infinite
	
	Physics.AllowSleep = false
	Physics.DisableCSGv2 = false
	Physics.UseCSGv2 = true
	
	Workspace.Retargeting = "Disabled"
	Workspace.InterpolationThrottling = "Disabled"
	
	SetHiddenProperty(Workspace, "PhysicsSteppingMethod", "Adaptive")
	SetHiddenProperty(Workspace, "SignalBehavior", "Immediate")

	local HatsNames, Insert = {}, table.insert
	for Index, Accessory in pairs(Character:GetDescendants()) do
		if Accessory:IsA("Accessory") then
			if HatsNames[Accessory.Name] then
				if HatsNames[Accessory.Name] == "Unknown" then
					HatsNames[Accessory.Name] = {}
				end
				Insert(HatsNames[Accessory.Name], Accessory)
			else
				HatsNames[Accessory.Name] = "Unknown"
			end	
		end
	end
	for Index, Tables in pairs(HatsNames) do
		if Type(Tables) == "table" then
			local Number = 1
			for Index2, Names in ipairs(Tables) do
				Names.Name = Names.Name .. Number
				Number = Number + 1
			end		
		end
	end
	table.clear(HatsNames)
end)

local FakeCharacter = Instance.new("Model"); do
	local Attachments, Limbs, INew = {}, {}, Instance.new
	local function MakeInstance(ClassName, Table, Parent)
		local Part = INew(ClassName)
		for i,v in pairs(Table) do Part[i] = v end; Part.Parent = Parent or nil
		return Part
	end
	for i = 1,19 do
		local Attachment = MakeInstance("Attachment", { Axis = Vector3_new(1,0,0), SecondaryAxis = Vector3_new(0,1,0) })
		Attachments[#Attachments+1] = Attachment
	end
	for i = 1,4 do
		local Names = {"Right Arm", "Left Arm", "Right Leg", "Left Leg"}
		local Limb = MakeInstance("Part", { Size = Vector3_new(1, 2, 1), CanCollide = false, Transparency = 1, Name = Names[i] }, FakeCharacter)
		Limbs[#Limbs+1] = Limb
	end
	local Head = MakeInstance("Part", { Size = Vector3_new(2,1,1), CanCollide = false, Transparency = 1, Name = "Head" }, FakeCharacter)
	local Torso = MakeInstance("Part", { Size = Vector3_new(2,2,1), CanCollide = false, Transparency = 1, Name = "Torso" }, FakeCharacter)
	local Root = MakeInstance("Part", { Size = Vector3_new(2,2,1), CanCollide = false, Transparency = 1, Name = "HumanoidRootPart" }, FakeCharacter)
	local Humanoid = MakeInstance("Humanoid", { DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None }, FakeCharacter)
	MakeInstance("Motor6D", { Name = "Neck", Part0 = Torso, Part1 = Head, C0 = CFrame_new(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), C1 = CFrame_new(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0) }, Torso)
	MakeInstance("Motor6D", { Name = "RootJoint", Part0 = Root, Part1 = Torso, C0 = CFrame_new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0), C1 = CFrame_new(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0) }, Root)
	MakeInstance("Motor6D", { Name = "Right Shoulder", Part0 = Torso, Part1 = Limbs[1], C0 = CFrame_new(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0), C1 = CFrame_new(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0) }, Torso )
	MakeInstance("Motor6D", { Name = "Left Shoulder", Part0 = Torso, Part1 = Limbs[2], C0 = CFrame_new(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0), C1 = CFrame_new(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) }, Torso )
	MakeInstance("Motor6D", { Name = "Right Hip", Part0 = Torso, Part1 = Limbs[3], C0 = CFrame_new(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0), C1 = CFrame_new(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0) }, Torso )
	MakeInstance("Motor6D", { Name = "Left Hip", Part0 = Torso, Part1 = Limbs[4], C0 = CFrame_new(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0), C1 = CFrame_new(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0) }, Torso )
	MakeInstance("Animator", {}, Humanoid); MakeInstance("HumanoidDescription", {}, Humanoid) -- Humanoid Instances
	MakeInstance("Script", { Name = "Health" }, FakeCharacter); MakeInstance("LocalScript", { Name = "Animate" }, FakeCharacter) -- FakeCharacter Instances
	MakeInstance("Decal", { Name = "face", Texture = "rbxasset://textures/face.png", Transparency = 1 }, Head); MakeInstance("SpecialMesh", { Scale = Vector3_new(1.25, 1.25, 1.25) }, Head) -- Head Instances
	Attachments[1].Name = "FaceCenterAttachment"; Attachments[1].Position = Vector3_new(0, 0, 0); Attachments[1].Parent = Head
	Attachments[2].Name = "FaceFrontAttachment"; Attachments[2].Position = Vector3_new(0, 0, -0.6); Attachments[2].Parent = Head
	Attachments[3].Name = "HairAttachment"; Attachments[3].Position = Vector3_new(0, 0.6, 0); Attachments[3].Parent = Head
	Attachments[4].Name = "HatAttachment"; Attachments[4].Position = Vector3_new(0, 0.6, 0); Attachments[4].Parent = Head
	Attachments[5].Name = "RootAttachment"; Attachments[5].Position = Vector3_new(0, 0, 0); Attachments[5].Parent = Root
	Attachments[6].Name = "RightGripAttachment"; Attachments[6].Position = Vector3_new(0, -1, 0); Attachments[6].Parent = Limbs[1]
	Attachments[7].Name = "RightShoulderAttachment"; Attachments[7].Position = Vector3_new(0, 1, 0); Attachments[7].Parent = Limbs[1]
	Attachments[8].Name = "LeftGripAttachment"; Attachments[8].Position = Vector3_new(0, -1, 0); Attachments[8].Parent = Limbs[2]
	Attachments[9].Name = "LeftShoulderAttachment"; Attachments[9].Position = Vector3_new(0, 1, 0); Attachments[9].Parent = Limbs[2]
	Attachments[10].Name = "RightFootAttachment"; Attachments[10].Position = Vector3_new(0, -1, 0); Attachments[10].Parent = Limbs[3]
	Attachments[11].Name = "LeftFootAttachment"; Attachments[11].Position = Vector3_new(0, -1, 0); Attachments[11].Parent = Limbs[4]
	Attachments[12].Name = "BodyBackAttachment"; Attachments[12].Position = Vector3_new(0, 0, 0.5); Attachments[12].Parent = Torso
	Attachments[13].Name = "BodyFrontAttachment"; Attachments[13].Position = Vector3_new(0, 0, -0.5); Attachments[13].Parent = Torso
	Attachments[14].Name = "LeftCollarAttachment"; Attachments[14].Position = Vector3_new(-1, 1, 0); Attachments[14].Parent = Torso
	Attachments[15].Name = "NeckAttachment"; Attachments[15].Position = Vector3_new(0, 1, 0); Attachments[15].Parent = Torso
	Attachments[16].Name = "RightCollarAttachment"; Attachments[16].Position = Vector3_new(1, 1, 0); Attachments[16].Parent = Torso
	Attachments[17].Name = "WaistBackAttachment"; Attachments[17].Position = Vector3_new(0, -1, 0.5); Attachments[17].Parent = Torso
	Attachments[18].Name = "WaistCenterAttachment"; Attachments[18].Position = Vector3_new(0, -1, 0); Attachments[18].Parent = Torso
	Attachments[19].Name = "WaistFrontAttachment"; Attachments[19].Position = Vector3_new(0, -1, -0.5); Attachments[19].Parent = Torso
	FakeCharacter.Parent = Workspace
	FakeCharacter.PrimaryPart = Head
	FakeCharacter.Name = "FEConvertor"
	FakeCharacter:MoveTo(Character.Head.Position)
end

local FakeHumanoid = FakeCharacter:FindFirstChildOfClass("Humanoid")
local RigType = Humanoid.RigType.Name
local Velocity = Vector3_new(0, 25.25, 0)
local AntiSleepCF;
local RBXSignals = {}
local InstanceTables = { -- [[ Tables are gonna be only used for loops, I do not find them necesary for the [for i,v] loops ]] --
	['CharG'] = Character:GetChildren(),
	['CharD'] = Character:GetDescendants(),
	['FakeCharG'] = FakeCharacter:GetChildren()
}

for _, Instance in pairs(InstanceTables['CharD']) do
	if ( Instance:IsA("Motor6D") and Instance.name ~= "Neck" ) or Instance:IsA("Script") then
		Instance:Destroy()
	elseif Instance:IsA("Accessory") then
		local Accessory = Instance:Clone()
		Accessory.Parent = FakeCharacter
		
		local Handle = Accessory:FindFirstChild("Handle")
		if not Handle then return end
		
		local Weld = Handle:FindFirstChildOfClass("Weld")
		if not Weld then return end
		
		local Attachment = Handle:FindFirstChildOfClass("Attachment")
		if not Attachment then
			local Head = FakeCharacter:FindFirstChild("Head")
			Weld.C1 = CFrame_new(0, Head.Size.Y / 2, 0) * Accessory.AttachmentPoint:Inverse()
			Weld.Part1 = Head
		else
			Weld.C0 = Attachment.CFrame
			Weld.C1 = FakeCharacter:FindFirstChild(Attachment.Name, true).CFrame
			
			Weld.Part1 = FakeCharacter:FindFirstChild(Attachment.Name, true).Parent
		end
		Handle.Transparency = 1
		Handle.CFrame = Weld.Part1.CFrame * Weld.C1 * Weld.C0:Inverse()
	elseif Instance:IsA("Weld") then
		local Attachment = Instance.Parent:FindFirstChildOfClass("Attachment")
		if Attachment then
			if not table.find({"HairAttachment", "HatAttachment", "FaceFrontAttachment", "FaceCenterAttachment"}, Attachment.Name ) then
				Instance:Destroy()
			end
		end
	elseif Instance:IsA("BasePart") then
		Instance.RootPriority = 127
	end
end

for _, Track in pairs(Humanoid:GetPlayingAnimationTracks()) do
	Track:Stop()
end

local Offsets = {}; do
	if RigType == "R6" then
		Offsets = {
			["HumanoidRootPart"] = {FakeCharacter:FindFirstChild("HumanoidRootPart"), CFrame_new()},
			["Torso"] = {FakeCharacter:FindFirstChild("Torso"), CFrame_new()},
			["Right Arm"] = {FakeCharacter:FindFirstChild("Right Arm"), CFrame_new()},
			["Left Arm"] = {FakeCharacter:FindFirstChild("Left Arm"), CFrame_new()},
			["Right Leg"] = {FakeCharacter:FindFirstChild("Right Leg"), CFrame_new()},
			["Left Leg"] = {FakeCharacter:FindFirstChild("Left Leg"), CFrame_new()},
		}
	elseif RigType == "R15" then
		Offsets = {
			["UpperTorso"] = {FakeCharacter:FindFirstChild("Torso"), CFrame_new(0, 0.194, 0)},
			["LowerTorso"] = {FakeCharacter:FindFirstChild("Torso"), CFrame_new(0, -0.79, 0)},
			["HumanoidRootPart"] = {Character:FindFirstChild("UpperTorso"), CFrame_new()},
			
			["RightUpperArm"] = {FakeCharacter:FindFirstChild("Right Arm"), CFrame_new(0, 0.4085, 0)},
			["RightLowerArm"] = {FakeCharacter:FindFirstChild("Right Arm"), CFrame_new(0, -0.184, 0)},
			["RightHand"] = {FakeCharacter:FindFirstChild("Right Arm"), CFrame_new(0, -0.83, 0)},

			["LeftUpperArm"] = {FakeCharacter:FindFirstChild("Left Arm"), CFrame_new(0, 0.4085, 0)},
			["LeftLowerArm"] = {FakeCharacter:FindFirstChild("Left Arm"), CFrame_new(0, -0.184, 0)},
			["LeftHand"] = {FakeCharacter:FindFirstChild("Left Arm"), CFrame_new(0, -0.83, 0)},

			["RightUpperLeg"] = {FakeCharacter:FindFirstChild("Right Leg"), CFrame_new(0, 0.575, 0)},
			["RightLowerLeg"] = {FakeCharacter:FindFirstChild("Right Leg"), CFrame_new(0, -0.199, 0)},
			["RightFoot"] = {FakeCharacter:FindFirstChild("Right Leg"), CFrame_new(0, -0.849, 0)},

			["LeftUpperLeg"] = {FakeCharacter:FindFirstChild("Left Leg"), CFrame_new(0, 0.575, 0)},
			["LeftLowerLeg"] = {FakeCharacter:FindFirstChild("Left Leg"), CFrame_new(0, -0.199, 0)},
			["LeftFoot"] = {FakeCharacter:FindFirstChild("Left Leg"), CFrame_new(0, -0.849, 0)}
		}
	end
end

RBXSignals[#RBXSignals + 1] = RunService.PreSimulation:Connect(function()  -- [[ Noclip ]] --
	SetHiddenProperty(LPlayer, "MaximumSimulationRadius", 99999)
	SetHiddenProperty(LPlayer, "SimulationRadius", 99999)
	AntiSleepCF = CFrame_new(0.01 * Cos(Clock() * 10), 0.01 * Sin(Clock() * 10), 0)
	for _, Part in pairs(InstanceTables['CharG']) do
		if Part.Parent and Part:IsA("BasePart") then
			Part.CanCollide = false
		end
	end
	for _, Part in pairs(InstanceTables['FakeCharG']) do
		if Part.Parent and Part:IsA("BasePart") then
			Part.CanCollide = false
		end
	end
end)

RBXSignals[#RBXSignals + 1] = RunService.PostSimulation:Connect(function()  -- [[ Finishing ]] --
	for PartName, PartTo in pairs(Offsets) do
		local Part = Character:FindFirstChild(PartName)			
		if Part and IsNetworkOwner(Part) then 
			Part.CFrame = PartTo[1].CFrame * PartTo[2] * AntiSleepCF
			Part.RotVelocity = PartTo[1].RotVelocity
		end
	end
	for _, Instance in pairs(InstanceTables['CharG']) do
		if Instance.Parent and Instance:IsA("BasePart") then
			Instance.Velocity = FakeHumanoid.MoveDirection * ( 90 * Instance.Mass) + Velocity
		end
		if Instance.Parent and Instance:IsA("Accessory") then
			local Handle = Instance:FindFirstChild("Handle")
			local FakeHandle = FakeCharacter[Instance.Name]:FindFirstChild("Handle")

			if IsNetworkOwner(Handle) == true then
				Handle.CFrame = FakeHandle.CFrame * AntiSleepCF
			end
			
			Handle.RotVelocity = Vector3_new()
			Handle.Velocity = FakeHumanoid.MoveDirection * ( 90 * Handle:GetMass()) + Velocity
		end
	end
end)

do -- Camera [ Scoping just because it's better ]
	local Event;
	Event = RunService.PreRender:Connect(function()
		Camera.CFrame = CameraCFrame
		Event:Disconnect()
	end)
end

Camera.CameraSubject = FakeHumanoid
Character.Parent = FakeCharacter
LPlayer.Character = FakeCharacter
RBXSignals[#RBXSignals + 1] = Character:GetPropertyChangedSignal("Parent"):Connect(function(Parent)
	if Parent == nil then
		for _, Signal in pairs(RBXSignals) do
			Signal:Disconnect()
		end
		LPlayer.Character = Character
		Character.Parent = Workspace
		FakeCharacter:Destroy()
		if Script then Script:Destroy() end
	end
end)

RBXSignals[#RBXSignals + 1] =  FakeHumanoid.Died:Connect(function()
	for _, Signal in pairs(RBXSignals) do
		Signal:Disconnect()
	end
	LPlayer.Character = Character
	Character.Parent = Workspace
	FakeCharacter:Destroy()
	if Script then Script:Destroy() end
end)

loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekReanimate/main/Addons/Animations.lua"))()
ScriptEseguito()
 end 
})
Giocatore:AddLabel("Per ElectroWare serve la key, copia il loro discord")
Giocatore:AddButton({
 Name = "ElectroWare",
 Callback = function()
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/ayoyao3744/Electroware/main/Main%20Electroware%20Hub"), true))()
    ScriptEseguito()
    end
})
Giocatore:AddButton({
 Name = "Copia discord Electroware",
 Callback = function()
    setclipboard("https://discord.gg/xBxHka9BUV")
    LinkCopiato()
    end
})
Giocatore:AddLabel("Velocita'/Salto (Solo per PC o mouse e tastiera)")
Giocatore:AddSlider({
	Name = "Velocita'",
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Velocita'",
	Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
Giocatore:AddSlider({
 Name = "Salto",
 Min = 50,
 Max = 500,
 Default = 50,
 Color = Color3.fromRGB(255,255,255),
 Increment = 1,
 ValueName = "Potenza Salto",
 Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
 end
})
Giocatore:AddButton({
 Name = "Resettati",
 Callback = function()
    local Resetta = game:FindFirstChildOfClass("Players").LocalPlayer.Character
    Resetta:Destroy()
    end
})
local Puntatori = Window:MakeTab({
 Name = "Puntatori belli",
 Icon = "rbxassetid://12362253675",
 PremiumOnly = false
})
Puntatori:AddLabel("! ATTENZIONE !")
Puntatori:AddLabel("I Puntatori sono giganti")
Puntatori:AddButton({
 Name = "Puntatore Vecchio",
 Callback = function()
    local mouse = game.Players.LocalPlayer:GetMouse()
    
    mouse.Icon = "rbxassetid://12357877750"
    end
})
local HatRichiesti = Window:MakeTab({
 Name = "Hat Richiesti",
 Icon = "rbxassetid://12362226698",
 PremiumOnly = false
})
HatRichiesti:AddButton({
 Name = "Baller (R6)",
 Callback = function()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Lowerrated/roblox-fe-baller-script/main/main"))()
    ScriptEseguito()
    end
})
HatRichiesti:AddButton({
 Name = "Baller V2 (R6)",
 Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/BABAJI69BRUH/grippos/main/Baller-V2.lua"))()
    ScriptEseguito()
    end
})
HatRichiesti:AddButton({
 Name = "Copia link Hat Richiesto",
 Callback = function()
    setclipboard("https://www.roblox.com/catalog/6685365462/Red-Stickman-Head")
    LinkCopiato()
    end
})
local ErreTix = Window:MakeTab({
 Name = "RTX",
 Icon = "rbxassetid://12609363352",
 PremiumOnly = false
})
ErreTix:AddLabel("Script per migliorare la grafica(piu' o meno)")
ErreTix:AddButton({
 Name = "Attiva",
 Callback = function()
    local a = game.Lighting
a.Ambient = Color3.fromRGB(33, 33, 33)
a.Brightness = 6.67
a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
a.ColorShift_Top = Color3.fromRGB(255, 247, 237)
a.EnvironmentDiffuseScale = 0.105
a.EnvironmentSpecularScale = 0.522
a.GlobalShadows = true
a.OutdoorAmbient = Color3.fromRGB(51, 54, 67)
a.ShadowSoftness = 0.04
a.GeographicLatitude = -15.525
a.ExposureCompensation = 0.75

local b = Instance.new("BloomEffect", a)
b.Enabled = true
b.Intensity = 0.10
b.Size = 1900
b.Threshold = 0.915

local c = Instance.new("ColorCorrectionEffect", a)
c.Brightness = 0.01
c.Contrast = 0.5
c.Enabled = true
c.Saturation = 0.5
c.TintColor = Color3.fromRGB(200, 200, 200)
end
})
ErreTix:AddButton({
 Name = "Motion Blur",
 Callback = function()
    local camera = workspace.CurrentCamera
local blurAmount = 10
local blurAmplifier = 5
local lastVector = camera.CFrame.LookVector

local motionBlur = Instance.new("BlurEffect", camera)

local runService = game:GetService("RunService")

workspace.Changed:Connect(function(property)
 if property == "CurrentCamera" then
  local camera = workspace.CurrentCamera
  if motionBlur and motionBlur.Parent then
   motionBlur.Parent = camera
  else
   motionBlur = Instance.new("BlurEffect", camera)
  end
 end
end)

runService.Heartbeat:Connect(function()
 if not motionBlur or motionBlur.Parent == nil then
  motionBlur = Instance.new("BlurEffect", camera)
 end
 
 local magnitude = (camera.CFrame.LookVector - lastVector).magnitude
 motionBlur.Size = math.abs(magnitude)*blurAmount*blurAmplifier/2
 lastVector = camera.CFrame.LookVector
end)
end
})
ErreTix:AddButton({
 Name = "Resetta Grafica",
 Callback = function()
    local a = game.Lighting
a.Ambient = Color3.fromRGB(128, 128, 128)
a.Brightness = 1
a.ColorShift_Bottom = Color3.fromRGB(0, 0, 0)
a.ColorShift_Top = Color3.fromRGB(255, 255, 255)
a.EnvironmentDiffuseScale = 1
a.EnvironmentSpecularScale = 1
a.GlobalShadows = true
a.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
a.ShadowSoftness = 1
a.GeographicLatitude = 0
a.ExposureCompensation = 0

local bloom = game.Lighting:FindFirstChildOfClass("BloomEffect")
if bloom then
    bloom:Destroy()
end

local colorCorrection = game.Lighting:FindFirstChildOfClass("ColorCorrectionEffect")
if colorCorrection then
    colorCorrection:Destroy()
end
end
})
local Comandi = Window:MakeTab({
 Name = "Comandi",
 Icon = "rbxassetid://12610162381",
 PremiumOnly = false
})
Comandi:AddLabel("Qua ci sono gli script per i comandi")
Comandi:AddButton({
 Name = "Infinite Yield",
 Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    ScriptEseguito()
    end
})
local CoseTest = Window:MakeTab({
 Name = "Cose Test",
 Icon = "rbxassetid://12318109479",
 PremiumOnly = false
})
CoseTest:AddLabel("Cose Test")
CoseTest:AddParagraph("! ATTENZIONE !", "Prima di eseguire il Chat Bypass, usandolo potresti rischiare il ban di roblox, non sono responsabile per nessun ban. Usalo a tuo rischio.")
CoseTest:AddButton({
 Name = "Bypassa Chat",
 Callback = function()
    KeyBind = 'F'
    loadstring(game:HttpGet("https://raw.githubusercontent.com/synnyyy/synergy/additional/betterbypasser",true))()
    ScriptEseguito()
    end
})
local Note = Window:MakeTab({
 Name = "Note",
 Icon = "rbxassetid://12694233299",
 PremiumOnly = false
})
Note:AddParagraph("Nota:", "Alcuni script potrebbero non andare, se qualche script non va, scrivimi su Discord")
Note:AddLabel("FCMM4TT10#3300")
Note:AddParagraph("Nota:", "Gli script per 'Giocatore' potrebbero molto probabilmente non andare perche' roblox ha patchato il reanimate")
local Crediti = Window:MakeTab({
 Name = "Crediti",
 Icon = "rbxassetid://12269282350",
 PremiumOnly = false
})
Crediti:AddParagraph("Creatore PistolaBollaHUB:", "FCNM4TT10#3300")
Crediti:AddParagraph("Idea PistolabollaHUB:", "FCNM4TT10#3300")
Crediti:AddParagraph("Idea Alcune Hub, Gui e altri script:", "Leoo!#8017")
Crediti:AddParagraph("Il bro:", "QUELLO_DEL_2007")
Crediti:AddParagraph("Il mio amor:", "Francy")
end

function KeyNonCorretta()
OrionLib:MakeNotification({
	Name = "Key Non Corretta!",
	Content = "Hai messo la Key sbagliata!",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end

Key:AddTextbox({
	Name = "Metti la Key",
	Default = "Metti qui",
	TextDisappear = true,
	Callback = function(Value)
	_G.KeyInput = Value
	end	
})
Key:AddButton({
	Name = "Controlla Key",
	Callback = function()
      		if _G.KeyInput == _G.Key then
      		KeyCorretta()
      		PizdaMata()
      		else
      		KeyNonCorretta()
      		end
  	end    
})
Key:AddButton({
 Name = "Ottieni la Key",
 Callback = function()
    setclipboard("bit.ly/3Yq5hTj")
    LinkKey()
    end
})
local KeyTuto = Window:MakeTab({
 Name = "Come ottenerla",
 Icon = "rbxassetid://12270027487",
 PremiumOnly = false
})
KeyTuto:AddParagraph("! COME OTTENERLA !", "Clicca su 'Ottieni Key', incolla il link nel browser, fai il linkvertise, incolla la key e divertiti!")