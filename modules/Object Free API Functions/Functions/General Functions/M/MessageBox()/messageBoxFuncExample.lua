--* MessageBox() Function - Example

--* About
    -- There are six different examples demonstrating different elements of the message box.
    -- The elements can be combined, but the examples highlight different functions.

--* Tip
    -- Uncomment 'return main' lines when you are executing the examples.

--* Example 1 - A simple message box pop-up that shows a single confirm button
local function main()

    -- This creates a small pop-up with a single button.
    local returnTable = MessageBox(
        {
            title = "Please confirm This",
            commands = {{value = 1, name = "Confirm"}}
        }
    )

    -- Print the content of the returned table.
    Printf("Success = "..tostring(returnTable.success))
    Printf("Result = "..returnTable.result)

end

-- return main

--* Example 2 - This example opens a pop-up with some text and two command buttons
local function main()

    -- A table with two default buttons for the pop-up
    local defaultCommandButtons = {
        {value = 2, name = "OK"},
        {value = 1, name = "Cancel"}
    }

    -- A table with the elements needed for the pop-up
    local messageTable = {
        icon = "object_smart",
        backColor = "Window.Plugins",
        title = "This is the title",
        message = "This is a message\nThat can have multiple lines",
        commands = defaultCommandButtons,
    }

    -- The creation on the actual pop-up with the result stored in a variable
    local returnTable = MessageBox(messageTable)

    -- Print the content of the returned table
    Printf("Success = "..tostring(returnTable.success))
    Printf("Result = "..returnTable.result)

end

-- return main

--* Example 3 - This example displays a message box for 3 seconds and then closes itself
local function main()

    -- This variable contains the table used as argument for the messagebox
    local messageTable = {
        title = "Do not worry",
        message = "This message will self destruct - Goodbye!",
        timeout = 3000,
        timeoutResultCancel = false,
        timeoutResultID = 99,
    }

    -- This creates the messagebox pop-up and store the return table in a variable
    local returnTable = MessageBox(messageTable)

    -- Print the content of the returned table
    Printf("Success = "..tostring(returnTable.success))
    Printf("Result = "..returnTable.result)

end

-- return main
    
--* Example 4
    --* This example adds state buttons to the message box. 
        --* The buttons are added to a table for a better overview.
local function main()

    -- A table with two default buttons for the pop-up
    local defaultCommandButtons = {
        {value = 2, name = "OK"},
        {value = 1, name = "Cancel"}
    }

    -- A table with three state buttons
    -- The buttons will be displayed alphabetically in the pop-up
    local stateButtons = {
        {name = "State B", state = false},
        {name = "State A", state = false},
        {name = "New State", state = false}
    }

    -- A table with the elements needed for the pop-up
    local messageTable = {
        icon = "object_smart",
        backColor = "Window.Plugins",
        title = "This is state buttons",
        message = 'Toggle the states and click "Ok"',
        commands = defaultCommandButtons,
        states = stateButtons,
    }

    -- The creation on the actual pop-up with the result stored in a variable
    local returnTable = MessageBox(messageTable)

    -- Print the content of the returned table
    Printf("Success = "..tostring(returnTable.success))
    Printf("Result = "..returnTable.result)

    -- Print a list with the state of the stateButtons
    for name,state in pairs(returnTable.states) do
        Printf("State '%s' = '%s'",name,tostring(state))
    end

end

-- return main

--* Example 5 - This example shows the input fields
local function main()

    -- A table with two default buttons for the pop-up
    local defaultCommandButtons = {
        {value = 2, name = "OK"},
        {value = 1, name = "Cancel"}
    }

    -- A table with three input fields
    -- The fields will be displayed alphabetically in the pop-up based on name
    local inputFields = {
        {name = "Numbers Only", value = "1234", whiteFilter = "0123456789", vkPlugin = "NumericInput"},
        {name = "Text Only", value = "abcdef", blackFilter = "0123456789"},
        {name = "Maximum 10 characters", value = "", maxTextLength = 10}
    }

    -- A table with the elements needed for the pop-up
    local messageTable = {
        icon = "object_smart",
        backColor = "Window.Plugins",
        title = "This is input fields",
        message = 'Change the values in the input fields and click "Ok"',
        commands = defaultCommandButtons,
        inputs = inputFields,
    }

    -- The creation on the actual pop-up with the result stored in a variable
    local returnTable = MessageBox(messageTable)

    -- Print the content of the returned table
    Printf("Success = "..tostring(returnTable.success))
    Printf("Result = "..returnTable.result)

    -- Print a list with the values of the input fields
    for name,value in pairs(returnTable.inputs) do
        Printf("Input '%s' = '%s'",name,tostring(value))
    end

end

-- return main

--* Example 5 Help
    -- Possible vkPlugin values
        -- - "TextInput" : same as default - standard on-screen keyboard
        -- - "TextInputNumOnly" : text input but only with number buttons
        -- - "TextInputNumOnlyRange" : text input but only with number and related range buttons
        -- - "TextInputTimeOnly" : text input styled for time input - includes buttons for time values
        -- - "NumericInput" : general number input
        -- - "CueNumberInput" : number input styled for cue number
        -- - "RelCueNumberInput" : number input with the relative "delta" button
        -- - "IP4Prefix" : designed for inputting an IPv4 address allowing CIDR notation

--* Example 6 - This example shows the different selector buttons
local function main()

    -- A table with two default buttons for the pop-up
    local defaultCommandButtons = {
        {value = 2, name = "OK"},
        {value = 1, name = "Cancel"}
    }

    -- A table with selector buttons
    -- The buttons will be displayed alphabetically in the pop-up based on name
    local selectorButtons = {
        { name="Swipe Selector", selectedValue=1, type=0, values={["Swipe1"]=1,["Swipe2"]=2}},
        { name="Radio Selector", selectedValue=2, type=1, values={["Radio1"]=1,["Radio2"]=2}},
        { name="Another Radio", selectedValue=3, type=1, values={["Radio3"]=3,["Radio4"]=4}}
    }

    -- State button to show grouping with swipe Selector button
    local stateButton = {
        {name = "State Button", state = false},
    }

    -- A table with the elements needed for the pop-up
    local messageTable = {
        icon = "object_smart",
        backColor = "Window.Plugins",
        title = "This is input fields",
        message = 'Change the values in the input fields and click "Ok"',
        commands = defaultCommandButtons,
        states = stateButton,
        selectors = selectorButtons,
    }

    -- The creation on the actual pop-up with the result stored in a variable
    local returnTable = MessageBox(messageTable)

    -- Print the content of the returned table
    Printf("Success = "..tostring(returnTable.success))
    Printf("Result = "..returnTable.result)

    -- Print a list with the values of the selection buttons
    for name,value in pairs(returnTable.selectors) do
        Printf("Input '%s' = '%s'",name,tostring(value))
    end

    -- Print a list with the state of the stateButton
    for name,state in pairs(returnTable.states) do
        Printf("State '%s' = '%s'",name,tostring(state))
    end
    
end

-- return main