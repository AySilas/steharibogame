local RunService = game:GetService("RunService")

local sun = workspace:WaitForChild("Sun")
local orb = sun:WaitForChild("Orb")
sun.PrimaryPart = orb

local origin = sun:GetPivot()
local startTime = os.clock()

RunService.Heartbeat:Connect(function()
	local t = os.clock() - startTime
	local bob = math.sin(t * 1.4) * 0.6
	sun:PivotTo(origin * CFrame.new(0, bob, 0))
end)