--* SetBlockInput() Function - Example

--* About
    -- This example blocks mouse and keyboard input for 10 seconds.

--* Example 1
return function()
    
    -- Set a variable for yield time in seconds
    yieldTime = 10

    -- Set the block to true
    SetBlockInput(true)

    -- Wait the [yieldtime]
    coroutine.yield(yieldTime)

    -- Unblock the station
    SetBlockInput(false)

end