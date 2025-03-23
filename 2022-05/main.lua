function _init()
    frame = 0
    recording = false
    recording_start_frame = 1
    recording_end_frame = 300

    init_boxes()
    init_starfield()

    pal(3, 129, 1)
    bg_col = 0
    box_col = 3

    reset()
end

function _update60()
    if recording then
        if (frame == recording_start_frame) extcmd('rec')
        if (frame == recording_end_frame) extcmd('video')
    end

    time += 1
    if (time > 150) then
        reset()
    end

    update_boxes()
    update_logo()
    update_starfield()

    frame += 1
end

function _draw()
    cls(bg_col)
    draw_logo()
    draw_year()
    draw_boxes()
    draw_starfield()
    text_outline("all your base are belong to us", 4, 4, 7, 5)
end

function reset()
    time = 0

    col = bg_col
    bg_col = box_col
    box_col = col

    logowiggle = 10
    logox = 5
    logoy = 15
    dy = 1

    yeary = flr(rnd(20) + 70)

    reset_boxes()
end
