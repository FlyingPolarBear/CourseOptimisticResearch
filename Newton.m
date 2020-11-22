%% 牛顿法程序
clear all
e = 0.01; % 允许误差
Xk0 = [0;0];
[y,Grad,Hesse] = F2(Xk0);
Xk = Xk0 - Hesse^(-1) * Grad;
c = 0;
while norm(Grad) >= e
    Xk0 = Xk;
    [y,Grad,Hesse] = F2(Xk0); % 求导
    Xk = Xk0 - Hesse^-1 * Grad;
    c = c + 1;
end