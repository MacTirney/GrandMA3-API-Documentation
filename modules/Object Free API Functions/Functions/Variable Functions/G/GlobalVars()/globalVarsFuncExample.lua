--* GlobalVars() Function - Example

--* About
    -- This example sets, gets, and deletes a global variable.

--* Example 1
local function main()
    -- Stores a local Lua variable with the handle for the global variables.
    local variableSection = GlobalVars()
    -- Sets a global variable with an integer value using the SetVar function.
    SetVar(variableSection, "myGlobalVar", 42)
    -- Prints the global variable using the GetVar function.
    Printf("The value  of myGlobalVar is: " .. GetVar(variableSection, "myGlobalVar"))
    -- Deletes the global variable using the DelVar function.
    DelVar(variableSection, "myGlobalVar")
end

return main