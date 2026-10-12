program ISSC_System;
uses crt;

var 
    opsiA : integer;
    i : integer;
    namaBarang : array of string;
    jumlahBarang : array of integer;

begin
    repeat
        clrscr;
        writeln('==============================================');
        writeln('==== |||||     |||||      |||||     ||||| ====');
        writeln('====  |||     |||        |||       |||    ====');
        writeln('====  |||      |||        |||      |||    ====');
        writeln('====  |||       |||        |||     |||    ====');
        writeln('====  |||        |||        |||    |||    ====');
        writeln('==== |||||    |||||      |||||      ||||| ====');
        writeln('==============================================');
        writeln('======    S    Y    S    T    E    M    ======');
        writeln('==============================================');
        writeln('=== Inventory Smart Stock & Control System ===');
        writeln('==============================================');
        writeln;
        writeln('1. Cek Stok Barang');
        writeln('2. Manage Stok barang');
        writeln('0. Keluar');
        write('Pilih opsi : ');
        readln(opsiA);
        if opsiA = 1 then //fitur 1. Cek Stok barang
        begin
            if length(namaBarang) = 0 then
            begin
                clrscr;
                writeln('==============================================');
                writeln('==== |||||     |||||      |||||     ||||| ====');
                writeln('====  |||     |||        |||       |||    ====');
                writeln('====  |||      |||        |||      |||    ====');
                writeln('====  |||       |||        |||     |||    ====');
                writeln('====  |||        |||        |||    |||    ====');
                writeln('==== |||||    |||||      |||||      ||||| ====');
                writeln('==============================================');
                writeln('======    S    Y    S    T    E    M    ======');
                writeln('==============================================');
                writeln('=== Inventory Smart Stock & Control System ===');
                writeln('==============================================');
                writeln;
                writeln('Barang belum ada! Silahkan perbarui stok barang!');
            end
            else
            begin
                clrscr;
                writeln('==============================================');
                writeln('==== |||||     |||||      |||||     ||||| ====');
                writeln('====  |||     |||        |||       |||    ====');
                writeln('====  |||      |||        |||      |||    ====');
                writeln('====  |||       |||        |||     |||    ====');
                writeln('====  |||        |||        |||    |||    ====');
                writeln('==== |||||    |||||      |||||      ||||| ====');
                writeln('==============================================');
                writeln('======    S    Y    S    T    E    M    ======');
                writeln('==============================================');
                writeln('=== Inventory Smart Stock & Control System ===');
                writeln('==============================================');
                writeln;
                writeln('==============================================');
                writeln('= No. | Nama Barang            | jumlah Stok =');
                writeln('=--------------------------------------------=');
                for i:=1 to high(namaBarang) do
                begin
                    writeln('= ', i:5, '.   ', namaBarang[i], jumlahBarang[i]:33);
                end;
                writeln('==============================================');
            end;
        end;
    until(opsiA=0)
end.