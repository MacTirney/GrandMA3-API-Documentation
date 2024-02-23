--* ToAddr() Function - Example

--* About
    -- The following two examples return the address of the first sequence of the selected data pool and create a grandMA3 command with a "Go" keyword in front of the address. 
        -- This command is sent to the grandMA3 command line.

--* Tip
    -- Uncomment 'return main' lines when you are executing the examples.

--* Example 1 - Uses the Colon Operator
local function main()
    -- Stores the handle in a variable.
    local mySequence = DataPool().Sequences[1]
    -- Converts the handle to the address and store in variable.
    local mySequenceAddress = mySequence:ToAddr()
    -- Send a go command with the address appended.
    Cmd("Go %s", mySequenceAddress)
end

-- return main

--* Example 2 - Uses an Argument
local function main()
    local mySequence = DataPool().Sequences[1]
    local mySequenceAddress = ToAddr(mySequence)
    Cmd("Go %s", mySequenceAddress)
end

-- return main