function _init()
    pal({[0]=0,5,134,7,130,136,8,14,131,3,139,11,129,1,140,12}, 1)
    cls(0)

    frame = 0
    recording = false
    recording_start_frame = 1
    recording_end_frame = 360

    init_starfield(200, 2)
    init_bars()
end

function _update60()
    if recording then
        if (frame == recording_start_frame) extcmd('rec')
        if (frame == recording_end_frame) extcmd('video')
    end

    update_starfield()
    update_bars()

    frame += 1
end

function _draw()
    cls(0)

    draw_starfield()
    draw_bars()
    draw_logo()
end
