function init_matrix()
    -- pal({[0]=0,131,3,139,11,138,10},1)
    -- pal({[0]=0,130,141,2,136,8,14},1)

    matrix = {
        color = {},
        text = {},
    }

    for i = 0, 16*21 do
        -- matrix.color[i] = rnd(24)
        matrix.color[i] = (sin(cos(i/16))+sin(i/8)+cos(i/10))*12 + 12
    end
    for i = 0, 30 do update_matrix() end
end

function update_matrix()
    if frame % 3 == 0 then
        -- Move all colors down by one row
        for i = 16*21, 16, -1 do
            matrix.color[i] = matrix.color[i-16]
        end
        -- Update the top row with next color
        for i = 0, 15 do
            c = matrix.color[i]
            c = c - 1
            if c < 0 then c = 24 end -- rnd(20)+10 end
            matrix.color[i] = c
        end
        -- Update the text representation of the matrix
        for y = 0, 20 do
            t = ""
            for x = 0, 15 do
                c = matrix.color[(y*16) + x]
                if c > 7 then
                    t = t .. "  "
                else
                    t = t .. "\f" .. chr(c+103) .. chr(rnd(49)+204)
                    -- t = t .. "\f" .. chr(c+103) .. chr(x+48)
                end
            end
            matrix.text[y] = t
        end
    end
end

function draw_matrix()
    for y = 0, 20 do
        print(matrix.text[y], 0, y*6)
    end
end
