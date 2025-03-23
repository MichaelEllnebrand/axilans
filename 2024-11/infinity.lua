function init_infinity()
    inf_blobs = {}
    inf_blobs_max = 60
    inf_pal = {11, 11, 11, 3, 3, 13, 4, 2, 1}
    inf_engine = {8, 9, 10, 15}
end

function update_infinity()
    if recording then
        inf_pos_x = 64 + (sin(t()*0.4) * 50)
        inf_pos_y = 64 + (sin(t()*0.8) * 35)
    else
        inf_pos_x = 64 + (sin(t()*0.3) * 50)
        inf_pos_y = 64 + (sin(t()*0.7) * 35)
    end

    if (#inf_blobs < inf_blobs_max) then
        -- local c = #inf_blobs % 8 + 8
        local c = inf_pal[#inf_blobs % #inf_pal + 1]
        b = {x=64, y=64, c=c}
        add(inf_blobs, b)
    end

    x1new = inf_pos_x
    y1new = inf_pos_y
    for b in all(inf_blobs) do
        x1new, b.x = b.x, x1new
        y1new, b.y = b.y, y1new
    end
end

function draw_infinity()
    local offset = 1 / 120
    local bx, by = 0, 0
    local size = 0
    for b in all(inf_blobs) do
        size = (sin(t()*0.25+offset) * 7) + 10
        offset += 1 / 120 -- 0.0083
        local x1 = b.x - size
        local y1 = b.y - size
        local x2 = b.x + size
        local y2 = b.y + size
        bx, by = b.x, b.y
        -- pset(b.x, b.y, 8)
        -- rect(x1, y1, x2, y2, b.c)
        -- circ(b.x, b.y, size, b.c)
        circfill(b.x, b.y, size, b.c)
    end
    bx = bx + rnd(size) - size / 2
    by = by + rnd(size) - size / 2
    local c = inf_engine[flr(rnd(#inf_engine)+1)]
    if frame % 3 == 0 then
        size = mid(1, size, 15)
        add_particle(bx, by, size, c, 10)
        spark(bx, by, c)
    end
end
