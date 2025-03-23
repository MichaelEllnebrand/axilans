function _init()
    init_plasma()
end

function _update()
    update_plasma()
end

function _draw()
    -- dark
    -- cls(0)
    cls(1)
    --rect(0, 48, 127, 79, 0)
    line(0, 48, 127, 48, 0)
    line(0, 79, 127, 79, 0)
    draw_plasma()

    -- draw logo
    x = 14 + (sin(t() * 0.8) * 8)
    y = 51
    spr(128, x, y, 14, 2)

    text="2023-02-17     2023-02-19"
    text_outline(text, 14, 71, 11, 13)
end
