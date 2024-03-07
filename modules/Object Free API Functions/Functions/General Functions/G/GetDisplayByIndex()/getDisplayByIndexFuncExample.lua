--* GetDisplayByIndex() Function - Example

--* About
    -- This example prints the data connected to the handle.
        -- It uses the Dump() function.

--* Example 1
return function()

    -- Get the index number for "Display 1"
    local displayIndex = GetDisplayCollect()["Display 1"].INDEX

    -- Return an error text if the return should be nil
    if displayIndex == nil then
        ErrPrintf('Something went wrong. It appears that there is no "display 1"')
        return
    end

    -- Dump all information about the display with the index number
    Printf("=============== START OF DUMP ===============")
    GetDisplayByIndex(displayIndex):Dump()
    Printf("================ END OF DUMP ================")
    
end