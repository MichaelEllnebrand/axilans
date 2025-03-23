function init_plasma()
    p_height = 48
    -- p_pal={129,1,141,13,140,12,7,7,7,6,6,6,5,5,5,5}
    -- p_pal={7,6,5,129,1,140,12,12,12,12,7,7,7,7,7,7,11}
    -- p_pal={129,6,5,129,1,140,12,12,12,12,7,7,7,5,8,136}
    p_pal = {129, 6, 5, 129, 1, 140, 12, 12, 12, 12, 7, 7, 7, 0, 8, 14}
    plasma = {}
    for i = 1, 5000 do plasma[i] = rnd(5) end
end

function update_plasma()
    local i = 256
    for y = 0, p_height do
        for x = 0, 63 do
            v = ((plasma[i-64] + plasma[i-1] + plasma[i+1] + plasma[i+64]) / 4) - 2
            if (v < 0) v += 300
            plasma[i] = v
            v = mid(1, v/15, 13)
            sset(x, y, v)
            i += 1
        end
    end
end

function draw_plasma()
        palt(0b0000000000000000)
        for i = 0, 15 do
            pal(i, p_pal[i+1], 1)
        end

        -- Top and bottom
        -- sspr(0, 0, 64, p_height, 0, 0, 128, p_height)
        -- sspr(0, 0, 64, p_height, 0, 128-p_height, 128, p_height, false, true)

        -- Four corners
        sspr(0, 0, 64, p_height, 0, 0, 64, p_height)
        sspr(0, 0, 64, p_height, 64, 0, 64, p_height, true, false)
        sspr(0, 0, 64, p_height, 0, 128-p_height, 64, p_height, false, true)
        sspr(0, 0, 64, p_height, 64, 128-p_height, 64, p_height, true, true)
                
        palt()
end
