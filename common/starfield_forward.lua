function init_starfield(...)
    local args = {...}
    if (args[1] == nil) then stars_max = 500 else stars_max = args[1] end
    if (args[2] == nil) then stars_colors = {1,5,6} else stars_colors = args[2] end
    if (args[3] == nil) then stars_accel = 1.02 else stars_accel = args[3] end

    stars = {}
    for i = 1, 60 do
        update_starfield()
    end
end

function update_starfield()
    for i = 1, (stars_max / 60) do
        if (#stars < stars_max) then
            --Spawn a star
            local angle = rnd()
            local speedx = sin(angle)
            local speedy = cos(angle)
            local spawncol = stars_colors[1 + flr(rnd(#stars_colors))]
            star={x=64, y=64, sx=speedx, sy=speedy, col=spawncol}
            add(stars, star)
        end
    end
    -- Move all stars
    for star in all(stars) do
        star.x += star.sx
        star.y += star.sy
        star.sx *= stars_accel
        star.sy *= stars_accel
        if (star.x < 0 or star.x > 127 or star.y < 0 or star.y > 127) then
            del(stars, star)
        end
    end
end

function draw_starfield()
    for star in all(stars) do
        pset(star.x, star.y, star.col)
    end
end
