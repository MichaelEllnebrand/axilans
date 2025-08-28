function init_background_scroll(...)
    local args = {...}
    if (args[1] == nil) then _bg_scroll_tile1 = 0 else _bg_scroll_tile1 = args[1] end
    if (args[2] == nil) then _bg_scroll_tile2 = 1 else _bg_scroll_tile2 = args[2] end
    if (args[3] == nil) then _bg_scroll_speed_x = 20/60 else _bg_scroll_speed_x = args[3] end
    if (args[4] == nil) then _bg_scroll_speed_y = 20/60 else _bg_scroll_speed_y = args[4] end

    _bg_scroll_x = 0
    _bg_scroll_y = 0

    for x = 0,18 do
        for y = 0,18 do
            if ((x+y) % 2 == 0) then
                mset(x,y,_bg_scroll_tile1)
            else
                mset(x,y,_bg_scroll_tile2)
            end
        end
    end
end

function update_background_scroll()
    _bg_scroll_x -= _bg_scroll_speed_x
    _bg_scroll_y -= _bg_scroll_speed_y
end

function draw_background_scroll()
    camera(_bg_scroll_x % 16, _bg_scroll_y % 16)
    map(0,0,0,0,18,18)
    camera(0,0)
end
