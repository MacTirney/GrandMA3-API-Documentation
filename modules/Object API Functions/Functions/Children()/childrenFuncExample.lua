--* Children() Function - Example

--* About
    -- This example returns the name of the cues in the first sequence of the selected data pool.

--* Example 1
local function main()
    -- Stores the handle for sequence 1 in a variable.
    local mySequence = DataPool().Sequences[1]
    -- Use the "Children()" funciton to store a table with all the children in a new variable.
    local cues = mySequence:Children()
    -- For loop that uses the length operator on the cue variable.
    for i = 1, #cues do
        -- Text is printed for each child.
        Printf("Sequence 1 Child " .. i .. " = " .. cues[i].name)
    end
end

return main