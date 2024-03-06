--* DrawPointer() Function - Example

--* About
    -- This example draws a pointer on display 1 for 5 seconds.

--* Example 1
return function()

    --Set a display index
    local displayIndex = 1

    --Create and set the position in a table
    local position = {}

    position.x = 150

    position.y = 25

    --Set a 5 seconds duration - in milliseconds
    local duration = 5000

    --Draw the actual pointer
    DrawPointer(displayIndex,position,duration)
    
end