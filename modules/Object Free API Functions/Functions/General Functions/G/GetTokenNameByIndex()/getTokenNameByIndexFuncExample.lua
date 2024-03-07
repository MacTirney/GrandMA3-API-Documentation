--* GetTokenNameByIndex() Function - Example

--* About
    -- If the keyword exists, this example returns the keywords matching the first 443 index numbers.

--* Example 1
return function()

    -- Create a variable to hold the keyword string
    local tokenName = ""

    -- Print the keywords to the first 443 indexes if possible
    for index = 1, 443, 1 do
        
        tokenName = GetTokenNameByIndex(index)

        if tokenName ~= nil then
            Printf("Token index " .. index .. " = " .. tokenName)
        end

    end

end