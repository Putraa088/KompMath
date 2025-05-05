%Fungsi f(x) = 2x
f = @(x) 2*x;
%titik evaluasi
x = 1;
%daftar nilai h
 h_values = 0.01;
% h_values = [1e-1, 1e-2, 1e-3, 1e-4];

% turunan eksak
df_exact = 2;
disp('---Perbandingan Turunan numerik untuk f(x) =  2x ---')

% loop untuk tiap nilai h
%for i = 1:5
for i = 1:5
    h = h_values;
    %metode beda maju
    df_forward = (f(x+h) - f(x)) / h;
    %metode beda mundur
    df_backward = (f(x) - f(x-h)) / h;
    %metode beda tengah
    df_central = (f(x+h) - f(x-h)) / (2*h);
    %tampilkan hasil
    disp(['h = ', num2str(h)])
    disp([' beda maju : ', num2str(df_forward)])
    disp([' beda mundur : ', num2str(df_backward)])
    disp([' beda tengah : ', num2str(df_central)])
    disp([' beda eksak : ', num2str(df_exact)])
    disp(' ')
end
