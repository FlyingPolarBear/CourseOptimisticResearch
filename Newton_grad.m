%% ţ�����߷�����
clear all
e = 0.001; % �������
tk0 = 2.5; % ѡȡ��ʼ��
[y,y1,y2] = F1(tk0);
tk = tk0 - y1 / y2;

while abs(tk - tk0) >= e
    tk0 = tk;
    [y,y1,y2] = F1(tk0); % ��
    tk = tk0 - y1 / y2;
end