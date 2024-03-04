--* SetVar() Function - Example

--* About
    -- This example sets a value to the variable called "myUserVar" in the set of user variables if it exists.

--* Example 1
local function main()
    local success = SetVar(UserVars(), "myUserVar", "Hello World")
    if success then
        Printf("Variable is stored.")
    else
        Printf("Variable is NOT stored!")
    end
end

return main