--* Timer() Function - Example

--* About
    -- To call a Lua function three times with a delay of one second between each function call, create a plugin with this code.

--* Example 1
local function main()

    local function timedFunction()
        Printf("Do something")
    end

    local waitSeconds = 1

    local iterations = 3

    Timer(timedFunction, waitSeconds, iterations);
    
end

return main