function init_circles()
    circs_max = 120
    circs_color = 0
    reset_circles()
end

function reset_circles()
    circs_bg = circs_color
    circs_color += 1
    circs={}
end

function update_circles()
    if (#circs < circs_max) then
        circ={
            x=rnd(128),
            y=rnd(128),
            r=1
        }
        add(circs,circ)
        for circ in all(circs) do
            circ.r += 0.3
        end
    end

    if (#circs == circs_max) then
        reset_circles()
    end
end

function draw_circles()
    cls(circs_bg)
    for circ in all(circs) do
        circfill(circ.x, circ.y, circ.r, circs_color)
    end
end
