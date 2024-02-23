--* HasActivePlaybook() Function - Example

--* About
    -- Returns the information if the selected sequence has an active playback.

--* Example 1
local function main()
    -- Stores the handle of the selected sequence.
    local selectedSequence = SelectedSequence()
    -- The following is a conditional statement that gives different feedback based on the playback status.
    if selectedSequence:HasActivePlayback() then
        Printf("Sequence '" ..selectedSequence.name.. "' has active playback.")
    else
        Printf("Sequence '" ..selectedSequence.name.. "' has NO active playback.")
    end
end

return main