--* UserVars() Function - Example

--* About
    -- This example sets, gets, and deletes a user variable.

--* Example 1
local function main()
    -- Stores a local Lua variable with the handle for the user variables.
    local variableSection = UserVars()
    -- Sets a user variable with an integer value using the SetVar function.
    SetVar(variableSection, "myUserVar", 42)
    -- Prints the user variable using the GetVar function.
    Printf("The value  of myUserVar is: " .. GetVar(variableSection, "myUserVar"))
    -- Deletes the user variable using the DelVar function.
    DelVar(variableSection, "myUserVar")
end

return main