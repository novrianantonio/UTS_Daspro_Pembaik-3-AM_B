program ISSC_System;
uses crt;

var 
    opsiA, opsiB : integer;
    i, j : integer;
    namaBarang : array of string;
    jumlahBarang : array of integer;
    barangBaru : string;
    stokBarang : integer;
    opsiX : char;

begin
    setlength(namaBarang, 0);
    setlength(jumlahBarang, 0);
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
        writeln('2. Manage Barang');
        writeln('3. Manage Stok Barang');
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
                    write('= ', i, '.');
                    write('  | ', namaBarang[i]);
                    for j:=1 to (22-length(namaBarang[i])) do 
                    begin
                        write(' ');
                    end;
                    writeln(' | ', jumlahBarang[i]:11, ' =');
                end;
                writeln('==============================================');
            end;
        end
        else if opsiA = 2 then //fitur 2. manage stok barang
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
            writeln('1. Tambah Barang');
            writeln('2. Hapus Barang Terakhir');
            write('Pilih opsi : ');
            readln(opsiB);
            if opsiB = 1 then //fitur 2.1 tambah barang
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
                    write('Masukkan nama barang : ');
                    readln(barangBaru);
                    write('Masukkan stok barang : ');
                    readln(stokBarang);
                    SetLength(namaBarang, length(namaBarang)+1);
                    SetLength(jumlahBarang, length(jumlahBarang)+1);
                    namaBarang[high(namaBarang)]:=barangBaru;
                    jumlahBarang[high(jumlahBarang)]:=stokBarang;
                    writeln;
                    writeln('Barang "', barangBaru, '" berjumlah ', stokBarang, ' , berhasil di catat!');
                    write('Apakah ingin melanjutkan penambahan barang (y/n) : ');
                    readln(opsiX);
                    lowercase(opsiX);
                until(opsiX = 'n');
            end
            else if opsiB = 2 then //opsi 2.2 menghapus barang terakhir
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
                SetLength(namaBarang, length(namaBarang)-1);
                SetLength(jumlahBarang, length(jumlahBarang)-1);
                writeln('Barang terakhir berhasil dihapus');
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
                writeln('OPSI TIDAK VALID!');
            end;
        end;
    writeln;
    write('Apakah ingin melanjutkan aktivitas (y/n) : ');
    readln(opsiX);
    lowercase(opsiX);
    until(opsiX='n');
end.