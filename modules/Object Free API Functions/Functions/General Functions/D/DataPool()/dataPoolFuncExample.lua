--* DataPool() Function - Example

--* About
    -- This example uses the Dump function on the data pool object. 

--* Example 1
local function main()
    
    -- Dump lists all the properties and lists the children
    DataPool():Dump()

    -- Print the name of the first sequence in the data pool
    Printf("Name of sequence 1: " .. DataPool().Sequences[1].Name)
    
end

return main