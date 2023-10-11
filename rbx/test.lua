local plr = game.Players.LocalPlayer
local rs = game:GetService("ReplicatedStorage")
local servstor = game:GetService("ServerStorage")

local rstools = rs:WaitForChild("Tools")
local servtools = servstor:WaitForChild("Tools")

local function give()
  for i,v in pairs(rstools) do
    if v:IsA("Tool") then
      local clone = v:Clone()
      clone.Parent = plr.Backpack
    end
  end
  for i,v in pairs(servtools) do
    if v:IsA("Tool") then
      local clone = v:Clone()
      clone.Parent = plr.Backpack
    end
  end
end

while plr.Backpack:GetChildren() == nil or " " do
  give()
end
