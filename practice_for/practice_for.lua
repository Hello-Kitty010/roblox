local part = script.Parent

local function trap(otherPart)
	local character = otherPart.Parent
	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid then
		for count = 1,10 do
			part.Transparency = count / 10
			wait(0,1)
		end
		part.CanCollide = false
		wait(3)
		part.CanCollide = true
		part.Transparency = 0
	end
end

part.Touched:Connect(trap)