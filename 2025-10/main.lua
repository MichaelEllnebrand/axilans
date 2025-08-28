function _init()
    pal({[0]=0,1,2,3,4,5,6,7,136,9,10,139,12,140,8,15},1)
    cls(0)

    frame = 0
    recording = false
    recording_start_frame = 1
    recording_end_frame = 301

    init_background_scroll(112, 113, 30/60, 30/60)
    init_bubbles()
end

function _update60()
    if recording then
        if (frame == recording_start_frame) extcmd('rec')
        if (frame == recording_end_frame) extcmd('video')
    end

    update_background_scroll()
    update_bubbles()

    frame += 1
end

function _draw()
    cls(0)
    draw_background_scroll()
    draw_bubbles()
    draw_logo()
end
