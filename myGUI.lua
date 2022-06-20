




	local Library  = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
	local Window = Library.CreateLib("ArrowSploit", "DarkTheme")
Main.Visible = false
	local MainStuff  = Window:NewTab("MainStuff")
	local MainStuffSection = MainStuff:NewSection("MainStuff")
	MainStuffSection:NewButton("shield godmode(dont pick shiled when use)","Stop open that" , function()
		local Why      = game:GetService("Players").LocalPlayer
		local Char     = Why.Character
		local backpack = Why.Backpack

		Char.Humanoid:UnequipTools()
		wait()
		for i,v in next, backpack:GetDescendants() do
			if v:IsA("Tool") and v.Name =="Shield" then
				v.GripPos         = Vector3.new(0,df8767733,0)
				v.Handle.Massless = true
				v.Parent          = Char
				v:Activate()
				v.ShieldPotion:Destroy()
				v:Destroy()
			end
		end

	end)

	MainStuffSection:NewButton("Circle Sword","Stop open that" , function()
		Speed = 0
		Spin = 0
		TornadoSpin = 0
		CircleEffect = 0
		StartingAngle = 0 -- Not degrees
		RemoveMesh = false
		Rotation = 0
		Flip = true
		OffsetX = 0
		OffsetY = 10
		OffsetZ = 1
		AntiLag = false

		local Speed_2 = Speed / math.random(3.875, 4.125)
		local function backpack()
			for i, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = game.Players.LocalPlayer.Backpack.Sword
				end
			end
		end
		local function character()
			for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					v.Parent = game.Players.LocalPlayer.Character
				end
			end
		end
		game.Players.LocalPlayer.Backpack:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Character
		if Flip then
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip =
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip *
				CFrame.Angles(math.rad(180), 0, 0)
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip =
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip +
				Vector3.new(0 + OffsetX / math.pi, 0 + OffsetY / math.pi, 0 + OffsetZ / math.pi)
		else
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip =
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip *
				CFrame.Angles(math.rad(0 + Rotation), 0, StartingAngle)
			game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip =
				game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Grip +
				Vector3.new(0 + OffsetX / math.pi, 0 + OffsetY / math.pi, 0 + OffsetZ / math.pi)
		end
		game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Parent = game.Players.LocalPlayer.Backpack
		if RemoveMesh then
			for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					v.Handle.Mesh:Remove()
				else
				end
			end
		end
		repeat
			for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
				if v:IsA("Tool") then
					v.Grip = v.Grip * CFrame.Angles(math.rad(Spin * Speed_2), 0 + TornadoSpin, CircleEffect / 16)
				end
			end
			character()
			game:GetService("RunService").RenderStepped:wait()
			backpack()
			if AntiLag then
				game:GetService("RunService").RenderStepped:wait()
			else
			end
		until game.Players.LocalPlayer.Character.Humanoid.Health == 0
	end)

	MainStuffSection:NewButton("AntiRoundKill","Stop open that" , function()

		if game:GetService("Workspace").Terrain:FindFirstChild("Seat")==nil then
			ct    = {}
			game.StarterGui:SetCore("SendNotification", {Title = "Enabled"; Text = ""; Duration = 3;})    
			sound = Instance.new("Seat", game:GetService("Workspace").Terrain)
			table.insert(ct,game:GetService("RunService").Stepped:Connect(function()
				if game:GetService("Workspace").timer.Value < 1 or game:GetService("Workspace").plrsLeft.Value < 2 then
					game.StarterGui:SetCore("SendNotification", {
						Title    = "round finished"; 
						Text     = ""; 
						Duration = 3;
					})         
					for i,v in pairs(ct) do v:Disconnect() end
					sound:Destroy()
					wait(2.3)
					game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-8, 268, 6)
					for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
						if v:IsA("Tool") then
							v.Parent = game.Players.LocalPlayer.Character
						end
					end
				end
			end))
		else
			game.StarterGui:SetCore("SendNotification", {Title = "Really Executed"; Text = ""; Duration = 3;})    
		end
	end)

	MainStuffSection:NewButton("Fling Everyone","Stop open that" , function()
		local Why      = game:GetService("Players").LocalPlayer
		local Adrix        = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		wait(0.01)
		ZZ = game:GetService('RunService').Stepped:connect(function()
			for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
				if v:IsA("BasePart") then 
					v.CanCollide = false
				end
			end
		end)
		local BG = Instance.new('BodyGyro', game:GetService("Players").LocalPlayer.Character.Torso)
		local BV     = Instance.new('BodyVelocity', game:GetService("Players").LocalPlayer.Character.Torso)
		BG.P         = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.cframe    = game:GetService("Players").LocalPlayer.Character.Torso.CFrame
		BV.velocity  = Vector3.new(0, 3.75, 0)
		BV.maxForce  = Vector3.new(9e9, 9e9, 9e9)
		wait()
		NoLol = game:GetService('RunService').Heartbeat:connect(function()
			for i,v in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
				if v:IsA("BasePart") and v.Name ~="Torso" then 
					v.Velocity = Vector3.new(0,-2333333,0)
				end
			end
		end)
		XD = game:GetService("Players").LocalPlayer

		for i,v in pairs(game:GetService("Players"):GetPlayers()) do
			if v.Name ~= XD.Name then
				if v.Character:FindFirstChild('Role') and v.Character:FindFirstChild('Torso') then
					wait(0.1)
					XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,-3.9,0)
					wait(0.1)
					XD.Character:FindFirstChild('HumanoidRootPart').CFrame = v.Character:FindFirstChild('HumanoidRootPart').CFrame + Vector3.new(0,4,0)
					wait(0.1)
				end 
			end    
		end
		wait(0.2)
		ZZ:Disconnect()

		NoLol:Disconnect()
		wait(0.1)
		BG:Destroy()
		BV:Destroy()
		game.Players.LocalPlayer.Character:FindFirstChild('HumanoidRootPart').CFrame = Adrix
		game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = true
		wait()
		game.Players.LocalPlayer.Character:FindFirstChild('Humanoid').PlatformStand = false

	end)
	MainStuffSection:NewButton("Barrier","Stop open that" , function()
		function onTouched(part)       
			local h = part
			if h.Name == "Block" then
				game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(h,Enum.NormalId.Top)
			end
		end
		Partz              = Instance.new("Part")
		Partz.Parent       = workspace
		Partz.Transparency = 1
		Partz.CanCollide   = false
		Partz.Massless     = true
		Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,51,0)
		Partz.Size         = Vector3.new(8,27,1)
		Partz.CFrame       = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame + game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.lookVector*3.5

		local light         = Instance.new("SelectionBox")
		light.Adornee       = Partz
		light.LineThickness = 0.05
		light.Color3        = Color3.fromRGB(17, 17, 257)
		light.Parent        = Partz
		light.Name          = "SelectBox"



		local bruh = Partz.Touched:connect(onTouched)
		wait()
		bruh:Disconnect()
		Partz:Destroy()

	end)
	MainStuffSection:NewButton("bypass","Stop open that" , function()

		print("Clicked")
		if game:GetService("Players").LocalPlayer.PlayerGui.Extra:FindFirstChild("Local") then
			local plr       = game:GetService("Players").LocalPlayer
			local workspace = game:GetService("Workspace")

			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("MobileFix").Parent = game:GetService("Workspace")
			plr.PlayerGui:WaitForChild("Extra"):WaitForChild("XboxFix").Parent = game:GetService("Workspace")
			wait()
			workspace:FindFirstChild("Local"):Destroy()
			workspace:FindFirstChild("Local"):Destroy()
			workspace:FindFirstChild("MobileFix"):Destroy()
			workspace:FindFirstChild("XboxFix"):Destroy()
			game.workspace.Borders.InvisibleBorder:remove()
			game.workspace.Lobby.KillPlates:remove()
			venyx:Notify("Bypassed", "Bypassed: true")

			plr.CharacterAdded:Connect(function()
				plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
				plr.PlayerGui:WaitForChild("Extra"):WaitForChild("Local").Parent = game:GetService("Workspace")
				plr.PlayerGui:WaitForChild("Extra"):WaitForChild("MobileFix").Parent = game:GetService("Workspace")
				plr.PlayerGui:WaitForChild("Extra"):WaitForChild("XboxFix").Parent = game:GetService("Workspace")
				wait()
				workspace:FindFirstChild("Local"):Destroy()
				workspace:FindFirstChild("Local"):Destroy()
				workspace:FindFirstChild("MobileFix"):Destroy()
				workspace:FindFirstChild("XboxFix"):Destroy()
			end)
		else
		end
	end)

	MainStuffSection:NewButton("Anti void kill","Stop open that" , function()
		workspace.FallenPartsDestroyHeight = -math.huge
	end)
	MainStuffSection:NewButton("Baseplate","Stop open that" , function()
		print("Clicked")
		local baseplate    = Instance.new("Part")
		baseplate.Parent   = workspace
		baseplate.Name = "MomentoXD"
		baseplate.Transparency = 0.5
		baseplate.Size     = Vector3.new(800,1,800) -- change size
		baseplate.Anchored = true
		baseplate.Position = Workspace.Lobby["Middle Room"].Floor.Base.Union.Position + Vector3.new(0,-110,0)

		if value == false then
			game.Workspace["MomentoXD"]:Destroy()
		end
	end)
	
    MainStuffSection:NewButton("NoCollideBlocks","Stop open that" , function()
		local Why = game:GetService("Players").LocalPlayer
		local Char = Why.Character
		local backpack = Why.Backpack

		backpack.Block.Parent =  Why.Character
		Char.Block.Left:Destroy()
		Char.Block.Parent = Why.Backpack
end)


MainStuffSection:NewToggle("AutoToxic(English)","Stop open that" , function(v)

		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL MAD CUZ BAD","All")
		wait (2)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOLL I CAN FLAW U U 200-0","All")
		wait (2)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("IM ILL TELL UR MUM","All")
		wait (2)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("TRASH L","All")
		wait (2)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("SHUT UP NOOB","All")
		wait (2)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("XDD UR BADDDDDDD XDDDDDDDDD","All")
		wait (2)

	end)


	local Combat = Window:NewTab("Combat")
	local CombatSection = Combat:NewSection("Combat")
	MainStuffSection:NewToggle("AutoToxic (Spanish)","Stop open that" , function(v)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL JAJAJA NO ME GANAS EZZZ","All")
		wait (2)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LLORA JAJAJA EZZZ","All")
		wait (2)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL JAJAJA","All")
		wait (2)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("XDXDXDXDXDXD","All")
		wait (2)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL TU MAMA MI PERRITA EZEZEZEZ","All")
		wait(2)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL EZ TEAM SPECTIUM","All")
		wait (2)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL EZ TEAM SPECTIUM EZEZEZEZEZEZEZEZEZEZ TEAM SPECTIUM EZZ","All")
		wait (3.1)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("LOL EZ TEAM SPECTIUM EZEZEZEZEZEZEZEZ TEAM SPECTIUM EZZ","All")
		wait (2)
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer("EZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZEZ","All")
		wait (2)
	end)
	CombatSection:NewButton("Fight bot (OPEN INFO)","Mark the playerpress e be in the same island then press r" , function()
		_G.x = nil -- target, dont change e
		print("h:loaded (  :")
		Grips = {
			Up = CFrame.new(0, 0, -1.70000005, 0, 0, 1, 1, 0, 0, 0, 1, 0),
			Out = CFrame.new(0, 0, -1.70000005, 0, 1, 0, 1, -0, 0, 0, 0, -1)
		}

		_G.e = nil
		_G.rage = 0
		local h3 = 0
		local h4 = false
		local h = 3
		local h2 = 0
		_G.g = nil
		_G.pos = nil
		local jo = 0
		local jo2 = 1
		hhh = false
		local jo3 = 0
		local player = game.Players.LocalPlayer

		local numba = Instance.new("NumberValue",workspace)
		numba.Value = -40
		delay(0,function()
			while true do
				wait(0.14)
				numba.Value = math.random(-90,-35)
				game.TweenService:Create(numba, TweenInfo.new(0.07,Enum.EasingStyle.Linear,Enum.EasingDirection.InOut,1,true,0),{Value = math.random(35,90)}):Play()
			end
		end)
		delay(5,function()
			bg = Instance.new("BodyGyro",game.ReplicatedStorage)
			bg.D = 1
			bg.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector)
			bg.P = 30000
			bg.MaxTorque = Vector3.new(400000000, 400000000, 400000000)

			game:GetService("RunService").RenderStepped:Connect(function()
				if _G.x ~= nil and _G.x:FindFirstChild("HumanoidRootPart") and _G.y == 1 and player.Character and player.Character.Humanoid.Health > 0 then
					bg.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					local torso = player.Character.HumanoidRootPart.CFrame.p+player.Character.HumanoidRootPart.CFrame.LookVector*1+player.Character.HumanoidRootPart.CFrame.RightVector*1
					local torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
					if h2 == 0 then
						torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
					elseif h2 == 1 then
						torso2 = _G.x.HumanoidRootPart.Position+game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*(numba.Value/25)
					end
					bg.CFrame = CFrame.new(torso - Vector3.new(0,torso.y,0) ,torso2 - Vector3.new(0,torso2.y,0)) --remove y value so character is always upright
					--player.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.CFrame.p, player.Character["HumanoidRootPart"].CFrame.p + (_G.x["Right Arm"].Position-player.Character["HumanoidRootPart"].CFrame.p)*Vector3.new(1,0,1))
					_G.pos = _G.x["HumanoidRootPart"].Position+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*0+player.Character["HumanoidRootPart"].CFrame.RightVector*6

			--[[if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 12 then
							jo = -1
						else
							jo = 1
			end		]]



					if _G.x.HumanoidRootPart.Position.y-0.5 > player.Character.HumanoidRootPart.Position.y then
						delay(0,function() player.Character.Humanoid.Jump = true end)
					end
					if _G.x.HumanoidRootPart.Velocity.z >= player.Character.HumanoidRootPart.CFrame.LookVector.z or _G.x.HumanoidRootPart.Velocity.x >= player.Character.HumanoidRootPart.CFrame.LookVector.x then
						_G.pos = _G.x["HumanoidRootPart"].Position+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+player.Character["HumanoidRootPart"].CFrame.RightVector*6-_G.x.HumanoidRootPart.Velocity/2
						local torso = player.Character.HumanoidRootPart.CFrame.p+player.Character.HumanoidRootPart.CFrame.LookVector*1+player.Character.HumanoidRootPart.CFrame.RightVector*1
						local torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
						if h2 == 0 then
							torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
						elseif h2 == 1 then
							torso2 = _G.x.HumanoidRootPart.Position+game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*(numba.Value/25)
						end
						bg.CFrame = CFrame.new(torso - Vector3.new(0,torso.y,0) ,torso2 - Vector3.new(0,torso2.y,0))
						if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 10 then
							--player.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.CFrame.p, player.Character["Left Arm"].CFrame.p + ((_G.x["Right Arm"].Position+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2)))-(player.Character["HumanoidRootPart"].CFrame.p+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2))))*Vector3.new(1,0,1))
							_G.pos = _G.x["HumanoidRootPart"].Position+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+(player.Character["HumanoidRootPart"].CFrame.RightVector*1+player.Character["HumanoidRootPart"].CFrame.LookVector*-1)-_G.x.HumanoidRootPart.Velocity/5+player.Character.HumanoidRootPart.CFrame.RightVector*h

							jo = jo + 1
							if jo == 3 then
								h = h * -1
							end
						end	
					elseif _G.x.HumanoidRootPart.Velocity.z <= player.Character.HumanoidRootPart.CFrame.LookVector.z or _G.x.HumanoidRootPart.Velocity.x <= player.Character.HumanoidRootPart.CFrame.LookVector.x then
						_G.pos = _G.x["HumanoidRootPart"].Position+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+player.Character["HumanoidRootPart"].CFrame.RightVector*6+_G.x.HumanoidRootPart.Velocity/10
						local torso = player.Character.HumanoidRootPart.CFrame.p+player.Character.HumanoidRootPart.CFrame.LookVector*1+player.Character.HumanoidRootPart.CFrame.RightVector*1
						local torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
						if h2 == 0 then
							torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
						elseif h2 == 1 then
							torso2 = _G.x.HumanoidRootPart.Position+game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*(numba.Value/25)
						end
						bg.CFrame = CFrame.new(torso - Vector3.new(0,torso.y,0) ,torso2 - Vector3.new(0,torso2.y,0))
						if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 10 then
							--player.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.CFrame.p, player.Character["Left Arm"].CFrame.p + ((_G.x["Right Arm"].Position+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2)))-(player.Character["HumanoidRootPart"].CFrame.p+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2))))*Vector3.new(1,0,1))
							_G.pos = _G.x["HumanoidRootPart"].Position+_G.x["HumanoidRootPart"].CFrame.RightVector*1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+(player.Character["HumanoidRootPart"].CFrame.RightVector*1+player.Character["HumanoidRootPart"].CFrame.LookVector*-1)+_G.x.HumanoidRootPart.Velocity/3+player.Character.HumanoidRootPart.CFrame.RightVector*h
							jo = jo + 1
							if jo == 3 then
								h = h * -1
							end
						end
					end
					if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 10 then
						h2 = 1
						--print('h')
					else
						h2 = 0
						--print('h2222222222 пошёл нахуй')
					end
					if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 20 then
						if (_G.x["HumanoidRootPart"].Position-player.Character["Right Arm"].CFrame.p).magnitude <= 5 or hhh == true then
							--player.Character.Humanoid.Jump = true
							hhh = true
							if (_G.x["HumanoidRootPart"].Position-player.Character["Right Arm"].CFrame.p).magnitude >= 7 then
								hhh = false
							end
							jo3 = jo3 + 1
							if jo3 >= math.random(2,4) then
								jo3 = 0
								if jo2 == 0 then
									jo2 = -2
								else
									jo2 = 0
								end
							end
							_G.pos = player.Character["HumanoidRootPart"].CFrame.LookVector*5*jo2+_G.x.HumanoidRootPart.Velocity/20
							if _G.x.HumanoidRootPart.Velocity.z >= player.Character.HumanoidRootPart.CFrame.LookVector.z or _G.x.HumanoidRootPart.Velocity.x >= player.Character.HumanoidRootPart.CFrame.LookVector.x then
								_G.pos = player.Character["HumanoidRootPart"].CFrame.LookVector*5*jo2+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+player.Character["HumanoidRootPart"].CFrame.RightVector*6-_G.x.HumanoidRootPart.Velocity/2
								local torso = player.Character.HumanoidRootPart.CFrame.p+player.Character.HumanoidRootPart.CFrame.LookVector*1+player.Character.HumanoidRootPart.CFrame.RightVector*1
								local torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
								if h2 == 0 then
									torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
								elseif h2 == 1 then
									torso2 = _G.x.HumanoidRootPart.Position+game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*(numba.Value/25)
								end
								bg.CFrame = CFrame.new(torso - Vector3.new(0,torso.y,0) ,torso2 - Vector3.new(0,torso2.y,0))
								bg.D = 1
								if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 10 then
									--player.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.CFrame.p, player.Character["Left Arm"].CFrame.p + ((_G.x["Right Arm"].Position+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2)))-(player.Character["HumanoidRootPart"].CFrame.p+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2))))*Vector3.new(1,0,1))
									_G.pos = player.Character["HumanoidRootPart"].CFrame.LookVector*5*jo2+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+(player.Character["HumanoidRootPart"].CFrame.RightVector*1+player.Character["HumanoidRootPart"].CFrame.LookVector*-1)-_G.x.HumanoidRootPart.Velocity/5+player.Character.HumanoidRootPart.CFrame.RightVector*h

									jo = jo + 1
									if jo == 3 then
										h = h * -1
									end
								end	
							elseif _G.x.HumanoidRootPart.Velocity.z <= player.Character.HumanoidRootPart.CFrame.LookVector.z or _G.x.HumanoidRootPart.Velocity.x <= player.Character.HumanoidRootPart.CFrame.LookVector.x then
								_G.pos = player.Character["HumanoidRootPart"].CFrame.LookVector*5*jo2+_G.x["HumanoidRootPart"].CFrame.RightVector*-1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+player.Character["HumanoidRootPart"].CFrame.RightVector*6+_G.x.HumanoidRootPart.Velocity/10
								local torso = player.Character.HumanoidRootPart.CFrame.p+player.Character.HumanoidRootPart.CFrame.LookVector*1+player.Character.HumanoidRootPart.CFrame.RightVector*1
								local torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
								if h2 == 0 then
									torso2 = _G.x.HumanoidRootPart.Position+_G.x.HumanoidRootPart.Velocity/10
								elseif h2 == 1 then
									torso2 = _G.x.HumanoidRootPart.Position+game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.RightVector*(numba.Value/25)
								end
								bg.CFrame = CFrame.new(torso - Vector3.new(0,torso.y,0) ,torso2 - Vector3.new(0,torso2.y,0))
								if (_G.x["HumanoidRootPart"].Position-player.Character["HumanoidRootPart"].CFrame.p).magnitude <= 10 then
									--player.Character.HumanoidRootPart.CFrame = CFrame.new(player.Character.HumanoidRootPart.CFrame.p, player.Character["Left Arm"].CFrame.p + ((_G.x["Right Arm"].Position+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2)))-(player.Character["HumanoidRootPart"].CFrame.p+Vector3.new(math.randon(-2,2),math.randon(-2,2),math.randon(-2,2))))*Vector3.new(1,0,1))
									_G.pos = player.Character["HumanoidRootPart"].CFrame.LookVector*5*jo2+_G.x["HumanoidRootPart"].CFrame.RightVector*1+_G.x.HumanoidRootPart.CFrame.LookVector*-1+(player.Character["HumanoidRootPart"].CFrame.RightVector*1+player.Character["HumanoidRootPart"].CFrame.LookVector*-1)+_G.x.HumanoidRootPart.Velocity/3+player.Character.HumanoidRootPart.CFrame.RightVector*h
									jo = jo + 1
									if jo == 3 then
										h = h * -1
									end
								end
							end
							player.Character.Humanoid:Move(_G.pos)
						end
						if player.Character:FindFirstChildOfClass("Tool") then
							player.Character:FindFirstChildOfClass("Tool"):Activate()
						end
					end
					player.Character.Humanoid:MoveTo(_G.pos)
					if _G.x:FindFirstChildOfClass("Tool") and _G.x:FindFirstChildOfClass("Tool"):FindFirstChild("Handle") then

					end


				else
					bg.Parent = game.ReplicatedStorage
				end
			end)
		end)

		mouse = player:GetMouse()
		_G.e = game:GetService("UserInputService").InputBegan:Connect(function(key)
			if key.KeyCode == Enum.KeyCode.R then
				if _G.y == 1 then
					_G.y = 0 
					print("Off y")game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
						Text = "y = ".._G.y; --The chat message
						Color = Color3.fromRGB(255, 255, 0); --Chat message color, defaults to white
						Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
						TextSize = 18 --Text size, defaults to 18
					})	
				else
					_G.y = 1 
					print("On y")game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
						Text = "y = ".._G.y; --The chat message
						Color = Color3.fromRGB(255, 255, 0); --Chat message color, defaults to white
						Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
						TextSize = 18 --Text size, defaults to 18
					})	
					local succes, errorw  = pcall(function()

					end)
					if not succes then
						warn(errorw)
						error(errorw)
					end
				end

			elseif key.KeyCode == Enum.KeyCode.E then 
				if mouse.Target and mouse.Target.Parent:FindFirstChild("HumanoidRootPart") then
					_G.x = mouse.Target.Parent 
					print(_G.x.Name.." Parent - ".._G.x.Parent.Name.." Parent.Parent - ".._G.x.Parent.Parent.Name)
					game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
						Text = _G.x.Name.." Parent - ".._G.x.Parent.Name.." Parent.Parent - ".._G.x.Parent.Parent.Name; --The chat message
						Color = Color3.fromRGB(0, 255, 255); --Chat message color, defaults to white
						Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
						TextSize = 18 --Text size, defaults to 18
					})
				elseif mouse.Target and mouse.Target.Parent.Parent:FindFirstChild("HumanoidRootPart") then
					_G.x = mouse.Target.Parent.Parent
					print(_G.x.Name.." Parent - ".._G.x.Parent.Name.." Parent.Parent - ".._G.x.Parent.Parent.Name)
					game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
						Text = _G.x.Name.." Parent - ".._G.x.Parent.Name.." Parent.Parent - ".._G.x.Parent.Parent.Name; --The chat message
						Color = Color3.fromRGB(0, 255, 255); --Chat message color, defaults to white
						Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
						TextSize = 18 --Text size, defaults to 18
					})
				elseif mouse.Target and mouse.Target.Parent.Parent.Parent:FindFirstChild("HumanoidRootPart") then
					_G.x = mouse.Target.Parent.Parent.Parent
					print(_G.x.Name.." Parent - ".._G.x.Parent.Name.." Parent.Parent - ".._G.x.Parent.Parent.Name)
					game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
						Text = _G.x.Name.." Parent - ".._G.x.Parent.Name.." Parent.Parent - ".._G.x.Parent.Parent.Name; --The chat message
						Color = Color3.fromRGB(0, 255, 255); --Chat message color, defaults to white
						Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
						TextSize = 18 --Text size, defaults to 18
					})
				end
			elseif key.KeyCode == Enum.KeyCode.T then
				if _G.rage == 0 then
					_G.rage = 1
				else
					_G.rage = 0
				end
				game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
					Text = "_G.rage = ".._G.rage; --The chat message
					Color = Color3.fromRGB(255, 255, 0); --Chat message color, defaults to white
					Font = Enum.Font.SourceSansBold; --Chat message font, defaults to SourceSansBold
					TextSize = 18 --Text size, defaults to 18
				})
			end
		end)

		while true do
			wait(0)
			if _G.rage == 1 then
				local point1 = player.Character.HumanoidRootPart.Position+Vector3.new(-40,-40,-40)
				local point2 = player.Character.HumanoidRootPart.Position+Vector3.new(40,40,40)
				local region = Region3.new(point1,point2)
				local thing = workspace:FindPartsInRegion3(region,player.Character,math.huge)
				for i,v in pairs(thing)do
					if v.Parent:FindFirstChild("Humanoid") and v.Parent.Humanoid.Health > 0 then
						print(v.Name)
						_G.x = v.Parent
						_G.main()
						wait(0.5)
						break
					end
				end
			end
		end



	end)
	CombatSection:NewButton("remove tools mesh","Stop open that" , function()

		local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
		tool.Handle.Mesh:Destroy()
		tool.Parent = game.Players.LocalPlayer.Backpack		tool.Parent = game.Players.LocalPlayer.Character
	end
	)

	CombatSection:NewButton("Hitbox","Stop open that" , function()
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/Olmafdnv/Op-hbe/main/Hbe'), true))()
	end)
	CombatSection:NewButton("antiHitbox","Stop open that" , function()
		if game.Players.LocalPlayer.Character ~= nil then
			local char = game.Players.LocalPlayer.Character
			char.Parent = nil
			char.HumanoidRootPart:Destroy()
			char.Parent = workspace
		end

	end)
	CombatSection:NewButton("FakeBlock","Stop open that" , function()

		local Players       = game:GetService("Players")
		local localPlayer   = Players.LocalPlayer
		local backpack      = localPlayer:WaitForChild("Backpack")
		local tool          = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.CanBeDropped   = true
		tool.Parent         = backpack
		tool.Name           = "FakeBlock"
		tool.Equipped:Connect(function(mouse)
			mouse.Button1Down:Connect(function()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
					if mouse.Target and mouse.Target.Parent then
						game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Right)
						game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Left)
						game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Back)
						game:GetService("Players").LocalPlayer.Backpack.Block.RemoteEvent:FireServer(mouse.Target,Enum.NormalId.Front)
					end
				end
			end)
		end)
	end)
	CombatSection:NewButton("FakeAxe","Stop open that" , function()

		local Players       = game:GetService("Players")
		local localPlayer   = Players.LocalPlayer
		local backpack      = localPlayer:WaitForChild("Backpack")
		local tool          = Instance.new("Tool")
		tool.RequiresHandle = false
		tool.CanBeDropped   = true
		tool.Parent         = backpack
		tool.Name           = "FakeAxe"
		tool.Equipped:Connect(function(mouse)
			mouse.Button1Down:Connect(function()
				if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Block") then
					if mouse.Target and mouse.Target.Parent then
						local Adrix = {
							[1] = mouse.Target
						}

						game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(unpack(Adrix))  
					end
				end
			end)
		end)

	end)
	CombatSection:NewButton("EquipTools","Stop open that" , function()
		for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
			if v:IsA("Tool") then
				v.Parent = game.Players.LocalPlayer.Character
			end
		end
	end)

	local Mine = Window:NewTab("Mine")
	local MineSection = Mine:NewSection("Mine")
	MineSection:NewButton("Coin farm","Stop open that" , function()
		local cpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame

		local stuff = workspace:getDescendants()
		for i=1,#stuff do
			if stuff[i].Name == "Block" and stuff[i].Parent.Name == "Ores" then
				repeat
					wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = stuff[i].CFrame
					game.Players.LocalPlayer.Character.Axe.RemoteEvent:FireServer(stuff[i])
				until stuff[i].Name ~= "Block" or not game.Players.LocalPlayer.Character:findFirstChild("Axe")
			end
		end

		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = cpos
	end)

	MineSection:NewButton("MineboxV1","Stop open that" , function()

		print("Clicked")

		function onTouched(part)       
			local h = part
			if h.Name == "Block" then
				game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
			end
		end
		Partz              = Instance.new("Part")
		Partz.Parent       = workspace
		Partz.Transparency = 1
		Partz.CanCollide   = false
		Partz.Massless     = true
		Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,4,0)
		Partz.Size         = Vector3.new(5,10,5)

		local light         = Instance.new("SelectionBox")
		light.Adornee       = Partz
		light.LineThickness = 0.05
		light.Color3        = Color3.fromRGB(0, 255, 0)
		light.Parent        = Partz
		light.Name          = "SelectBox"

		local bruh = Partz.Touched:connect(onTouched)

		wait()
		bruh:Disconnect()
		Partz:Destroy()

	end)

	MineSection:NewButton("MineboxV2","Stop open that" , function()
		print("Clicked")

		function onTouched(part)       
			local h = part
			if h.Name == "Block" then
				game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
			end
		end
		Partz              = Instance.new("Part")
		Partz.Parent       = workspace
		Partz.Transparency = 1
		Partz.CanCollide   = false
		Partz.Massless     = true
		Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,7,0)
		Partz.Size         = Vector3.new(15,20,15)

		local light         = Instance.new("SelectionBox")
		light.Adornee       = Partz
		light.LineThickness = 0.05
		light.Color3        = Color3.fromRGB(0, 255, 0)
		light.Parent        = Partz
		light.Name          = "SelectBox"

		local bruh = Partz.Touched:connect(onTouched)

		wait()
		bruh:Disconnect()
		Partz:Destroy()

	end)


	MineSection:NewButton("MineboxV3","Stop open that" , function()

		print("Clicked")

		function onTouched(part)       
			local h = part
			if h.Name == "Block" then
				game:GetService("Players").LocalPlayer.Backpack.Axe.RemoteEvent:FireServer(h)  
			end
		end
		Partz              = Instance.new("Part")
		Partz.Parent       = workspace
		Partz.Transparency = 1
		Partz.CanCollide   = false
		Partz.Massless     = true
		Partz.Position     = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0,3,0)
		Partz.Size         = Vector3.new(10,10,15)

		local light         = Instance.new("SelectionBox")
		light.Adornee       = Partz
		light.LineThickness = 0.05
		light.Color3        = Color3.fromRGB(0, 255, 0)
		light.Parent        = Partz
		light.Name          = "SelectBox"

		local bruh = Partz.Touched:connect(onTouched)

		wait()
		bruh:Disconnect()
		Partz:Destroy()

	end)
	local Player = Window:NewTab("Player")
	local PlayerSection = Player:NewSection("Player")

	PlayerSection:NewSlider("Walkspeed", 16, 16, 100, function(value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (value)
	end)

	PlayerSection:NewSlider("JumpPower", 50, 50, 150, function(value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = (value)
	end)


	PlayerSection:NewSlider("Hitbox", 2, 60, 30, function(value)
		for i,v in pairs(game.Players:GetChildren()) do
			if v.Name ~= game.Players.LocalPlayer.Name then
				v.Character.HumanoidRootPart.Transparency = 0.5
				v.Character.HumanoidRootPart.Size         = Vector3.new((value),(value),(value))
				v.Character.HumanoidRootPart.Material     = "Plastic"
				v.Character.HumanoidRootPart.BrickColor   = BrickColor.new("Really blue")
				v.Character.HumanoidRootPart.CanCollide   = false
			end
		end
	end)



	local TP = Window:NewTab("Teleports")
	local TPSection = TP:NewSection("Teleports")


	TPSection:NewButton("to mid","Stop open that" , function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 171, -9)

	end)

	TPSection:NewButton("to mega vip","Stop open that" , function()

		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1.06104672, 264, 72.2138901)
	end)

	TPSection:NewButton("to vip","Stop open that" , function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0.5700830221176147, 263.9999084472656, -70.29008483886719)

	end)
	TPSection:NewButton("to lobby","Stop open that" , function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2, 268, 1)
	end)
	TPSection:NewButton("to gamepass shop","Stop open that" , function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-67.24671173095703, 263.9999084472656, 0.7011529207229614)

	end)
	TPSection:NewButton("to shop","Stop open that" , function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(62.01412582397461, 263.9999084472656, -0.6906601190567017)
	end)
	TPSection:NewButton("to 16bit shop","Stop open that" , function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(122.12901306152344, 263.9999084472656, -0.8320345282554626)
	end)
	local TPSection = TP:NewSection("islands tp")
	TPSection:NewButton("to 1st island ","Stop open that" , function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(117.87477111816406, 165.00018310546875, 112.94947052001953)
	end)

	TPSection:NewButton("to 2nd ","Stop open that" , function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(6.592735290527344, 165.00018310546875, 113.1541748046875)
	end)

	TPSection:NewButton("to 3rd ","Stop open that" , function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-101.10951232910156, 165.00018310546875, 124.05487823486328)
	end)

	TPSection:NewButton("to 4th ","Stop open that" , function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-115.91912841796875, 165.00018310546875, -0.4904245138168335)
	end)

	TPSection:NewButton("to 5th ","Stop open that" , function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-117.0454330444336, 165.00022888183594, -93.84414672851562)
	end)

	TPSection:NewButton("to 6th ","Stop open that" , function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8.571492195129395, 165.0001983642578, -108.81838989257812)
	end)

	TPSection:NewButton("to 7th ","Stop open that" , function() 
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(102.5516128540039, 165.0001983642578, -106.4378662109375)
	end)

	TPSection:NewButton("to 8th ","Stop open that" , function()
		game:GetService('Players').LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(98.6268539428711, 165.0001983642578, -3.726986885070801)
	end)


	local Codes = Window:NewTab("Codes")
	local CodesSection = Codes:NewSection("Codes")


	local Info = Window:NewTab("Info")
	local InfoSection = Info:NewSection("Info")
	local InfoSection = Info:NewSection("Script by Aro")
	local InfoSection = Info:NewSection("Roblox user:kareem421534")
	local InfoSection = Info:NewSection("Discord: !Aro#8532 ")


	CodesSection:NewButton("Sword","Stop open that" , function()
		local args = {
			[1] = "sword"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)
	CodesSection:NewButton("Ghost","Stop open that" , function()
		local args = {
			[1] = "ghost"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)
	CodesSection:NewButton("Sparklz","Stop open that" , function()
		local args = {
			[1] = "sparklez"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)
	CodesSection:NewButton("Iscgolem","Stop open that" , function()
		local args = {
			[1] = "icegolem"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)
	CodesSection:NewButton("iceknight","Stop open that" , function()
		local args = {
			[1] = "iceknight"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)

	CodesSection:NewButton("penguin","Stop open that" , function()
		local args = {
			[1] = "penguin"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)

	CodesSection:NewButton("polarbear","Stop open that" , function()
		local args = {
			[1] = "polarbear"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)

	CodesSection:NewButton("snowman","Stop open that" , function()
		local args = {
			[1] = "snowman"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)

	CodesSection:NewButton("mummy","Stop open that" , function()
		local args = {
			[1] = "mummy"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)

	CodesSection:NewButton("zombie","Stop open that" , function()
		local args = {
			[1] = "zombie"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)

	CodesSection:NewButton("dragon","Stop open that" , function()
		local args = {
			[1] = "dragon"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)

	CodesSection:NewButton("frankenstein","Stop open that" , function()
		local args = {
			[1] = "frankenstein"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)

	CodeSection:NewButton("skeleton","Stop open that" , function()
		local args = {
			[1] = "skeleton"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)

	CodesSection:NewButton("vampire","Stop open that" , function()
		local args = {
			[1] = "vampire"
		}

		game:GetService("ReplicatedStorage").Events.PromoRewards:FireServer(unpack(args))

	end)



