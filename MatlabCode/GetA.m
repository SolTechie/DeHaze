function A=GetA(DarkChannel,I)
Ig=rgb2gray(I);
[h w]=size(DarkChannel);
x=1;
y=1;
for i=1:h
    for j=1:w
        if (DarkChannel(i,j)>DarkChannel(x,y))
            x=i;
            y=j;
        end
    end
end
x1=x;
y1=y;
for i=x:x+20
    for j=y:y+20
        if(Ig(i,j)>Ig(x1,y1))
            x1=i;
            y1=j;
        end
    end
end

A=Ig(x1,y1)*0.99;
return;