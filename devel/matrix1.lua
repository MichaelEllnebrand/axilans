function init_matrix()
    -- pal({[0]=0,131,3,139,11,138,10},1)
    -- pal({[0]=0,130,141,2,136,8,14},1)

    matrix = {
        color = {},
        text = {},
        c = {}
    }


    for i = 0, 15 do
        matrix.color[i] = rnd(20)
    end
    for i = 0, 20 do
        matrix.text[i] = matrix_generate_text()
    end

    -- maybe...
    for x = 0, 15 do
        matrix.c[x] = {}
        for y = 0, 20 do
            matrix.c[x][y] = 0
        end
    end
    for x = 0, 15 do
        matrix.c[x][0] = rnd(20)
    end

end

function matrix_generate_text()
    t = ""
    for i = 0, 15 do
        if matrix.color[i] > 8 then c = 0 else c = matrix.color[i] end

        n = matrix.color[i] - 1
        if n < 0 then n = rnd(20)+10 end
        matrix.color[i] = n

        t = t .. "\f" .. chr(c+103) .. chr(rnd(49)+204)
    end
    return t
end

function update_matrix()
    if frame % 3 == 0 then
        for i = 19, 0, -1 do
            matrix.text[i+1] = matrix.text[i]
        end
        matrix.text[0] = matrix_generate_text()
    end
end

function draw_matrix()
    for y = 0, 20 do
        print(matrix.text[y], 0, y*6)
    end
end
