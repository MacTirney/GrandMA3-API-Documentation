--* GetDMXUniverse() Function - Example

--* About
    -- This example prints the table in a list for DMX universe 1 (if it is granted).

--* Example 1
return function()

    -- This gets a table for universe 1 with the returned value in percent
    local tableDMXUniverse = GetDMXUniverse(1,true)
    
    -- Check the returned table and print information if nil
    if tableDMXUniverse == nil then
        Printf("No value is returned. The univers is not granted or input is out of range")
        return
    end

    -- Prints the table if not nil
    for addr, value in ipairs(tableDMXUniverse) do
        Printf("DMX Addr: %i - DMX value : %i", addr, value)
    end
    
end