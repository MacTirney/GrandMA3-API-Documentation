--* GetPath() Function - Example

--* About
    -- This example prints the paths of the show folder on the system monitor twice.
        -- It demonstrates the two different input types.

--* Example 1
local function main()

    Printf("Path of show files (string) is: " .. GetPath("shows", true))
    
    Printf("Path of show files (integer) is: " .. GetPath(Enums.PathType.Showfiles))
    
end

return main