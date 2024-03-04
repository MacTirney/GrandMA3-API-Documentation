--* GetVar() Function - Example

--* About
    -- This example returns the value of a variable called "myUserVar" in the set of user variables if it exists.

--* Example 1
local function main()
    local varValue = GetVar(UserVars(), "myUserVar")
    if varValue == nil then
        Printf("Variable returns nothing!")
    else
        Printf("Variable value is: " .. varValue)
    end
end

return main