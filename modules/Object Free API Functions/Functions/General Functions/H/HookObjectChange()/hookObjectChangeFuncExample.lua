--* HookObjectChange() Function - Example

--* About
    -- To call a function every time the content of the sequence pool changes, create a plugin with this code.

--* Example 1

local pluginName     = select(1,...);
local componentName  = select(2,...); 
local signalTable    = select(3,...);
local my_handle      = select(4,...);

local function main()

    local hookObject = DataPool().Sequences;

    local pluginHandle = my_handle:Parent();

    local callbackFunction = function(obj)
        Printf(tostring(obj.name).." changed!")
    end
    
    HookObjectChange(callbackFunction, hookObject, pluginHandle)

end

return main