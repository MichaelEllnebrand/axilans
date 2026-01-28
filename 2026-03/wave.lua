function init_background_wave()
    wave={
        w1=0,
        w1_speed=1/50, --0.02,
        w1_amp=1/100, --0.01,
        w2=0,
        w2_speed=1/25, --0.04,
        w2_amp=1/30, -- 0.03,
        spr_x=1,
        spr_y=0,
        width=1,
        height=18,
    }
end

function update_background_wave()
    wave.w1+=wave.w1_speed
    wave.w2+=wave.w2_speed
end

function draw_background_wave()
    a=wave.w1
    b=wave.w2

    for x=0,63 do
        a+=wave.w1_amp
        b+=wave.w2_amp
        c=a-b
        d=b+a

        y1=(20*sin(wave.w1)+63)+(15*cos(a))+(5*sin(b))
        y2=(10*sin(wave.w1)+63)+(15*cos(c))+(5*sin(d))
        sspr(
            wave.spr_x,
            wave.spr_y,
            wave.width,
            wave.height,
            x*2,
            0,
            wave.width,
            y1
        )
        sspr(
            wave.spr_x,
            wave.spr_y,
            wave.width,
            wave.height,
            x*2,
            y1,
            wave.width,
            128-y1
        )
        sspr(
            wave.spr_x,
            wave.spr_y,
            wave.width,
            wave.height,
            x*2+1,
            0,
            wave.width,
            y2
        )
        sspr(
            wave.spr_x,
            wave.spr_y,
            wave.width,
            wave.height,
            x*2+1,
            y2,
            wave.width,
            128-y2
        )
    end
end
