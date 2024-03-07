--* GetSelectedAttribute() Function - Example

--* About
    -- This example prints the data connected to the handle.
        -- It uses the Dump() function.

--* Example 1
return function()

    -- This example dumps all information about the currently selected attribute
    Printf("=============== START OF DUMP ===============")

    GetSelectedAttribute():Dump()

    Printf("================ END OF DUMP ================")
    
end