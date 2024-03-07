--* GetDisplayCollect() Function - Example

--* About
    -- This example prints the data connected to the handle.
        -- It uses the Dump() function.

--* Example 1
return function()

    -- This example dumps all information about the DisplayCollect object
    Printf("=============== START OF DUMP ===============")

    GetDisplayCollect():Dump()
    
    Printf("================ END OF DUMP ================")

end