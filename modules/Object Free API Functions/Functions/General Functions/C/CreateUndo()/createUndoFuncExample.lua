--* CreateUndo() Function - Example

--* About
    -- This example creates an undo list, performs a series of commands being added to the undo list, and closes the undo list. 
        -- Now the series of commands can be 'oopsed' with one 'oops' command.

--* Example 1
local function main()

    -- Creation of the undo group.
    local MyNewUndo = CreateUndo("MySelection")

    -- Perform a series of commands
    Cmd("ClearAll", MyNewUndo)
    Cmd("Fixture 1", MyNewUndo)
    Cmd("Fixture 2", MyNewUndo)
    Cmd("Fixture 5", MyNewUndo)
    Cmd("Fixture 7", MyNewUndo)

    -- Closing the undo group and store it's return in a variable.
    local closeSuccess = CloseUndo(MyNewUndo)

    -- Print the feedback from the closing action - 1 = Success / 0 = Failure.
    Printf(closeSuccess)

end

return main