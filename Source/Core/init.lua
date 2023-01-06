local Toolbar = plugin:CreateToolbar("Hardswell's Plugin")
local Button = Toolbar:CreateButton("Hardswell's Plugin", "Load", "rbxassetid://12070443054")

Button.Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Hardswell/Roblox-Scripts/master/Source/Core/init.lua"))()
end)