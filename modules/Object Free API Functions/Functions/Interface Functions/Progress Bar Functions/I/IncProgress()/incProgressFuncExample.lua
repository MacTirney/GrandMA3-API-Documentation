--* IncProgress() Function - Example

--* About
    -- These two examples increase and decrease the range value for the progress bar created using the StartProgress example.

--* Tip
    -- In order to run Example 2, remove the all of the comments from lines 16-19, except line 17.
        -- Line 17 needs to stay commented out.

--* Example 1 - Increase the Range Value
return function()
    -- Increase the current value for a progress bar with the matching handle
    IncProgress(progressHandle, 1)
end

--* Example 2 - Decrease the Range Value
-- return function()
    -- Decrease the current value for a progress bar with the matching handle
    -- IncProgress(progressHandle, -1)
-- end