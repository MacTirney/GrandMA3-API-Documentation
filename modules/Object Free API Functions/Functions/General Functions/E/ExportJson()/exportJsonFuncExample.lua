--* ExportJson() Function - Example

--* About
    -- To export the build details table, create a plugin with this code.

--* Example 1
local function main()
    -- BuildDetails() creates a table with information about the software build.
    local build = BuildDetails()
    
    -- The path and filename is stored in a variable.
    local exportPath = GetPath(Enums.PathType.Library) .. "/BuildDetails.json"
    
    -- The actual export function.
    ExportJson(exportPath, build)
    
    -- Print some feedback.
    Printf("The build details is exported to: " .. exportPath)
end

return main