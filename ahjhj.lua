local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()
local window = library:Window("gytluuDz")

function SkillDown(va)
    game:GetService("VirtualInputManager"):SendKeyEvent(true, va, false, game)
end

function SkillUp(va)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, va, false, game)
end

local function useSkill(key)
    SkillDown(key)
    wait(0.1)
    SkillUp(key)
end

window:Button("console", function()
    useSkill("F9")
end)

-- Copy CFrame Button
window:Button("CopyCframe", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gytluu/SupportBuLon/main/CoppyCframe"))()
end)

-- Separate Buttons for Infinite Yield and Fly
window:Button("Infinite Yield", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)

window:Button("FlyBuLon", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/gytluu/SupportBuLon/main/FlyBuLon"))()
end)

-- Dex Vippro Button
window:Button("Dex Vippro", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/DEX-Explorer/refs/heads/main/Mobile.lua"))()
end)

-- RemoteSpy Button
window:Button("RemoteSpy", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/SimpleSpy/refs/heads/main/Mobile.lua"))()
end)

-- RemoteSpy 1 Button
window:Button("RemoteSpy 1", function()
    local owner = "Upbolt"
    local branch = "revision"

    local function webImport(file)
        return loadstring(game:HttpGetAsync(("https://raw.githubusercontent.com/%s/Hydroxide/%s/%s.lua"):format(owner, branch, file)), file .. '.lua')()
    end

    webImport("init")
    webImport("ui/main")
end)
