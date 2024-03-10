--* TextInput() Function - Example

--* About
    -- To open a text input and print the entered value in the Command Line History, create a plugin with this code.

--* Example 1
local function main()

    local input = TextInput(" This is the title","Please provide your input here")

    Printf("You entered this message: %s",tostring(input))
    
end

return main