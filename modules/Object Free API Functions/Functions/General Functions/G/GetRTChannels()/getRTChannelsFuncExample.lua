--* GetRTChannels() Function - Example

--* About
    -- The first example prints a list of RT Channel indexes for the first fixture in the selection.
    -- The second example prints a list of RT Channel indexes and attributes for the first fixture in the selection.

--* Tip
    -- Uncomment 'return main' lines when you are executing the examples.

--* Example 1 - Index number as input
local function main()

    -- Get the index number for the first fixture in the current selection
    local fixtureIndex = SelectionFirst()

    -- Get the indexes of the RT channels
    local rtChannels = GetRTChannels(fixtureIndex, false)

    -- Print an error message if returnd table is nil
    if rtChannels == nil then
        ErrPrintf("Please select a fixture and try again")
        return
    end

    -- Print the table content
    for key,value in ipairs(rtChannels) do
        Printf("List index number ".. key .." : RTChannel index number = ".. value)
    end

end

-- return main

--* Example 2 - Handle as the input
local function main()

    -- Get a handle to the first fixture in the current selection
    local fixtureHandle = GetSubfixture(SelectionFirst())

    if fixtureHandle == nil then
        ErrPrintf("Please select a fixture and try again")
        return
    end

    -- Creates a table of handles to the RT channels of the first selected fixture.
    local rtChannels = GetRTChannels(fixtureHandle, true)

    if rtChannels == nil then
        ErrPrintf("Please select a fixture and try again")
        return
    end

    -- Print DMX addresses of the RT Channels for the fixture
    for key,value in ipairs(rtChannels) do
        Printf("List index number ".. key .. " : RTChannel Index = %i, Coarse DMX addr. = %s, Fine DMX addr. = %s", value.INDEX, value.COARSE, value.FINE)
    end

end

-- return main