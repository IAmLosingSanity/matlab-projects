% Lab 4. Var 16 В4№4-6
%% В4 4
x = 1:16;
matrix_4x4 = reshape(x, 4, 4);
disp(matrix_4x4);
%% В4 5
x = 1:3;
matrix_3x3 = diag(x);
disp(matrix_3x3);
%% В4 6
n = 3;
vector = [1, 2, 3];
repeated_vector = repelem(vector, n);
disp(repeated_vector);
%% В4 6.2
n = 2;
N = 3;
x = 1 : N;
x_rep = repmat(x, [n, 1]);
y = x_rep(:)';