clc
clear
% Input dua angka dari user
a = input('Masukkan angka pertama: ');
b = input('Masukkan angka kedua: ');

% Pilihan operasi
disp('Pilih operasi:');
disp('1. Penjumlahan');
disp('2. Pengurangan');
disp('3. Perkalian');
pilihan = input('Masukkan nomor operasi (1/2/3): ');

% Struktur nested if
if pilihan == 1
    % Operasi penjumlahan
    hasil = a + b;
    fprintf('Hasil penjumlahan: %.2f\n', hasil);
    
elseif pilihan == 2
    % Operasi pengurangan
    if a > b
        hasil = a - b;
    else
        hasil = b - a;
    end
    fprintf('Hasil pengurangan: %.2f\n', hasil);
    
elseif pilihan == 3
    % Operasi perkalian
    if a ~= 0 && b ~= 0
        hasil = a * b;
        fprintf('Hasil perkalian: %.2f\n', hasil);
    else
        fprintf('Salah satu angka adalah nol, hasil perkalian: 0\n');
    end
    
else
    fprintf('Pilihan tidak valid.\n');
end
