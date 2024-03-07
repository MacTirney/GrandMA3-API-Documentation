--* GetAttributeIndex() Function - Example

--* About
    -- This example prints the index number of the attribute in Command Line History if it exists.

--* Example 1
return function()

    -- Store the returned index or nil of "Gobo1"
    local attributeIndex = GetAttributeIndex("Gobo1")

    -- Check if the returned value is not nil and print a useful feedback
    if attributeIndex~=nil then
        Printf("Attribute is index number %i", attributeIndex)
    else
        Printf("The attribute is not found")
    end
    
end