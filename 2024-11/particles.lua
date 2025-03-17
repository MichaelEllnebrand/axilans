function reset_particles()
    particles={}
end

function update_particles()
    for p in all(particles) do
        if p.age >= p.maxage then 
            del(particles,p)
        else
            p.x+=p.dx
            p.y+=p.dy
            p.age+=1
            p.r-=0.05
        end
    end
end

function draw_particles()
    for p in all(particles) do
        circfill(p.x,p.y,p.r,p.col)
    end
end

function add_particle(_x,_y,_r,_c,_maxage)
    local part={
        x=_x, 
        y=_y, 
        dx=-0.4+(rnd(0.8)), 
        dy=-0.4+(rnd(0.8)), 
        r=_r, 
        col=_c, 
        age=0, 
        maxage=_maxage
    }
    add(particles,part)
end

function spark(_x,_y,_col)
    for i=1,10 do
        add_particle(_x,_y,3,_col,60)
    end
end

function sparkis(s)
    for i = 1,50 do
        add_particle(rnd(127),s.y+rnd(s.h),2,flr(rnd(3)+5),30)
    end
end