%% Lab 5. Var 1e
clear all;

N=1001;
x1=0;
x2=1;
x = linspace(x1, x2, N);

f = unifpdf(x);

for i = 2 : N
    P(i) = trapz(x(1 : i), f(1 : i));
end

figure; plot(x, P);
title('Функция распределения случайной величины');
xlabel('x');
ylabel('P(x)');

f_name = 'unifcdf.dat';
f_id = fopen(f_name, 'w+');
fwrite(f_id, numel(x), 'uint32');

fwrite(f_id, P, 'double');
fwrite(f_id, x, 'double');
fclose(f_id);

%% Lab 5. Var 2e
clear all;

f_name = 'unifcdf.dat';
f_id = fopen(f_name, 'r+');

N = fread(f_id, [1, 1], 'uint32');
P = fread(f_id, [N, 1], 'double');
x = fread(f_id, [N, 1], 'double');
fclose(f_id);

f = diff(P);

x(end) = [];

figure; plot(x, f);

title('Плотность распределения случайной величины');

xlabel('x');
ylabel('f(x)');

%%
clear all;
N=1001;
x1=0;
x2=1;
x = linspace(x1, x2, N);

f = unifpdf(x);

P = zeros(1, N-1);
for i = 2 : N
  P(i-1) = trapz(x(1 : i), f(1 : i));
end

figure; 
subplot(2,1,1);
plot(x, f);
title('Плотность вероятности случайной величины');
xlabel('x');
ylabel('f(x)');

subplot(2,1,2);
plot(x(2:end), P);
title('Функция распределения случайной величины');
xlabel('x');
ylabel('P(x)');

f_name = 'unifcdf.dat';
f_id = fopen(f_name, 'w+');
fwrite(f_id, P, 'double');
fwrite(f_id, x(2:end), 'double');
fclose(f_id);