program ISSC_System;
uses crt;


var 
    opsiA, opsiB : integer;
    h, i, j , l : integer;
    namaBarang, header : array of string;
    jumlahBarang : array of integer;
    barangBaru : string;
    stokBarang : integer;
    opsiX : char;

begin
    clrscr;
    setlength(namaBarang, 1);
    setlength(jumlahBarang, 1);
    setlength(header, 12);

    TextColor(White);
    writeln('===============================================');
    write('                 LOADING');
    for l:= 1 to 5 do
    begin
        write('.');
        delay(500);
    end;
    writeln;
    writeln('===============================================');


    clrscr;
    textcolor(Blue);
    header[0]:='==============================================';
    header[1]:='==== |||||     |||||      |||||     ||||| ====';
    header[2]:='====  |||     |||        |||       |||    ====';
    header[3]:='====  |||      |||        |||      |||    ====';
    header[4]:='====  |||       |||        |||     |||    ====';
    header[5]:='====  |||        |||        |||    |||    ====';
    header[6]:='==== |||||    |||||      |||||      ||||| ====';
    header[7]:='==============================================';
    header[8]:='======    S    Y    S    T    E    M    ======';
    header[9]:='==============================================';
    header[10]:='=== Inventory Smart Stock & Control System ===';
    header[11]:='==============================================';
    repeat
        clrscr;
        for h:=0 to 11 do 
        begin
            textcolor(Blue);
            writeln(header[h]);
        end;
        writeln;
        textcolor(White);
        writeln('1. Cek Stok Barang');
        writeln('2. Manage Barang');
        writeln('3. Manage Stok Barang');
        writeln('0. Keluar');
        write('Pilih opsi : ');
        readln(opsiA);
        if opsiA = 1 then //fitur 1. Cek Stok barang
        begin
            if length(namaBarang) = 1 then
            begin
                clrscr;
                for h:=0 to 11 do 
                begin
                    textcolor(Blue);
                    writeln(header[h]);
                end;
                writeln;
                textcolor(green);
                writeln('Barang belum ada! Silahkan perbarui stok barang!');
            end
            else
            begin
                clrscr;
                for h:=0 to 11 do
                begin
                    textcolor(Blue);
                    writeln(header[h]);
                end;
                writeln;
                textcolor(lightblue);
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
        else if opsiA = 2 then //fitur 2. manage barang
        begin
            clrscr;
            for h:=0 to 11 do 
            begin
                textcolor(Blue);
                writeln(header[h]);
            end;
            writeln;
            textcolor(White);
            writeln('1. Tambah Barang');
            writeln('2. Hapus Barang Terakhir');
            write('Pilih opsi : ');
            readln(opsiB);
            if opsiB = 1 then //fitur 2.1 tambah barang
            begin
                repeat
                    clrscr;
                    for h:=0 to 11 do 
                    begin
                        textcolor(Blue);
                        writeln(header[h]);
                    end;
                    writeln;
                    textcolor(white);
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
                    opsiX:=lowercase(opsiX);
                until(opsiX = 'n');
            end
            else if opsiB = 2 then //opsi 2.2 menghapus barang terakhir
            begin
                clrscr;
                for h:=0 to 11 do 
                begin
                    textcolor(Blue);
                    writeln(header[h]);
                end;
                writeln;
                textcolor(lightblue);
                SetLength(namaBarang, length(namaBarang)-1);
                SetLength(jumlahBarang, length(jumlahBarang)-1);
                writeln('Barang terakhir berhasil dihapus');
            end
            else
            begin
                clrscr;
                for h:=0 to 11 do 
                begin
                    textcolor(Blue);
                    writeln(header[h]);
                end;
                writeln;
                textcolor(red);
                writeln('OPSI TIDAK VALID!');
            end;
        end
        else if opsiA = 3 then //fitur 3. manage stok barang
        begin
            repeat
                if length(namaBarang) = 1 then
                begin
                    clrscr;
                    for h:=0 to 11 do 
                    begin
                        textcolor(Blue);
                        writeln(header[h]);
                    end;
                    writeln;
                    textcolor(lightblue);
                    writeln('Barang belum ada! Silahkan perbarui stok barang!');
                end
                else
                begin
                    clrscr;
                    for h:=0 to 11 do 
                    begin
                        textcolor(Blue);
                        writeln(header[h]);
                    end;
                    writeln;
                    textcolor(lightblue);
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
                    writeln;
                    writeln('1. Tambah Stok Barang');
                    writeln('2. Kurangi Stok Barang');
                    write('Pilih Opsi : ');
                    readln(opsiB);
                    if opsiB = 1 then // fitur 3.1 tambah stok barang
                    begin
                        clrscr;
                        for h:=0 to 11 do 
                        begin
                            textcolor(Blue);
                            writeln(header[h]);
                        end;
                        writeln;
                        textcolor(lightblue);
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
                        textcolor(white);
                        writeln('==============================================');
                        writeln;
                        write('masukkan nomor barang yang stoknya ingin ditambah : ');
                        readln(i);
                        write('masukkan jumlah stok yang ingin ditambah : ');
                        readln(j);
                        jumlahBarang[i] := jumlahBarang[i] + j;
                        writeln('Stok barang "', namaBarang[i], '" berhasil ditambah sebanyak ', j, ' menjadi ', jumlahBarang[i]);
                    end
                    else if opsiB = 2 then // fitur 3.2 kurangi stok barang
                    begin
                        clrscr;
                        for h:=0 to 11 do 
                        begin
                            textcolor(Blue);
                            writeln(header[h]);
                        end;
                        writeln;
                        textcolor(lightblue);
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
                        writeln;
                        textcolor(white);
                        write('masukkan nomor barang yang stoknya ingin dikurangi : ');
                        readln(i);
                        write('masukkan jumlah stok yang ingin dikurangi : ');
                        readln(j);
                        jumlahBarang[i] := jumlahBarang[i] - j;
                        writeln('Stok barang "', namaBarang[i], '" berhasil dikurangi sebanyak ', j);
                    end
                    else 
                    begin
                        clrscr;
                        for h:=0 to 11 do
                        begin
                            textcolor(Blue);
                            writeln(header[h]);
                        end;
                        writeln;
                        textcolor(red);
                        writeln('OPSI TIDAK VALID!');
                    end;
                end;
            writeln;
            textcolor(white);
            if length(namaBarang) <> 0 then
            begin
                write('Apakah ingin melanjutkan manage stok barang (y/n) : ');
            end;
            readln(opsiX);
            opsiX:=lowercase(opsiX);
            until(opsiX='n');
        end
        else if opsiA = 0 then
        begin
            break;
        end
        else
        begin
            clrscr;
            for h:=0 to 11 do
            begin
                textcolor(Blue);
                writeln(header[h]);
            end;
            writeln;
            textcolor(red);
            writeln('OPSI TIDAK VALID!');
        end;
    writeln;
    textcolor(white);
    write('Apakah ingin melanjutkan aktivitas (y/n) : ');
    readln(opsiX);
    opsiX:=lowercase(opsiX);
    until(opsiX='n');
    clrscr;
    textcolor(Blue);
    for h:=0 to 11 do 
    begin
        writeln(header[h]);
    end;
    writeln;
    writeln('==============================================');
    writeln('===   S  A  M  P  A  I     J  U  M  P  A   ===');
    writeln('==============================================');
end.