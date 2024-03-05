--* BuildDetails() Function - Example

--* About
    -- This example prints the content of the BuildDetails table.

--* Example 1
local function main()
    local myBuild = BuildDetails()
    
    -- GitDate: String with the date for the repository branch of the software.
    Printf("GitDate: " .. myBuild.GitDate)

    -- GitHead: String with the branch of the repository.
    Printf("GitHead: " .. myBuild.GitHead)

    -- GitHash: String with the hash for the repository.
    Printf("GitHash: " .. myBuild.GitHash)

    -- CompileDate: String with the date for the compile.
    Printf("CompileDate: " .. myBuild.CompileDate)

    -- CompileTime: String with the time for the compile.
    Printf("CompileTime: " .. myBuild.CompileTime)

    -- BigVersion: String indicating the software version.
    Printf("BigVersion: " .. myBuild.BigVersion)

    -- SmallVersion: String with the small version number of the software.
    Printf("SmallVersion: " .. myBuild.SmallVersion)

    -- HostType: String with the host type, for instance, "Console" or "onPC".
    Printf("HostType: " .. myBuild.HostType)

    -- HostSubType: String with the host sub-type, for instance, "FullSize" or "Light".
    Printf("HostSubType: " .. myBuild.HostSubType)

    -- CodeType: String showing the type of code, for instance, "Release".
    Printf("CodeType: " .. myBuild.CodeType)

    -- IsRelease: Boolean indicating if the software is a release version.
    Printf("IsRelease: " .. tostring(myBuild.IsRelease))
    
end

return main