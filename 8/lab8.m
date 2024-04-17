%% Lab 8. Var 5
clear, clc

T = readtable("attributes.xlsx");

rows = (T.Bangs==-1 & T.Big_Lips==1 & T.Big_Nose==1 & T.Black_Hair==-1 & T.Blond_Hair==-1);
T2 = T(rows,:);

writetable(T2,'subtable.xlsx')