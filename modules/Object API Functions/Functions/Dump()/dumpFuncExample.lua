--* Dump() Function - Example

--* About
    -- The following examples all print information about the selected sequence in the Command Line History.

--* Tip
    -- Uncomment 'return main' lines when you are executing the examples.

--* Example 1 - Uses the Colon Operator
local function main()
    -- Dump() is called on a function
    SelectedSequence():Dump()
end

-- return main

--* Example 2 - Uses an argument
local function main()
    -- Dump() is called with function as an argument
    SelectedSequence().Dump(SelectedSequence())
end

-- return main

--* Example 3 - Uses a variable
local function main()
    -- Stores the handle for the selected sequence in a local variable 
    local mySeqHandle = SelectedSequence()
    -- Dump() is called on the variable
    mySeqHandle:Dump()
end

-- return main
