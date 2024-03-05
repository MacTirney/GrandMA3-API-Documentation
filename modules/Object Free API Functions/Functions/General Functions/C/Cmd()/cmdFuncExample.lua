--* Cmd() Function - Example

--* About
    -- This example executes the two commands "ClearAll" and "Fixture Thru At 0" in the command line.

--* Example 1
local function main()

    Cmd("ClearAll")

    local CmdFeedback = Cmd("Fixture Thru At 0")
    
    Printf(CmdFeedback)
end

return main