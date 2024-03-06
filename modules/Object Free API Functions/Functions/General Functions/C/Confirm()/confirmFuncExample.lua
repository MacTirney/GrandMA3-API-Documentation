--* Confirm() Function - Example

--* About
    -- This example creates a confirmation pop-up with printed feedback in the Command Line History.

--* Example 1
local function main()

    if Confirm("Confirm me", "Tap OK or Cancel", nil, true) then
        Printf("Pop-up result: OK")
    else
        Printf("Pop-up result: Cancel")
    end

end

return main