--* DelVar() Function - Example

--* About
    -- This example deletes a variable called "myUserVar" in the set of user variables.

--* Example 1
local function main()
    local success = DelVar(UserVars(), "myUserVar")
    if success then
        Printf("Variable is deleted.")
    else
        Printf("Variable is NOT deleted!")
    end
end

return main