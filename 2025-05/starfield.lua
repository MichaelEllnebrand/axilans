function init_starfield()
    stars={}
    for i=1,100 do
        s={
            x=rnd(128),
            y=rnd(128),
            dx=rnd(2)+1,
            dy=rnd(0.4)-0.2,
            c=flr(rnd(2))+2
        }
        add(stars,s)
    end
end

function update_starfield()
    for s in all(stars) do
        s.x-=s.dx
        s.y-=s.dy
        if (s.x<0) then
            s.x=128
            s.y=rnd(128)
        end
    end
end

function draw_starfield()
    for s in all(stars) do
        pset(s.x,s.y,s.c)
    end
end