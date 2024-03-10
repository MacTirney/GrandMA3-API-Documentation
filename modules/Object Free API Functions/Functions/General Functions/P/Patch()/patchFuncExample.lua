--* Patch() Function - Example

--* About
    -- This example prints the data connected to the handle.
        -- It uses the Dump() function.

--* Example 1
return function()

    -- This example dumps all information about the patch object
    Printf("=============== START OF DUMP ===============")

    Patch():Dump()
    
    Printf("================ END OF DUMP ================")

end