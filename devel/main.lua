function _init()
    -- pal({[0]=0,1,2,3,4,5,6,7,136,9,10,139,12,140,8,15},1)
    pal({[0]=0,131,3,139,11,138,10},1)
    -- pal({[0]=0,130,141,2,136,8,14},1)
    cls(0)

    frame = 0
    recording = false
    recording_start_frame = 1
    recording_end_frame = 301

    -- init_circles()
    init_starfield(100, 2)
    init_matrix()
end

function _update60()
    if recording then
        if (frame == recording_start_frame) extcmd('rec')
        if (frame == recording_end_frame) extcmd('video')
    end

    -- update_circles()
    update_starfield()
    update_matrix()

    frame += 1
end

function _draw()
    cls(0)
    -- draw_circles()
    draw_starfield()
    draw_matrix()
end
