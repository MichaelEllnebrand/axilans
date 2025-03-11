function _init()
    frame = 0
    recording = false
    recording_start_frame = 1
    recording_end_frame = 540

    init_starfield()
    init_text()
    init_logo()
end

function _update60()
    if recording then
        if (frame == recording_start_frame) extcmd('rec')
        if (frame == recording_end_frame) extcmd('video')
    end

    update_starfield()
    update_text()
    update_logo()

    frame += 1
end

function _draw()
    cls(0)
    draw_starfield()
    draw_text()
    draw_logo()
end
