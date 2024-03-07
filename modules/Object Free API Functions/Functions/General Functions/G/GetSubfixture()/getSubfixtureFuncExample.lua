--* GetSubfixture() Function - Example

--* About
    -- This example uses a fixture selection to print all the information (in the Command Line History) about the first fixture in the selection using the Dump() function.

--* Example 1
return function ()

    -- Check for a fixture selection, by returning an index for the first fixture
    if (SelectionFirst()) then

        -- There is a fixture selection, store the index for the first fixture
        local fixtureIndex = SelectionFirst()

        -- Dump all information about the fixture
        GetSubfixture(fixtureIndex):Dump()

    else

        -- There needs to be a selection of at least one fixture
        Printf('Please select a fixture')
        
    end

end