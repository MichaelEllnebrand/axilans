function _init()
    pal({[0]=0,12,140,1,130,2,136,8,14,9,10,135,138,11,139,7},1)
    cls(0)

    frame = 0
    recording = false
    recording_start_frame = 1
    recording_end_frame = 300

    init_starfield(1000,{1,2,3,4,5,6,7,8},1)
    init_tunnel()
end

function _update60()
    if recording then
        if (frame == recording_start_frame) extcmd('rec')
        if (frame == recording_end_frame) extcmd('video')
    end

    update_starfield()
    update_tunnel()

    frame += 1
end

function _draw()
    cls(0)

    draw_starfield()
    draw_tunnel()
    draw_logo()
    draw_date("2023-10-20 - 2023-10-22", 16)
end
