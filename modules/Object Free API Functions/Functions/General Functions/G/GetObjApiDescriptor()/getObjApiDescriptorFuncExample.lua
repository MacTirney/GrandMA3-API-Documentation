--* GetObjApiDescriptor() Function - Example

--* About
    -- This example prints the content of the returned table.

--* Example 1
return function ()

    -- This returns information about all the Lua "object" functions.
    -- GetObjApiDescriptor() returns a table with all the functions.

    -- Each table element is another table with the name, argument description, and return description.
      for key,value in ipairs(GetObjApiDescriptor()) do

        if value[1] ~= nil then
          Printf("Api " .. key .. " is: " .. value[1])
        end

        if value[2] ~= nil then
          Printf("Arguments: " .. value[2])
        end

        if value[3] ~= nil then
          Printf("Returns: " .. value[3])
        end

        Printf("---------------------------------------")

        end
        
  end