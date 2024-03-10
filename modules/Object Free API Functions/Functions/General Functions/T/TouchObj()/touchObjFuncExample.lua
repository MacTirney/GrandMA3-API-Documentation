--* TouchObj() Function - Example

--* About
    -- This example prints information about the touch object using the Dump() function.

--* Example 1
return function()

    -- Print all informatin about the TouchObj object
    Printf("=============== START OF DUMP ===============")

    TouchObj():Dump()
    
    Printf("================ END OF DUMP ================")
end