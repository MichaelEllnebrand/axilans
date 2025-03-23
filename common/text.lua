function text_center(_t)
    return (128 - #_t * 4) / 2
end

function text_outline(_t, _x, _y, ...)
    local args = {...}
    if (args[1] == nil) then _ct = 7 else _ct = args[1] end
    if (args[2] == nil) then _co = 0 else _co = args[2] end
    print(_t, _x + 1, _y, _co)
    print(_t, _x-1, _y, _co)
    print(_t, _x, _y + 1, _co)
    print(_t, _x, _y - 1, _co)
    print(_t, _x, _y, _ct)
end

function text_shadow(_t, _x, _y, ...)
    local args = {...}
    if (args[1] == nil) then _ct = 7 else _ct = args[1] end
    if (args[2] == nil) then _cs = 0 else _cs = args[2] end
    print(_t, _x + 1, _y + 1, _cs)
    print(_t, _x, _y, _ct)
end

function text_box(_t, _x, _y, ...)
    local args = {...}
    if (args[1] == nil) then _ct = 7 else _ct = args[1] end
    if (args[2] == nil) then _cb = 0 else _cb = args[2] end
    local w = (#_t * 4) + 4
    local h = 5 + 5
    rectfill(_x, _y, _x + w, _y + h, _cb)
    rect(_x + 1, _y + 1, _x + w - 1, _y + h - 1, _ct)
    print(_t, _x + 3, _y + 3, _ct)
end
