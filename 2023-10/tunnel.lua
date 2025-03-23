function init_tunnel()
    tunnel_rotation = 0
    tunnel_middle = 3
    tunnel_rotation_speed = 0.00333
end

function update_tunnel()
    if (btn(0)) tunnel_rotation_speed -= 0.0001
    if (btn(1)) tunnel_rotation_speed += 0.0001
    if (btn(2)) tunnel_middle -= 0.1
    if (btn(3)) tunnel_middle += 0.1
end

function draw_tunnel()
    tunnel_rotation += tunnel_rotation_speed

    angle = tunnel_rotation
    radius = tunnel_middle

    for i=1, 25 do
        x0 = 64 + cos(angle) * radius
        y0 = 64 + sin(angle) * radius
        x1 = 64 + cos(angle+0.25) * radius
        y1 = 64 + sin(angle+0.25) * radius
        x2 = 64 + cos(angle+0.5) * radius
        y2 = 64 + sin(angle+0.5) * radius
        x3 = 64 + cos(angle+0.75) * radius
        y3 = 64 + sin(angle+0.75) * radius
        tunnel_square(x0, y0, x1, y1, x2, y2, x3, y3)

        angle += 0.015
        radius += 0.01 + i
    end
end

function tunnel_square(x0, y0, x1, y1, x2, y2, x3, y3)
    line(x0, y0, x1, y1, 1)
    line(x2, y2, x3, y3, 8)

    -- scale = 2/sqrt(((x1-x2)^2)+((y1-y2)^2))
    a = abs(abs(x1) - abs(x2))
    b = abs(abs(y1) - abs(y2))
    scale = 2 / sqrt((a^2)+(b^2))

    tline(x1, y1, x2, y2, 0, 0, scale, 0)
    tline(x0, y0, x3, y3, 0, 0, scale, 0)
end
