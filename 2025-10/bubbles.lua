function init_bubbles()
    _bubbles_rotation_speed = 1/600
    _bubbles_wiggle_speed = 1/60
    _bubbles_color_1 = 3
    _bubbles_color_2 = 11
    _bubbles_rotation = 0
    _bubbles_wiggle = 0
end

function update_bubbles()
    _bubbles_rotation -= _bubbles_rotation_speed
    _bubbles_wiggle -= _bubbles_wiggle_speed
end

function draw_bubbles()
    for i = -12,12 do
        for j = -12,12 do
            if (j % 2 == 0) c = _bubbles_color_1 else c = _bubbles_color_2
            a = atan2(i,j)
            d = sqrt(i*i + j*j)
            r = 1.5 + 1.5 * sin(d/4 + _bubbles_wiggle)
            h = 2 * r
            circfill(
                64+8*d*cos(a+_bubbles_rotation),
                64+8*d*sin(a+_bubbles_rotation)-h,r,c
            )
        end
    end
end
