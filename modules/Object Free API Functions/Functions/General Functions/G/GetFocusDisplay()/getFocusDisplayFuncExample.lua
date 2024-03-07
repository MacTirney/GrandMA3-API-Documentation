--* GetFocusDisplay() Function - Example

--* About
    -- This example prints the data connected to the handle.
        -- It uses the Dump() function.

--* Example 1
return function()

    -- This example dumps all information about the display object who currently got focus
    Printf("=============== START OF DUMP ===============")

    GetFocusDisplay():Dump()

    Printf("================ END OF DUMP ================")
    
end