%% 牛顿切线法程序
clear all
e = 0.001; % 允许误差
tk0 = 2.5; % 选取初始点
[y,y1,y2] = F1(tk0);
tk = tk0 - y1 / y2;

while abs(tk - tk0) >= e
    tk0 = tk;
    [y,y1,y2] = F1(tk0); % 求导
    tk = tk0 - y1 / y2;
end