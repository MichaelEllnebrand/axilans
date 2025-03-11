function update_logo()
    if (time<100) then
        if (logowiggle>0) then
            logowiggle-=0.1
            if (logowiggle <= 0) then
                logowiggle=0
            end
        end
    else
        dy*=1.05
        logoy+=dy
        logox+=0.3
    end
end

function draw_logo()
    spr(1,(cos(t())*logowiggle)+logox,(sin(t())*logowiggle)+logoy,15,4)
end

function draw_year()
    yearx=130-time*2
    spr(64,yearx,yeary,11,4)
end

function text_outline(_t,_x,_y,...)
    local args={...}
    if (args[1]==nil) then _ct=7 else _ct=args[1] end
    if (args[2]==nil) then _co=0 else _co=args[2] end
    print(_t,_x+1,_y,_co)
    print(_t,_x-1,_y,_co)
    print(_t,_x,_y+1,_co)
    print(_t,_x,_y-1,_co)
    print(_t,_x,_y,_ct)
end
