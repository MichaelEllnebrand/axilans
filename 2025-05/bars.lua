function init_bars()
    bars={
        {col=16, offset=80},
        {col=16, offset=70},
        {col=16, offset=60},
        {col=8, offset=50},
        {col=8, offset=40},
        {col=8, offset=30},
        {col=0, offset=20},
        {col=0, offset=10},
        {col=0, offset=0},
    }
end

function update_bars()

end

function draw_bars()
    for bar in all(bars) do
        _dy=60+(sin((frame-bar.offset)/180)*58)
        sspr(0,bar.col,1,8,0,_dy,128,8)
    end
end
