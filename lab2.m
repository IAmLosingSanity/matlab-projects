%% Lab 2. Var 2a
a = 0.5;
b = 0.5;
c=1;

N = 1000;

x = linspace(-1, 1, N);
y = linspace(-1, 1, N);

[X, Y] = meshgrid(x, y);

Zp = abs(c .* sqrt((X./a).^2 + (Y./b).^2 - 1));
Zn = -abs(c .* sqrt((X./a).^2 + (Y./b).^2 - 1));

figure;
hold on
mesh(X, Y, Zp)
mesh(X, Y, Zn)
xlabel('X')
ylabel('Y')
zlabel('F(X,Y)')
title('Lab 2')