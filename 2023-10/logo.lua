function draw_logo()
    logo_speed = 0.2
    x_offset = 16
    x_offset = 16 + (sin(t() * logo_speed) * 16)
    y_offset = 48 + (cos(t() * logo_speed) * 16)
    spr(64, x_offset, y_offset, 12, 4)

    -- Glitchy logo
    -- for x = 0, 12 do
    --     for y = 0, 3 do
    --         sprite = 64 + x + y * 16
    --         x_flip = rnd() < 0.01
    --         y_flip = rnd() < 0.01
    --         if rnd() < 0.1 then
    --             sprite += 64
    --         end
    --         spr(sprite, x_offset + x * 8, y_offset + y * 8, 1, 1, x_flip, y_flip)
    --     end
    -- end
end

function draw_date(text, y)
    x = (128 - (#text * 4)) / 2
    bg_x0 = x - 3
    bg_x1 = x + (#text * 4) + 1
    line(bg_x0, y+1, bg_x1, y+1, 12)
    line(bg_x0, y+2, bg_x1, y+2, 13)
    line(bg_x0, y+3, bg_x1, y+3, 14)
    text_shade = frame % 16
    print(text, x+1, y, text_shade)
    print(text, x-1, y, text_shade)
    print(text, x, y+1, text_shade)
    print(text, x, y-1, text_shade)
    print(text, x, y, 15)
end