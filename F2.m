function [y,Grad,Hesse] = F2(Xk)
x1 = Xk(1,1);
x2 = Xk(2,1);
y = x1^2 + x2^2 - x1 * x2 - 10 * x1 - 4 * x2 + 60;
y1 = 2 * x1 - x2 - 10; % 对x1求偏导数
y2 = 2 * x2 - x1 - 4; % 对x2求偏导数
Grad = [y1;y2];
Hesse = [2,-1;-1,2];
end
