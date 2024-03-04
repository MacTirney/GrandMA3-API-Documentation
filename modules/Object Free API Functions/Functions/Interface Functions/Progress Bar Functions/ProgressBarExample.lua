--* Progress Bar - Example

--* About
    -- This example uses all the progress bar functions:

--* Example 1
return function()
    -- Create the progress bar
    local progressBarHandle = StartProgress("myProgressTitle")

    -- Set start index and end index of the progress bar
    local progressRangeStart, progressRangeEnd = 1, 10

    -- Define the range of the progress bar
    SetProgressRange(progressBarHandle, progressRangeStart, progressRangeEnd)

    -- Define the text of the progress bar
    SetProgressText(progressBarHandle, "This is my ProgressBar Text")

    -- Set the progress bar value to the start of range
    SetProgress(progressBarHandle, progressRangeStart)

    -- Loop that goes through the progress bar
    for i = progressRangeStart, progressRangeEnd do

        -- Add a yield to allow other functions and delay the progress
        coroutine.yield(1)

        -- Increment the progress state of the progress bar
        IncProgress(progressBarHandle, 1)
        
    end

    -- remove the progress bar:
    StopProgress(progressBarHandle)

end