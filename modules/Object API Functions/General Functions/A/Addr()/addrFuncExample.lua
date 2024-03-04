--* Addr() Function - Example

--* About
    -- The following example prints different versions of the address to a cue in a sequence.

--* Example 1
return function()
    -- Creates a cue in sequence 1
    Cmd("Store Sequence 1 Cue 100 /Merge /NoConfirmation")
    --Store a handle to the created cue
    local cueObject = ObjectList("Sequence 1 Cue 100")[1]
    --Print different version of the handle address
    Printf("ToAddr:              " .. cueObject:ToAddr())
    Printf("Addr:                " .. cueObject:Addr())
    Printf("Addr(Parent, false): " .. cueObject:Addr(cueObject:Parent(), false))
    Printf("Addr(Parent, true):  " .. cueObject:Addr(cueObject:Parent(), true))
end