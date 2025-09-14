local yes = script.parent.yes
local no = script.parent.no
local question = script.Parent.question
local explanation = script.Parent.explanation
local explanation_text = explanation.SurfaceGui.TextLabel
local db = true

yes.BrickColor = BrickColor.Random()
no.BrickColor = BrickColor.Random()

local fire = Instance.new("Fire")
fire.Parent = no
fire.Enabled = false

local function touchWrongAnswer()
	fire.Enabled = true
	no.Anchored = false
	explanation_text.Text = "You are wrong!"
end

local function touchAnswer()
	explanation_text.Text = "You are correct!"
	if db then 
		db = false
		explanation.Position = explanation.Position+Vector3.new(0,0,18)
		wait(100)
		db = true
	end
end

no.Touched:Connect(touchWrongAnswer)
yes.Touched:Connect(touchAnswer)