--* GetRTChannel() Function - Example

--* About
    -- This example prints all information related to the first RT Channel for the first fixture in the selection.

--* Example 1
return function()

    -- Get the index number for the first RT Channel for the first fixture in the current selection
    local channelRTIndex = GetRTChannels(SelectionFirst())[1]

    -- Print an error message if returnd index is nil
    if channelRTIndex == nil then
        ErrPrintf("Please select a fixture and try again")
        return
    end

    -- Print all information about the RT Channel
    local rtChannel = GetRTChannel(channelRTIndex)
    Printf("================= RT CHANNEL =================")
    Printf("ui_index_first = " .. rtChannel["ui_index_first"])
    Printf("dmx_lowlight = " .. rtChannel["dmx_lowlight"])
    Printf("dmx_highlight = " .. rtChannel["dmx_highlight"])
    Printf("dmx_default = " .. rtChannel["dmx_default"])
    Printf("freq = " .. rtChannel["freq"])
    Printf("rt_index = " .. rtChannel["rt_index"])
    Printf("========== RELATED DMX CHANNEL DUMP ==========")
    rtChannel["dmx_channel"]:Dump() -- Handle for relevant DMX channel
    Printf("============ RELATED FIXTURE DUMP ============")
    rtChannel["fixture"]:Dump() -- Handle for relevant fixture
    Printf("========== RELATED SUBFIXTURE DUMP ===========")
    rtChannel["subfixture"]:Dump() -- Handle for relevant subfixture
    Printf("=================== INFO =====================")
    Printf("normed_phaser_time = " .. rtChannel["info"]["normed_phaser_time"])
    Printf("================ INFO FLAGS ==================")
    Printf("group_master = " .. rtChannel["info"]["flags"]["group_master"])
    Printf("additive_master = " .. rtChannel["info"]["flags"]["additive_master"])
    Printf("solo = " .. rtChannel["info"]["flags"]["solo"])
    Printf("highlight = " .. rtChannel["info"]["flags"]["highlight"])
    Printf("lowlight = " .. rtChannel["info"]["flags"]["lowlight"])
    Printf("=================== PATCH ====================")
    Printf("break = " .. rtChannel["patch"]["break"])
    Printf("coarse = " .. rtChannel["patch"]["coarse"])
    Printf("fine = " .. rtChannel["patch"]["fine"])
    Printf("ultra = " .. rtChannel["patch"]["ultra"])
    
end