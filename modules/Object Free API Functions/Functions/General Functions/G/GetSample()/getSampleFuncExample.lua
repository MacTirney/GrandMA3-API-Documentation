--* GetSample() Function - Example

--* About
    -- This example stores the different samples in a table and then prints the content of the table.

--* Example 1
return function()

    -- Gather the sample information in a table
    local sample = {}
    sample["MEMORY"] = GetSample("MEMORY")
    sample["CPU"] = GetSample("CPU")
    sample["CPUTEMP"] = GetSample("CPUTEMP")
    sample["GPUTEMP"] = GetSample("GPUTEMP")
    sample["SYSTEMP"] = GetSample("SYSTEMP")
    sample["FANRPM"] = GetSample("FANRPM")

    -- Print the collected data
    Printf("Memory ; ".. sample["MEMORY"])
    Printf("CPU ; ".. sample["CPU"])
    Printf("CPU temperature ; ".. sample["CPUTEMP"])
    Printf("GPU temperature ; ".. sample["GPUTEMP"])
    Printf("System temperature ; ".. sample["SYSTEMP"])
    Printf("Fan RPM ; ".. sample["FANRPM"])
    
end