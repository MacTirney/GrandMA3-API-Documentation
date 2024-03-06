--* DefaultDisplayPositions() Function - Example

--* About
    -- The first example prints all the information about display 1 (child 1 of the default displays) using the Dump function.
    -- The second example toggles the Control Bar for display 1 with the help of the DefaultDisplayPositions object.

--* Tip
    -- Uncomment 'return main' lines when you are executing the examples.

--* Example 1 - Dump Function
local function main()
    DefaultDisplayPositions():Children()[1]:Dump()
end

-- return main

--* Example 2 - Control Bar Toggle
local function main()
    local display1 = DefaultDisplayPositions():Children()[1]
    display1.ShowMainMenu = not display1.ShowMainMenu;
end

-- return main