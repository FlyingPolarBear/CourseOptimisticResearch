clear all
x1 = 0;
x2 = 0;
e =0.01;
[y0,y1,y2] = F2(x1,x2);
g1 = y1 / sqrt(y1^2 + y2^2); % x1方向的梯度
g2 = y2 / sqrt(y1^2 + y2^2); % x2方向的梯度
x1 = x1 - e * g1;
x2 = x2 - e * g2;
y = F2(x1,x2);

while abs(y - y0) >= 0.0001*e
    y0 = y;
    [y,y1,y2] = F2(x1,x2);
    g1 = y1 / sqrt(y1^2 + y2^2); % x1方向的梯度
    g2 = y2 / sqrt(y1^2 + y2^2); % x2方向的梯度
    x1 = x1 + g1;
    x2 = x2 + g2;
end