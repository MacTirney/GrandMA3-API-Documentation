--* SetProgressRange() Function - Example

--* About
    -- This example sets a range for the progress bar created using the StartProgress example.

--* Example 1
return function()
    -- Sets the range of a progress bar with the matching handle
    SetProgressRange(progressHandle, 1, 10)
end