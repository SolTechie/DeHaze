function T=Smoonth(I,T1)
  
  [h,w,c]=size(I);
  img_size=w*h;

  A=GetLaplacian(I);
  
  D=speye(img_size,img_size);
  lambda=10^-4;
  x=(A+lambda*D)\(lambda.*T1(:));
 

 T=max(min(reshape(x,h,w),1),0);
return;