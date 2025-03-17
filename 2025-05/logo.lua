function draw_logo()
    x=3
    y=50-abs(sin(frame/90)*15)
    sspr(1,0,124,32,x,y)

    text="2025-05-09  ...  2025-05-11"
    y = 80
    x = text_center(text)
    text_shadow("\^t"..text,x,y,3,1)
end