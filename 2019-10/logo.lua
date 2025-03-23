function init_logo()
    logox = 350
    logoy = 67
    logoblink = 0
    logotextx = 75
    logotexty = 140
    -- poke(0x5f2e,1)
    pal(12, 140, 1)
    pal(13, 1, 1)
    pal(1, 129, 1)
    pal(8, 136, 1)
    pal(14, 2, 1)
    pal(2, 130, 1)
end

function update_logo()
    if (logox > 0) then
        logox -= 1
    else
        logoblink += 1
        if (logoblink < 20) then
            pal(12, 140, 1)
            pal(13, 1, 1)
            pal(1, 129, 1)
            pal(8, 136, 1)
            pal(14, 2, 1)
            pal(2, 130, 1)
        else
            pal()
            logoblink = 0
        end
        if (logotexty > 100) then
            logotexty -= 1
        end
    end
end

function draw_logo()
    spr(128, logox, logoy, 16, 4)
    print("october 25-27", logotextx + 1, logotexty + 1, 1)
    print("october 25-27", logotextx, logotexty, 12)
end
