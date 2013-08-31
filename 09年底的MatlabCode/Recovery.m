function y=Recovery(I,T,A)
A=double(A);
I=double(I);
T=double(T);
[H W D]=size(T);
for k=1:3
    for i=1:H
        for j=1:W
            I2(i,j,k)=(I(i,j,k)-A)/T(i,j)+A;
        end
    end
end
y=I2/255;