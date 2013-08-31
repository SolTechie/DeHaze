function y=GetDarkChannel(I)

[H W D]=size(I);
for i=1:H
    for j=1:W
        if(i==1 || j==1 || i==H || j==W)
            DarkChannel(i,j)=0;
            continue;
        end
        Channel(1)=min(min(I(i-1:i+1,j-1:j+1,1)));
        Channel(2)=min(min(I(i-1:i+1,j-1:j+1,2)));
        Channel(3)=min(min(I(i-1:i+1,j-1:j+1,3)));
        DarkChannel(i,j)=min(Channel);
    end
end

y=DarkChannel;

return;
