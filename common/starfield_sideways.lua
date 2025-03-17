function init_starfield(...)
    local args={...}
    if (args[1]==nil) then _num_stars=100 else _num_stars=args[1] end
    if (args[2]==nil) then _color=5 else _color=args[2] end
    stars={}
    for i=1,_num_stars do
        s={
            x=rnd(128),
            y=rnd(128),
            dx=rnd(2)+1,
            dy=rnd(0.4)-0.2,
            c=flr(rnd(2))+_color
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
