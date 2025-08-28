function draw_logo()
    x = 3
    y = 43
    sspr(0, 0, 122, 42, x, y)

    text="2025-10-03 ..."
    x = text_center(text) - 30
    y = 11
    text_outline("\^t"..text, x, y, 7, 0)

    text="... 2025-10-05"
    x = text_center(text) + 30
    y = 107
    text_outline("\^t"..text, x, y, 7, 0)
end
