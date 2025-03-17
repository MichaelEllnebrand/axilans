function init_starfield()
    stars={}
    starsmax=1000
    starscol={1,2,3,4,5,6,7,8}
    for i = 1, 60 do
        update_starfield()
    end
end

function update_starfield()
    for i = 1, 10 do
        if (#stars<starsmax) then
            --Spawn a star
            local angle = rnd()
            local speedx = sin(angle)
            local speedy = cos(angle)
            local spawncol = starscol[1+flr(rnd(#starscol))]
            star={x=64,y=64,sx=speedx,sy=speedy,col=spawncol}
            add(stars,star)
        end
    end
    -- Move all stars
    for star in all(stars) do
        star.x+=star.sx
        star.y+=star.sy
        if (star.x<0 or star.x>127 or star.y<0 or star.y>127) then
            del(stars,star)
        end
    end
end

function draw_starfield()
    for star in all(stars) do
        pset(star.x,star.y,star.col)
    end
end
