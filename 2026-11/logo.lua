function draw_logo()
    x = 0
    y = (128-32)/2
    sspr(0, 0, 128, 32, x, y)

    -- text="2026-11-13 ... 2026-11-15"
    text="2026-11-13 - 2026-11-15"
    x = text_center(text)
    y = 75
    -- text_outline(text, x, y, 6, 2)
    text_shadow(text, x, y, 6, 1)
end
