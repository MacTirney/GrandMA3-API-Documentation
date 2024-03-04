--* StartProgress() Function - Example

--* About
    -- This creates and displays a progress bar on all screens. 
        -- The progress bar does not disappear using this example.
        -- Use the StopProgress example remove the progres bar.

--* Important
    -- Running this example multiple times creates new progress bars that cannot be removed. 
    -- So only run this once, and then remove it again using the StopProgress example.

--* Example 1
return function ()
    -- Create and display a progress bar with a title
    progressHandle = StartProgress("ProgressBar Title")
end