--* Import() Function - Example

--* About
    -- To import the table "mySettings.xml", create a plugin with this code.

--* Example 1
local function main()

    local mySettings = {
        count = 10,
        indices = {1, 2, 3, 4},
        names = "SomeString"
    }

    local importPath = GetPath(Enums.PathType.Library) .. "/mySettings.xml"

    local importedTable = Import(importPath)

    Printf("Imported table from " .. importPath)
    Printf("Imported count = " .. importedTable.count)
    Printf("Imported names = " .. importedTable.names)

    for index in pairs(importedTable.indices) do
        Printf("Index = " .. index)  
    end
    
end

return main