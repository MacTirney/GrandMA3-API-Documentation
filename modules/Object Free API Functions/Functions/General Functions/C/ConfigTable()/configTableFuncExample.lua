--* ConfigTable() Function - Example

--* About
    -- This example prints the content of the returned table.

--* Example 1
return function ()

    -- Prints the content of the ConfigTable
    for key,value in pairs(ConfigTable()) do
        Printf(key .. " : " .. value)
    end
    
end