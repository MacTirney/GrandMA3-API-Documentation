--* IsObjectValid() Function - Example

--* About
    -- This example below examines if "Root()" is a valid object and prints meaningful feedback.

--* Example 1
return function()
    
    --Create a variable with the possible object
    local myObject = Root()

    --Check if it is an object
    local myReturn = IsObjectValid(myObject)

    --Print the result
    if myReturn == nil then
        ErrPrintf("It is not a valid object")
    else
        Printf("It is an object")
    end
    
end