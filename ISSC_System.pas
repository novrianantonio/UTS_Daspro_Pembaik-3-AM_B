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
    setlength(namaBarang, 1); //set panjang array namaBarang
    setlength(jumlahBarang, 1); //set panjang array jumlahBarang
    setlength(header, 12); //set panjang array header

    TextColor(White);
    writeln('===============================================');
    write('                 LOADING');
    for l:= 1 to 5 do //perulangan titik loading
    begin
        write('.');
        delay(500); //delay 500ms sebelum melakukan cek komdisi perulangan kembali
    end;
    writeln;
    writeln('===============================================');


    clrscr;
    //deklarasi isi array 0..12 header
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
        for h:=0 to 11 do //perulangan cetak header full
        begin
            textcolor(Blue); //beri warna biru
            writeln(header[h]);
        end;
        writeln;
        textcolor(White); //beri warna putih
        writeln('1. Cek Stok Barang');
        writeln('2. Manage Barang');
        writeln('3. Manage Stok Barang');
        writeln('0. Keluar');
        write('Pilih opsi : ');
        readln(opsiA); //input opsiA
        if opsiA = 1 then //fitur 1. Cek Stok barang
        begin
            if length(namaBarang) = 1 then //cek apakah panjang array belum bertambah
            begin
                clrscr;
                for h:=0 to 11 do //perulangan cetak header full
                begin
                    textcolor(Blue); //beri warna biru
                    writeln(header[h]);
                end;
                writeln;
                textcolor(green); //beri warna hijau
                writeln('Barang belum ada! Silahkan perbarui stok barang!');
            end
            else //jika kondisi diatas salah
            begin
                clrscr;
                for h:=0 to 11 do //perulangan cetak header full
                begin
                    textcolor(Blue); //beri warna biru
                    writeln(header[h]);
                end;
                writeln;
                textcolor(lightblue); //beri warna biru terang
                writeln('==============================================');
                writeln('= No. | Nama Barang            | jumlah Stok =');
                writeln('=--------------------------------------------=');
                for i:=1 to high(namaBarang) do //perulangan cetak isi array (daftar nama barang dan sisa stok)
                begin
                    write('= ', i, '.');
                    write('  | ', namaBarang[i]);
                    for j:=1 to (22-length(namaBarang[i])) do //cetak perulangan merapikan baris tabel
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
            for h:=0 to 11 do //perulangan cetak header full
            begin
                textcolor(Blue); //beri warna biru
                writeln(header[h]);
            end;
            writeln;
            textcolor(White); //beri warna putih
            writeln('1. Tambah Barang');
            writeln('2. Hapus Barang Terakhir');
            write('Pilih opsi : ');
            readln(opsiB); //input opsiB
            if opsiB = 1 then //fitur 2.1 tambah barang
            begin
                repeat
                    clrscr;
                    for h:=0 to 11 do //perulangan cetak header full
                    begin
                        textcolor(Blue); //beri warna biru
                        writeln(header[h]);
                    end;
                    writeln;
                    textcolor(white); //beri warna putih
                    write('Masukkan nama barang : ');
                    readln(barangBaru); //input nama barangBaru
                    write('Masukkan stok barang : ');
                    readln(stokBarang); //input jumlah stokBarang baru
                    SetLength(namaBarang, length(namaBarang)+1); //menambah panjang array namaBarang
                    SetLength(jumlahBarang, length(jumlahBarang)+1); //menambah panjang array jumlahBarang
                    namaBarang[high(namaBarang)]:=barangBaru; //isi array namaBarang terakhir dengan barangBaru
                    jumlahBarang[high(jumlahBarang)]:=stokBarang; //isi array jumlahBarang terakhir dengan stokBarang
                    writeln;
                    writeln('Barang "', barangBaru, '" berjumlah ', stokBarang, ' , berhasil di catat!');
                    write('Apakah ingin melanjutkan penambahan barang (y/n) : ');
                    readln(opsiX); //input opsiX
                    opsiX:=lowercase(opsiX); //membuat char input opsiX menjadi huruf kecil
                until(opsiX = 'n'); //perulangan sampai opsiX = "n"
            end
            else if opsiB = 2 then //opsi 2.2 menghapus barang terakhir
            begin
                clrscr;
                for h:=0 to 11 do //perulangan cetak header full
                begin
                    textcolor(Blue); //beri warna biru
                    writeln(header[h]);
                end;
                writeln;
                textcolor(lightblue); //beri warna biru terang
                SetLength(namaBarang, length(namaBarang)-1); //mengurangi panjang array namaBarang
                SetLength(jumlahBarang, length(jumlahBarang)-1); //mengurangi panjang array jumlahBarang
                writeln('Barang terakhir berhasil dihapus');
            end
            else //jika kondisi diatas salah
            begin
                clrscr;
                for h:=0 to 11 do //perulangan cetak header full
                begin
                    textcolor(Blue); //beri warna biru
                    writeln(header[h]);
                end;
                writeln;
                textcolor(red); //beri warna merah
                writeln('OPSI TIDAK VALID!');
            end;
        end
        else if opsiA = 3 then //fitur 3. manage stok barang
        begin
            repeat
                if length(namaBarang) = 1 then //cek kondisi panjang array apakah belum bertambah
                begin
                    clrscr;
                    for h:=0 to 11 do //perulangan cetak header full
                    begin
                        textcolor(Blue); //beri warna biru
                        writeln(header[h]);
                    end;
                    writeln;
                    textcolor(lightblue); //beri warna biru terang
                    writeln('Barang belum ada! Silahkan perbarui stok barang!');
                end
                else //jika kondisi diatas salah
                begin
                    clrscr;
                    for h:=0 to 11 do //perulangan cetak header full
                    begin
                        textcolor(Blue); //beri warna biru
                        writeln(header[h]);
                    end;
                    writeln;
                    textcolor(lightblue); //beri warna biru terang
                    writeln('==============================================');
                    writeln('= No. | Nama Barang            | jumlah Stok =');
                    writeln('=--------------------------------------------=');
                    for i:=1 to high(namaBarang) do //perulangan cetak isi array (daftar nama barang dan sisa stoknya)
                    begin
                        write('= ', i, '.');
                        write('  | ', namaBarang[i]);
                        for j:=1 to (22-length(namaBarang[i])) do //perulangan merapikan baris tabel
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
                    readln(opsiB); //input opsiB
                    if opsiB = 1 then // fitur 3.1 tambah stok barang
                    begin
                        clrscr;
                        for h:=0 to 11 do //perulangan cetak header full
                        begin
                            textcolor(Blue); //beri warna biru
                            writeln(header[h]);
                        end;
                        writeln;
                        textcolor(lightblue); //beri warna biru terang
                        writeln('==============================================');
                        writeln('= No. | Nama Barang            | jumlah Stok =');
                        writeln('=--------------------------------------------=');
                        for i:=1 to high(namaBarang) do //perulangan cetak isi array (daftar nama barang dan sisa stoknya)
                        begin
                            write('= ', i, '.');
                            write('  | ', namaBarang[i]);
                            for j:=1 to (22-length(namaBarang[i])) do //perulangan merapikan baris tabel
                            begin
                                write(' ');
                            end;
                            writeln(' | ', jumlahBarang[i]:11, ' =');
                        end;
                        textcolor(white); //beri warna putih
                        writeln('==============================================');
                        writeln;
                        write('masukkan nomor barang yang stoknya ingin ditambah : ');
                        readln(i); //input nomor barang
                        write('masukkan jumlah stok yang ingin ditambah : ');
                        readln(j); //input menambah stok barang
                        jumlahBarang[i] := jumlahBarang[i] + j; 
                        writeln('Stok barang "', namaBarang[i], '" berhasil ditambah sebanyak ', j, ' menjadi ', jumlahBarang[i]);
                    end
                    else if opsiB = 2 then // fitur 3.2 kurangi stok barang
                    begin
                        clrscr;
                        for h:=0 to 11 do //perulangan cetak header full
                        begin
                            textcolor(Blue); //beri warna biru
                            writeln(header[h]);
                        end;
                        writeln;
                        textcolor(lightblue); //beri warna biru terang
                        writeln('==============================================');
                        writeln('= No. | Nama Barang            | jumlah Stok =');
                        writeln('=--------------------------------------------=');
                        for i:=1 to high(namaBarang) do //perulangan cetak isi array (daftar nama barang dan sisa stoknya)
                        begin
                            write('= ', i, '.');
                            write('  | ', namaBarang[i]);
                            for j:=1 to (22-length(namaBarang[i])) do //perulangan merapikan baris tabel
                            begin
                                write(' ');
                            end;
                            writeln(' | ', jumlahBarang[i]:11, ' =');
                        end;
                        writeln('==============================================');
                        writeln;
                        textcolor(white); //beri warna putih
                        write('masukkan nomor barang yang stoknya ingin dikurangi : ');
                        readln(i); //input nomor baramg
                        write('masukkan jumlah stok yang ingin dikurangi : ');
                        readln(j); //input pengurangan stok barang
                        jumlahBarang[i] := jumlahBarang[i] - j;
                        writeln('Stok barang "', namaBarang[i], '" berhasil dikurangi sebanyak ', j);
                    end
                    else //jika kondisi diatas salah
                    begin
                        clrscr;
                        for h:=0 to 11 do //perulangan cetak header full
                        begin
                            textcolor(Blue); //beri warna biru
                            writeln(header[h]);
                        end;
                        writeln;
                        textcolor(red); //beri warna merah
                        writeln('OPSI TIDAK VALID!');
                    end;
                end;
            writeln;
            textcolor(white); //beri warna putih
            if length(namaBarang) <> 0 then //cek apakah panjang array namaBarang tidak sama dengan 0
            begin
                write('Apakah ingin melanjutkan manage stok barang (y/n) : ');
            end;
            readln(opsiX); //input opsiX
            opsiX:=lowercase(opsiX); //membuat char opsiX menjadi huruf kecil
            until(opsiX='n'); //perulangan sampai opsiX = "n"
        end
        else if opsiA = 0 then //cek apakah opsiA = 0
        begin
            break; //berhetikan perulangan 
        end
        else //jika kondisi diatas salah
        begin
            clrscr;
            for h:=0 to 11 do //perulangan cetak header full
            begin
                textcolor(Blue); //beri warna biru
                writeln(header[h]);
            end;
            writeln;
            textcolor(red); //beri warna merah
            writeln('OPSI TIDAK VALID!');
        end;
    writeln;
    textcolor(white); //beri warna putih
    write('Apakah ingin melanjutkan aktivitas (y/n) : ');
    readln(opsiX); //input opsiX
    opsiX:=lowercase(opsiX); //membuat char opsiX menjadi huruf kecil
    until(opsiX='n'); //perulamgan sampai opsiX = "n"
    clrscr;
    textcolor(Blue); //beri warna biru
    for h:=0 to 11 do //perulangan cetak header full
    begin
        writeln(header[h]); 
    end;
    writeln;
    writeln('==============================================');
    writeln('===   S  A  M  P  A  I     J  U  M  P  A   ===');
    writeln('==============================================');
end.