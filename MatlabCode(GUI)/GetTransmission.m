function y=GetTransmission(DarkChannel,A)
[H W D]=size(DarkChannel);
for i=1:H
    for j=1:W
        T1(i,j)=1-0.95*DarkChannel(i,j)/A;
    end
end
y=T1;