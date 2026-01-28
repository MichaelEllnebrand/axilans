function draw_logo()
    x = rnd(120) + 4
    y = rnd(64) + 32
    c = 9 + rnd(4)
    size = rnd(7) + 3
    add_particle(x, y, size, c, 20)

    x = rnd(120) + 4
    y = rnd(64) + 32
    c = 9 + rnd(4)
    spark(x, y, c)

    sspr(4,0,120,80,4,30)

    text_shadow("\^w2026-03-13 ...", 10, 11, 15, 14)
    text_shadow("\^w... 2026-03-15", 10, 107, 15, 14)
end
