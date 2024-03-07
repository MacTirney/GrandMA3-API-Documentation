--* GetUIChannels() Function - Example

--* About
    -- The first example prints a list of UI Channel indexes for the first fixture in the selection.
    -- The second example prints a list of UI Channel indexes and attributes for the first fixture in the selection

--* Tip
    -- Uncomment 'return main' lines when you are executing the examples.

--* Example 1 - Index number as input
local function main()

    -- Creates a table of indexes of the UI channels of the first selected fixture.
    local uiChannels = GetUIChannels(SelectionFirst())

    if uiChannels == nil then
        ErrPrintf("Please select a fixture and try again")
        return
    end

    for key,value in pairs(uiChannels) do
        Printf(key .. " :  UIChannel Index = " .. value)
    end

end

-- return main

--* Example 2 - Handle as the input
local function main()

    local fixtureHandle = GetSubfixture(SelectionFirst())

    -- Creates a table of handles to the UI channels of the first selected fixture.
    local uiChannels = GetUIChannels(fixtureHandle, true)

    if uiChannels == nil then
        ErrPrintf("Please select a fixture and try again")
        return
    end

    for key,value in pairs(uiChannels) do
        Printf(key .. ": UIChannel Index = %i, (Sub)Attribute = %s", value.INDEX-1, value.SUBATTRIBUTE)
    end

end

--return main