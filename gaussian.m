a = -2:.1:2;
[x,y] = meshgrid(a,a);
z = exp(-x.^2 - y.^2);
figure 
subplot(1,2,1)          %Create a left subplot
mesh(z)
subplot(1,2,2)
surf(z)