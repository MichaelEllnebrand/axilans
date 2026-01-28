function _init()
    pal({[0]=0,129,1,140,12,5,134,6,8,136,2,130,128,7,131,139},1)
    cls(0)

    frame = 0
    recording = false
    recording_start_frame = 100
    recording_end_frame = 401

    init_background_wave()
    init_cube()
    reset_particles()
end

function _update60()
    if recording then
        if (frame == recording_start_frame) extcmd('rec')
        if (frame == recording_end_frame) extcmd('video')
    end

    update_background_wave()
    update_cube()
    update_particles()

    frame += 1
end

function _draw()
    cls(0)
    draw_background_wave()
    draw_particles()
    draw_logo()
    draw_cube()
end
