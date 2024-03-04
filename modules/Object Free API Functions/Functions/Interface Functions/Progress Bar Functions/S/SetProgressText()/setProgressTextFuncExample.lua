--* SetProgressText() Function - Example

--* About
    -- This example sets a text string for the progress bar created using the StartProgress example.

--* Example 1
return function()
    -- Sets the text next to progress title text
    SetProgressText(progressHandle, "- This is text next to the progress title")
end