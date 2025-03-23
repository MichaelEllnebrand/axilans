function init_text()
    textx = 200
    texty = 30
    textwait = 0
    textoffset = 0
    textwave = 0.010
end

function update_text()
    if (textx > 16) then textx -= 1
    else textwait += 1
    end
    if (textwait > 250) then
        textx -= 1
    end
    if (textx < -90) then
        textx = 130
        textwait = 0
    end

    textoffset += textwave
end

function draw_text()
    local x = 0
    local y = 0
    local yo = textoffset
    for i = 1, 10 do
        x = textx + i * 8
        y = texty + (10 * sin(yo))
        spr(i, x, y)
        yo += 0.05
    end
end
