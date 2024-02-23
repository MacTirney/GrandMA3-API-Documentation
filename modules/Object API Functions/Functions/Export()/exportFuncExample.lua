--* Export() Function - Example

--* About
    -- The following two examples both export the selected sequence into an XML file. 

--* Tip
    -- Uncomment 'return main' lines when you are executing the examples.

--* Example 1 - Uses the Colon Operator
local function main()
    -- SelectedSequence() creates a handle to the selected sequence.
    local selectedSequence = SelectedSequence()
    -- The path is stored in a variable.
    local exportPath = GetPath(Enums.PathType.UserSequences)
    -- The actual export function.  
    selectedSequence:Export(exportPath, "mySelectedSequence.xml")                                                         
    Printf("The sequence is exported to: " .. exportPath)
end

-- return main


--* Example 2 - Uses an Argument
local function main()
    local selectedSequence = SelectedSequence()
    local exportPath = GetPath(Enums.PathType.UserSequences)
    selectedSequence.Export(selectedSequence, exportPath, "mySelectedSequence2.xml")
    Printf("The sequence is exported to: " .. exportPath)
end

-- return main