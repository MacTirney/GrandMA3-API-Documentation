--* GetChannelFunctionIndex() Function - Example

--* About
    -- This example prints the indexes based on the fixture selection and the "Dimmer" attribute.

--* Example 1
return function()

    -- Get the Attribute index and UIChannel index
    local attributeIndex = GetAttributeIndex("Dimmer")
    local uiChannelIndex = GetUIChannelIndex(SelectionFirst(),attributeIndex)

    -- End the function if any of the index return nil
    if (attributeIndex == nil or uiChannelIndex == nil) then
        ErrPrintf("Something wrong happened, maybe your first selected fixture don't have a Dimmer - Please try again")
        return
    end

    -- Get the Channel Function Index and store it in a variable
    local channelFunctionIndex = GetChannelFunctionIndex(uiChannelIndex,attributeIndex)
    Printf("The UIChannel Index is: %i. The Attribute Index is: %i. The Channel Function Index is: %i", uiChannelIndex, attributeIndex, channelFunctionIndex)
    
end