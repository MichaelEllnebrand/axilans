function init_boxes()
    boxes={}
    reset_boxes()
end

function reset_boxes()
    for i=1,64 do
        boxes[i]=0
    end
    counter=0
    flipped=0
end

function update_boxes()
    if (flipped<64) then
        a=true
        while (a) do
            current=flr(rnd(64)+1)
            if (boxes[current]==0) then
                boxes[current]=1
                a=false
            end
        end
        flipped+=1
    end
end

function draw_boxes()
    i=1

    for y=0,7 do
        for x=0,7 do
            if (boxes[i]==0) then
                x0=(x*16)
                y0=(y*16)
                x1=(x*16)+15
                y1=(y*16)+15
                rectfill(x0,y0,x1,y1,box_col)
            elseif (boxes[i]>0) then
                d=boxes[i]
                x0=(x*16)+(d)
                y0=(y*16)+(d)
                x1=(x*16)+15-(d)
                y1=(y*16)+15-(d)
                rectfill(x0,y0,x1,y1,box_col)
                if (d==5) then
                    boxes[i]=-1
                else
                    boxes[i]=d+1
                end
            else


            end
            i+=1
        end
    end
end
