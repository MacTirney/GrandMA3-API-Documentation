--* SetProgress() Function - Example

--* About
    -- This example sets a range value for the progress bar created using the StartProgress example.

--* Example 1
return function()
    -- Sets the current value to 5 for a progress bar with the matching handle
    SetProgress(progressHandle, 5)
end