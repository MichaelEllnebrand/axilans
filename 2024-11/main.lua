function _init()
    frame = 0
    recording = false
    recording_start_frame = 100
    recording_end_frame = 394

    background_color=0

    init_infinity()
    init_starfield(1000,{1,1,1,1,1,5,5,5,6,7})
    reset_particles()
end

function _update60()
    if recording then
        if (frame == recording_start_frame) extcmd('rec')
        if (frame == recording_end_frame) extcmd('video')
    end

    update_starfield()
    update_infinity()
    update_particles()

    frame += 1
end

function _draw()
    -- background_color = (((frame-recording_start_frame)/60))%10
    cls(background_color)

    draw_starfield()
    draw_infinity()
    draw_particles()

    spr(64,0,50,16,2)
    text="2024-11-08    2024-11-10"
    text_box(text,14,68,12,1)
end
