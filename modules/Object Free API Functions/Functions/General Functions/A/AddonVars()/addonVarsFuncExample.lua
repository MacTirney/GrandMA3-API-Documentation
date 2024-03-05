--* AddonVars() Function - Example

--* About
    -- This example prints information connected to the "Demo" add-on variable set.

--* Example 1
return function()
    -- Stores the handle to a variable set connected to the add-on named 'Demo'.
    local variableSet = AddonVars("Demo")

    -- Check if the return is nil and print an error message
    if variableSet == nil then
        ErrPrintf("The variable set does not exists")
        return
    end

    Printf("=============== START OF DUMP ===============")

    variableSet:Dump()

    Printf("================ END OF DUMP ================")
end