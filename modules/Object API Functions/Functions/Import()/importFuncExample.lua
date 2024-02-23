--* Import() Function - Example

--* About
    -- The following examples import the content of the XML file into the selected sequence. 
        -- The file is called "MySelectedSequence", and it is located at "../gma3_library/datapools/sequences".

--* Tip
    -- Uncomment 'return main' lines when you are executing the examples.

--* Example 1 - Uses the Colon Operator
local function main()
    -- SelectedSequence() creates a handle to the selected sequence.
    local selectedSequence = SelectedSequence()
    -- The path is stored in a variable
    local path = GetPath(Enums.PathType.UserSequences)
    -- The actual import function
    selectedSequence:Import(path, "mySelectedSequence.xml")
    -- Print some feedback.
    Printf("The sequence is imported from: " .. path)
end

-- return main

--* Example 2 - Uses an Argument
local function main()
    local selectedSequence = SelectedSequence()
    local path = GetPath(Enums.PathType.UserSequences)
    selectedSequence.Import(selectedSequence, path, "mySelectedSequence.xml")                                     
    Printf("The sequence is imported from: " .. path)
end

-- return main