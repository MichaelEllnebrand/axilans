function init_starfield()
    stars={}
    starsmax=100
    starscol={1,1,1,1,1,5,5,5,5,6}
end

function update_starfield()
    if (#stars < starsmax) then
        --Spawn a star
        local speedx=(rnd(4)-2)
        local speedy=(rnd(4)-2)
        local spawncol=starscol[flr(1+flr(rnd(10)))]
        star={x=64,y=64,sx=speedx,sy=speedy,col=spawncol}
        add(stars,star)
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
