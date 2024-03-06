--* FromAddr() Function - Example

--* About
    -- This example prints the address of the first sequence.

--* Example 1
local function main()

    -- Converts the string to a handle and store in a variabel.
    local mySequenceHandle = FromAddr("13.13.1.5.1")
    
    -- Converts the handle back to a numbered string and prints it.
    Printf("The address is: " ..mySequenceHandle:Addr())
    
    -- Converts the handle to a named string and prints it.
    Printf("The address is: " ..mySequenceHandle:AddrNative())
    
    -- Store the handle of the selected datapool.
    local myDataPool = DataPool()

    -- Prints the address of the selected datapool.
    Printf(myDataPool:Addr())
    
    -- The following example uses the name of a sequence in the sequence pool. 
        -- Please adjust the "Default" name in the next line to match an existing named sequence.
    
    -- Finds the address based on the base location and a text string with names.
    local alsoMySequenceHandle = FromAddr("Sequences.Default", myDataPool)

    -- Converts the handle back to a numbered string and prints it.
    Printf("The address is: " ..alsoMySequenceHandle:Addr())
    
    -- Converts the handle to a named string and prints it.
    Printf("The address is: " ..alsoMySequenceHandle:AddrNative())
    
end

return main