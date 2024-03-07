--* GetExecutor() Function - Example

--* About
    -- This example stores the handles for executor number 201.
    -- It then dumps the data for the two handles.

--* Example 1
return function ()

    -- This saves the handles for executor 201 on the selected page
    local executorHandle, pageHandle = GetExecutor(201)

    -- The following prints the dumos of the two handles
    Printf("This is the dump of the executor:")

    Printf("------------DUMP START------------")
    executorHandle:Dump()
    Printf("---------------END----------------")

    Printf("This is the dump of the page:")
    
    Printf("------------DUMP START------------")
    pageHandle:Dump()
    Printf("---------------END----------------")

end