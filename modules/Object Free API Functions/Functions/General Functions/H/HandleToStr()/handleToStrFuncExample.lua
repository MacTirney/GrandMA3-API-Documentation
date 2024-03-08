--* HandleToStr() Function - Example

--* About
    -- This example prints the handle hex number for the selected sequence.
    -- It also converts the string back to a handle and uses this to print the name of the sequence.

--* Example 1
local function main()

    -- Store the handle of the selected sequence
    local mySequence = SelectedSequence()

    -- Store a string with the handle converted to hex
    local mySeqStr = HandleToStr(mySequence)
    
    Printf("The handle for the selected sequence (string): " .. mySeqStr)
    
    Printf("The name of the selected sequence is: " .. StrToHandle(mySeqStr).name)
    
end

return main