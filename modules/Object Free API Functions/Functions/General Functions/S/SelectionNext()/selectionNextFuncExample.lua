--* SelectionNext() Function - Example

--* About
    -- This example prints the patch index number and grid positions of all the fixtures in the current selection.

--* Example 1
local function main()

    -- Store the return in a local variable
    local fixtureIndex, gridX, gridY, gridZ = SelectionFirst()

    -- Cancel the plugin if no fixture is selected
    assert(fixtureIndex,"Please select a (range of) fixture(s) and try again.")
    
    -- Loop that prints the index and gridpositions of all the fixtures in the selection
    while fixtureIndex do
        Printf('The fixture has index number: %i and gridposition %i / %i / %i',
          fixtureIndex, gridX, gridY, gridZ);
        
        -- Here is SelectionNext actually used to find the next fixture in the selection
        fixtureIndex, gridX, gridY, gridZ = SelectionNext(fixtureIndex)
    end
    
end

return main