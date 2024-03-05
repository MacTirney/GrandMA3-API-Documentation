--* CmdIndirectWait() Function - Example

--* About
    -- This example prints "1" and "2" in the Command Line History and lets the main task open the Configure Display pop-up on screen 2.

--* Example 1
local function main()

    Printf("1")

    CmdIndirectWait("Menu DisplayConfig", nil, GetDisplayByIndex(2))
    
    Printf("2")

end

return main