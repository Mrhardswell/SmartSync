local Toolbar = plugin:CreateToolbar("Hardswell's Plugin")
local Button = Toolbar:CreateButton("Hardswell's Plugin", "Load", "rbxassetid://12070443054")
local HttpService = game:GetService("HttpService")


script:SetAttribute("Selected", false)

Button.Click:Connect(function()
    script:SetAttribute("Selected", not script:GetAttribute("Selected"))
end)

local Signal = script:GetAttributeChangedSignal("Selected"):Connect(function()
    if script:GetAttribute("Selected") then
        Button:SetActive(true)
        loadstring(HttpService:GetAsync("https://raw.githubusercontent.com/Mrhardswell/SmartSync/main/Web/RawLua.lua"))()
        
    else
        Button:SetActive(false)
    end
end)