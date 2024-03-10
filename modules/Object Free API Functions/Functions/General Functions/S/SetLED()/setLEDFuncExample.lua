--* SetLED() Function - Example

--* About
    -- This example sets the LEDs on encoder 1 to green on a full-size console.

--* Example 1
return function()

    -- Create the LED table
    local myLedTable = {}

    -- Fill the table with default "release" value
    for index=1,256 do
        myLedTable[index] = -1;
    end

    -- Set values in the table

    -- Encoder_inside1 = green
    myLedTable[7] = 0
    myLedTable[10] = 255
    myLedTable[22] = 0

    -- Encoder_outside1 = green
    myLedTable[8] = 0
    myLedTable[11] = 255
    myLedTable[23] = 0

    -- Get the handle for the MasterModule on a console
    local usbDeviceHandle = Root().UsbNotifier.MA3Modules["UsbDeviceMA3 11"]

    -- Set the values for the LEDs
    SetLED(usbDeviceHandle, myLedTable)
    
end