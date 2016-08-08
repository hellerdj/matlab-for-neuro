

q = @(x)x.^5 - 9.*x.^4 + 8 .* x.^3 - 2.* x.^2 + x + 500;
% ========================== plot value of polynomial from 0 to 10
fplot(q,[0 10])
% ========================== Integrage value of polynomial from 0 to 10
quad(q, 0, 7)

