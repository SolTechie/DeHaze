function y=GetDarkChannel(I)
dark_winsize=7;
[H W D]=size(I);
for i=1:H
    for j=1:W
        Channel(1)=min(min(I(max(1,i-dark_winsize):min(H,i+dark_winsize),max(1,j-dark_winsize):min(W,j+dark_winsize),1)));
        Channel(2)=min(min(I(max(1,i-dark_winsize):min(H,i+dark_winsize),max(1,j-dark_winsize):min(W,j+dark_winsize),2)));
        Channel(3)=min(min(I(max(1,i-dark_winsize):min(H,i+dark_winsize),max(1,j-dark_winsize):min(W,j+dark_winsize),3)));
        DarkChannel(i,j)=min(Channel);
    end
end

y=DarkChannel;

return;
