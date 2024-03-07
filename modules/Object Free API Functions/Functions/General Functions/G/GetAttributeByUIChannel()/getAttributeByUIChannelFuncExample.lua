--* GetAttributeByUIChannel() Function - Example

--* About
    -- This example prints the "native" address to the first attribute of the first fixture in the current selection.

--* Example 1
return function()

    -- Get a handle to the first fixture in the current selection
    local fixtureIndex = SelectionFirst()

    -- Get the UI Channel Index number for the first attribute for the fixture
    local channelIndex = GetUIChannelIndex(fixtureIndex,0)

    -- Print the native address for the attribute with the handle
    Printf("The native addr for the attribute is: %s",GetAttributeByUIChannel(channelIndex):AddrNative())
    
end