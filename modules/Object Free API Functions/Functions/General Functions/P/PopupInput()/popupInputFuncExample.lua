--* PopupInput() Function - Example

--* About
    -- To open a popup input and print the selected result in the command line history, create a plugin with this code.

--* Example 1
local function main(displayHandle)

    local descTable = {
        title = "Demo",
        caller = displayHandle,
        items = {"Select","Some","Value","Please"},
        selectedValue = "Some",
        add_args = {FilterSupport="Yes"},
    }

    local a,b = PopupInput(descTable)

    Printf("a = %s",tostring(a))

    Printf("b = %s",tostring(b))
    
end

return main