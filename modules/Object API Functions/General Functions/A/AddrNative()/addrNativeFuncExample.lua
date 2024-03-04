--* AddrNative() Function - Example

--* About
    -- The following example prints the address of the first sequence.

--* Example 1
local function main()
    -- Stores the handle to the first sequence
    local mySequence = DataPool().Sequences[1]
    Printf("The full address is: " .. mySequence:AddrNative())
    -- Stores a handle to the default DataPool.
    local myDataPool = DataPool()
    Printf("The address in the datapool is: " .. mySequence:AddrNative(myDataPool))
    Printf("The address in the datapool with quotes around the names is: " .. mySequence:AddrNative(myDataPool, true))
end

return main