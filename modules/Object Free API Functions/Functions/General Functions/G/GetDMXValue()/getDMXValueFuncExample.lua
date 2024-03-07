--* GetDMXValue() Function - Example

--* About
    -- This example prints the value for DMX address 1 in Universe 4.

--* Example 1
return function()

    -- This prints the value of DMX address 1 in universe 4 in a range of 0 to 255

    -- The DMX universe
    local universe = 4

    -- The DMX address
    local address = 1

    -- Readout in percent or DMX value
    local percent = false

    local value = GetDMXValue(address, universe, percent)

    Printf("DMX address %i.%03d is %03d", universe, address, value)
    
end