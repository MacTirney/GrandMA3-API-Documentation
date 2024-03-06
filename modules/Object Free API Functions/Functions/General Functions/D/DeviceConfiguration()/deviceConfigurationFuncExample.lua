--* DeviceConfiguration() Function - Example

--* About
    -- This example prints the data connected to the handle.

--* Example 1
return function()

    Printf("=============== START OF DUMP ===============")
    
    -- Dumps all information about the DeviceConfiguration object
    DeviceConfiguration():Dump()

    Printf("================ END OF DUMP ================")

end