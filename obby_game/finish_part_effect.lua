local debounce = false
local label = script.Parent
local part = workspace:WaitForChild("CelebrationPart")

local particle = part:FindFirstChildOfClass("ParticleEmitter")
local sound = part:FindFirstChildOfClass("Sound")

local function checkFinished(otherPart)
	if not debounce then
		debounce = true
		local partParent = otherPart.Parent
		local humanoid = partParent:FindFirstChild("Humanoid")
		if humanoid then
			label.Visible = true
			particle.Enabled = true
			sound:Play()
		end
		wait(33)
		debounce = false
	end
end

part.Touched:Connect(checkFinished)