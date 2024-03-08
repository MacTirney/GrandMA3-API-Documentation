--* ObjectList() Function - Example

--* About
    -- To create a list of fixtures 1 to 10 and output the name of the first fixture of this list, create a plugin with this code.

--* Example 1
local function main()

    local myObjects = ObjectList("Fixture 1 Thru 10")

    Printf("Name of Fixture 1 = " .. myObjects[1].name)

end

return main