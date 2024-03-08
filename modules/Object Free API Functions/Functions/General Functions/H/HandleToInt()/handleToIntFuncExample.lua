--* HandleToInt() Function - Example

--* About
    -- This example prints the handle integer number for the selected sequence.
    -- It also converts the integer back to a handle and uses this to print the name of the sequence.

--* Example 1
local function main()

    -- Store the handle of the selected sequence
    local mySequence = SelectedSequence()

    -- Store an integer with the handle converted to integer
    local mySeqInt = HandleToInt(mySequence)
 
    Printf("The handle for the selected sequence (integer): " .. mySeqInt)

    Printf("The name of the selected sequence is: " .. IntToHandle(mySeqInt).name)

end

return main