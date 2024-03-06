% 10 12 18
%% Lab 3. Var 10. 
clear all

inputStr = 'abcdefghiklm';

triadLength = 3; % Длина одной триады
numTriads = length(inputStr) / triadLength; % Общее количество триад
triadIndex = repmat([true false], 1, numTriads/2); % Логический вектор для триад
    
% Выбираем элементы, соответствующие каждой первой триаде из двух
outputStr = inputStr(repmat(triadIndex, triadLength, 1));

disp(outputStr)
%% Lab 3. Var 12.
i = 3;
N = 4*i;
x = rand(1, N);
idxs = i :i : N;
y = x(idxs);
disp(x)
disp(y)
%% Lab 3. Var 18.
n = 3;
t = 2;
N = 4*n;
x = rand(1, N);
x_res = reshape(x, [n, N/n]);
x_rep = repmat(x_res, [t, 1]);
y = x_rep(:);
disp(x)
disp(y)
