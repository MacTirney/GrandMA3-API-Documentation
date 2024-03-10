--* SelectionFirst() Function - Example

--* About
    -- This example prints the returned numbers, of the first fixture in the selection, to the Command Line History.

--* Example 1
local function main()

    -- Store the return in a local variable
    local fixtureIndex, gridX, gridY, gridZ = SelectionFirst();
    
    ---- Uncomment the following lines to print the types of the return
    Printf("Index type is: "..type(fixtureIndex));
    Printf("gridX type is: "..type(gridX));
    Printf("gridY type is: "..type(gridY));
    Printf("gridZ type is: "..type(gridZ));

    -- Cancel the plugin if no fixture is selected
    assert(fixtureIndex,"Please select a fixture and try again.");
    
    -- Print the index number of teh first fixture in teh selection
    Printf("First selected fixture has index number: "..fixtureIndex
        .." and gridX value: "..gridX
        .." and gridY value: "..gridY
        .." and gridZ value: "..gridZ);
end

return main