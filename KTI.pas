program makanan;
var
  mangga,belimbing,alpukat,apel, jeruk,air,esbatu,blacktea,susucair,gulapasir,peng,modal,matcha,roti_burger,timun,daging_burger,selada,mayonaise,saus_sambal : real;
  total_green, total_thai, total_jus, total_burger,total_hotdog, total_makanan, total_minuman, saus_tomat,roti_hotdog,mentega,sosis,mustard,sedotan,gelas,karton : real;
  blender, kompor, sendok, saringan, pisau, mangkuk, toples, pompa_galon, penyimpan_es, tatakan, pemanggang, spatula : real;
  procedure jus();
  var
    mangga1,alpukat1,belimbing1,apel1,jeruk1,gelas1,sedotan1,susucair1,air1,esbatu1,dasar,jus_mangga,jus_alpukat,jus_belimbing,jus_apel,jus_jeruk : real;
    mangga2,alpukat2,belimbing2,apel2,jeruk2,profit_mangga,profit_alpukat,profit_belimbing,persen_mangga,persen_alpukat,persen_belimbing,
    persen_apel, persen_jeruk,untung_kotor, profit_apel,profit_jeruk, harga_mangga, harga_alpukat, harga_jeruk, harga_belimbing, harga_apel, tot_mod, tot_peng : real;
    x, y : integer;
  begin
    writeln;
    write('Masukan jumlah penjualan dalam sehari    : ');
    readln(x);
    write('Masukan jumlah target penjualan (bulan)  : ');
    readln(y);
    mangga1 := 9*x*30*y*mangga/40;
    alpukat1 := x*30*y*alpukat/8;
    belimbing1 := 30*x*y*belimbing/9;
    apel1 := 7*x*30*y*apel/70;
    jeruk1 := 30*x*y*jeruk/20;
    gelas1 := 30*x*y*gelas;
    sedotan1 := 30*x*y*sedotan/21;
    susucair1 := 30*x*y*susucair/10;
    air1 := 19*x*y*30*air/95;
    esbatu1 := 3*x*30*y*esbatu/10;
    dasar := gelas + (sedotan/500) + (air*200/19000) + (esbatu*300/1000) + (susucair*100/1000);
    jus_mangga := dasar + (mangga*225/1000);
    jus_belimbing := dasar + (belimbing*110/1000);
    jus_alpukat := dasar + (alpukat*125/1000);
    jus_apel := dasar + (apel*70/1000);
    jus_jeruk := dasar + (jeruk*50/1000);
    writeln;
    write('Harga jual Jus Mangga      : ');
    readln(harga_mangga);
    write('Harga jual Jus Alpukat    : ');
    readln(harga_alpukat);
    write('Harga jual Jus Belimbing  : ');
    readln(harga_belimbing);
    write('Harga jual Jus Apel       : ');
    readln(harga_apel);
    write('Harga jual Jus Jeruk      : ');
    readln(harga_jeruk);
    mangga2 := harga_mangga*x*y*30;
    alpukat2 := harga_alpukat*x*y*30;
    belimbing2 := harga_belimbing*x*y*30;
    apel2 := harga_apel*x*y*30;
    jeruk2 := harga_jeruk*x*y*30;
    profit_mangga := harga_mangga - jus_mangga;
    profit_belimbing := harga_belimbing - jus_belimbing;
    profit_alpukat := harga_alpukat - jus_alpukat;
    profit_apel := harga_apel - jus_apel;
    profit_jeruk := harga_jeruk - jus_jeruk;
    persen_mangga := profit_mangga/jus_mangga*100;
    persen_alpukat := profit_alpukat/jus_alpukat*100;
    persen_belimbing := profit_belimbing/jus_belimbing*100;
    persen_apel := profit_apel/jus_apel*100;
    persen_jeruk := profit_jeruk/jus_jeruk*100;
    tot_mod := mangga1 + alpukat1 + belimbing1 + apel1 + jeruk1 + susucair1 + esbatu1 + air1 + gelas1 + sedotan1;
    tot_peng := mangga2 + alpukat2 + belimbing2 + apel2 + jeruk2;
    writeln;
    writeln('Modal dalam 1 gelas jus mangga : Rp ',jus_mangga:0:0);
    writeln('Modal dalam 1 gelas jus alpukat : Rp ',jus_alpukat:0:0);
    writeln('Modal dalam 1 gelas jus belimbing : Rp ',jus_belimbing:0:0);
    writeln('Modal dalam 1 gelas jus apel : Rp ',jus_apel:0:0);
    writeln('Modal dalam 1 gelas jus jeruk : Rp ',jus_jeruk:0:0);
    writeln;
    writeln('Keuntungan dalam 1 gelas jus mangga : Rp ',profit_mangga:0:0,' (',persen_mangga:0:2,'%)');
    writeln('Keuntungan dalam 1 gelas jus alpukat : Rp ',profit_alpukat:0:0,' (',persen_alpukat:0:2,'%)');
    writeln('Keuntungan dalam 1 gelas jus belimbing : Rp ',profit_belimbing:0:0,' (',persen_belimbing:0:2,'%)');
    writeln('Keuntungan dalam 1 gelas jus apel : Rp ',profit_apel:0:0,' (',persen_apel:0:2,'%)');
    writeln('Keuntungan dalam 1 gelas jus jeruk : Rp ',profit_jeruk:0:0,' (',persen_jeruk:0:2,'%)');
    writeln;
    writeln('Total Revenue dari penjualan semua jenis jus : Rp ',tot_peng:0:0);
    writeln('Variable Cost : Rp ',tot_mod:0:0);
    untung_kotor := tot_peng-tot_mod;
    writeln;
    writeln('Keuntungan kotor dari jus : Rp ',untung_kotor:0:0);
    writeln;
    writeln('Fixed Cost    : Rp ',total_jus:0:0);
  end;


  procedure greentea();
  var
    x, y : integer;
    gelas1,sedotan1,susucair1,air1,esbatu1,gulapasir1,matcha1,harga_green, greentea,greentea2,profit,persen,tot_mod,profit_kotor : real;
  begin
    writeln;
    write('Masukkan jumlah penjualan dalam sehari   : ');
    readln(x);
    write('Masukkan jumlah target penjualan (bulan) : ');
    readln(y);
    gelas1 := 30*x*y*gelas;
    sedotan1 := 30*x*y*sedotan/21;
    susucair1 := 30*x*y*susucair/10;
    air1 := 19*x*y*30*air/95;
    esbatu1 := 6*x*30*y*esbatu/19;
    gulapasir1 := 30*x*y*gulapasir/40;
    matcha1 := 30*x*y*matcha/25;
    writeln;
    write('Harga jual greentea : ');
    readln(harga_green);
    greentea := gelas + (sedotan/500) + (air*200/19000) + (esbatu*315/1000) + (susucair*100/1000) + (gulapasir*24/1000) + (matcha*8/200);
    greentea2 := harga_green*x*y*30;
    profit := harga_green - greentea;
    persen := profit/greentea*100;
    tot_mod := gelas1 + sedotan1 + susucair1 + air1 + esbatu1 + gulapasir1 + matcha1;
    writeln;
    writeln('Modal dalam 1 gelas greentea : Rp ',greentea:0:0);
    writeln;
    writeln('Keuntungan dalam 1 gelas greentea : Rp ',profit:0:0,' (',persen:0:2,'%)');
    writeln;
    writeln('Total Revenue dari penjualan greentea : Rp ',greentea2:0:0);
    writeln('Variable Cost : Rp ',tot_mod:0:0);
    profit_kotor := greentea2-tot_mod;
    writeln;
    writeln('Keuntungan Kotor dari greentea : Rp ',profit_kotor:0:0);
    writeln;
    writeln('Fixed Cost    : Rp ',total_green:0:0);
  end;

  procedure thaitea();
  var
    x, y : integer;
    gelas1,sedotan1,thaitea,thaitea_sim,susucair1,air1,esbatu1,gulapasir1,blacktea1,harga_thai,thaitea2,profit,persen,tot_mod,profit_kotor : real;
  begin
    writeln;
    write('Masukkan jumlah penjualan dalam sehari   : ');
    readln(x);
    write('Masukkan jumlah target penjualan (bulan) : ');
    readln(y);
    gelas1 := 30*x*y*gelas;
    sedotan1 := 30*x*y*sedotan/21;
    susucair1 := 30*x*y*susucair/10;
    air1 := 19*x*y*30*air/95;
    esbatu1 := 6*x*30*y*esbatu/19;
    gulapasir1 := 30*x*y*gulapasir/40;
    blacktea1 := 30*x*y*blacktea/25;
    writeln;
    write('Harga jual thaitea : ');
    readln(harga_thai);
    thaitea := gelas + (sedotan/500) + (air*200/19000) + (esbatu*315/1000) + (susucair*100/1000) + (gulapasir*24/1000) + (blacktea*8/200);
    thaitea2 := harga_thai*x*y*30;
    profit := harga_thai - thaitea;
    persen := profit/thaitea*100;
    tot_mod := gelas1 + sedotan1 + susucair1 + air1 + esbatu1 + gulapasir1 + blacktea1;
    writeln;
    writeln('Modal dalam 1 gelas thaitea : Rp ',blacktea:0:0);
    writeln('Keuntungan dalam 1 gelas thaitea : Rp ',profit:0:0,' (',persen:0:2,'%)');
    writeln;
    writeln('Total Revenue dari penjualan thaitea : Rp ',thaitea2:0:0);
    writeln('Variable Cost : Rp ',tot_mod:0:0);
    profit_kotor := thaitea2-tot_mod;
    writeln;
    writeln('Keuntungan Kotor dari thaitea : Rp ',profit_kotor:0:0);
    writeln;
    writeln('Fixed Cost    : Rp ',total_green:0:0);
  end;

procedure burger();
var
  karton1,x,y,roti_burger1,timun1,daging_burger1,selada1,mayonaise1,saus_sambal1,saus_tomat1,harga_burger,burger,burger2,profit,persen,tot_mod,prof_kotor : real;
begin
  writeln;
  write('Masukkan target penjualan dalam 1 hari : ');
  readln(x);
  write('Masukkan target masa penjualan (bulan) : ');
  readln(y);
  karton1 := 30*x*y*karton;
  roti_burger1 := 20*x*30*y*roti_burger/20;
  timun1 := 30*x*y*timun/40;
  daging_burger1 := 10*x*30*y*daging_burger/10;
  selada1 := 30*x*y*selada/40;
  mayonaise1 := 100*x*30*y*mayonaise/10;
  saus_sambal1 := 30*x*y*saus_sambal/100;
  saus_tomat1 := 30*x*y*saus_tomat/100;
  writeln;
  write('Harga Jual Burger                 : ');
  readln(harga_burger);
  burger := (karton/50) + (saus_tomat/100) + (saus_sambal/100) + (mayonaise/10) + (selada*25/1000) + (daging_burger/10) + (timun*25/1000) + (roti_burger/20);
  burger2 := harga_burger*x*y*30;
  profit := harga_burger - burger;
  persen := profit/burger*100;
  tot_mod := karton1 + roti_burger1 + timun1 + daging_burger1 + selada1 + mayonaise1 + saus_sambal1 + saus_tomat1;
  writeln;
  writeln('Modal dalam satu porsi Burger : Rp ',burger:0:0);
  writeln('Keuntungan dalam satu porsi Burger : Rp ',profit:0:0,' (',persen:0:2,'%)');
  writeln;
  writeln('Total Revenue dari penjualan burger : Rp ',burger2:0:0);
  writeln('Variable Cost : Rp ',tot_mod:0:0);
  prof_kotor := burger2-tot_mod;
  writeln;
  writeln('Keuntungan Kotor dari penjualan Burger : Rp ',prof_kotor:0:0);
  writeln;
  writeln('Fixed Cost    : Rp ',total_burger:0:0);
end;


procedure hotdog();
var
  karton1,x,y,roti_hotdog1,mentega1,sosis1,selada1,mayonaise1,saus_sambal1,saus_tomat1,mustard1,harga_hotdog,hotdog,hotdog2,profit,persen,tot_mod,prof_kotor : real;
begin
  writeln;
  write('Masukkan target penjualan dalam 1 hari : ');
  readln(x);
  write('Masukkan target masa penjualan (bulan) : ');
  readln(y);
  karton1 := 30*x*y*karton;
  roti_hotdog1 := 6*x*30*y*roti_hotdog/6;
  sosis1 := 48*x*30*y*sosis/48;
  selada1 := 30*x*y*selada/40;
  mentega1 := 200*x*y*30*mentega/20;
  mayonaise1 := 100*x*30*y*mayonaise/10;
  saus_sambal1 := 30*x*y*saus_sambal/100;
  saus_tomat1 := 30*x*y*saus_tomat/100;
  mustard1 := 510*x*30*y*mustard/51;
  writeln;
  write('Harga Jual Hot Dog                    : ');
  readln(harga_hotdog);
  hotdog := (karton/50) + (saus_tomat/100) + (saus_sambal/100) + (mayonaise/10) + (selada*25/1000) + (sosis/10) + (mentega*10/200) + (roti_hotdog/6) + (mustard*10/225);
  hotdog2 := harga_hotdog*x*y*30;
  profit := harga_hotdog - hotdog;
  persen := profit/hotdog*100;
  tot_mod := karton1 + roti_hotdog1 + mentega1 + sosis1 + selada1 + mayonaise1 + saus_sambal1 + saus_tomat1 + mustard1;
  writeln;
  writeln('Modal dalam satu porsi Hot Dog : Rp ',hotdog:0:0);
  writeln('Keuntungan dalam satu porsi Hot Dog : Rp ',profit:0:0,' (',persen:0:2,'%)');
  writeln;
  writeln('Total Revenue dari penjualan Hot Dog : Rp ',hotdog2:0:0);
  writeln('Variable Cost : Rp ',tot_mod:0:0);
  prof_kotor := hotdog2-tot_mod;
  writeln;
  writeln('Keuntungan Kotor dari penjualan Hot Dog : Rp ',prof_kotor:0:0);
  writeln;
  writeln('Fixed Cost    : Rp ',total_hotdog:0:0);
end;


procedure minuman_gabungan();
begin
  writeln;
  writeln('************************************************');
  writeln('**********************JUS***********************');
  writeln('************************************************');
  jus;
  writeln('************************************************');
  writeln;
  writeln;
  writeln('************************************************');
  writeln('*******************GREENTEA*********************');
  writeln('************************************************');
  greentea;
  writeln('************************************************');
  writeln;
  writeln;
  writeln('************************************************');
  writeln('********************THAITEA*********************');
  writeln('************************************************');
  thaitea;
  writeln('************************************************');
  writeln;
  writeln('Fixed Cost    (umum)      : Rp ',total_minuman:0:0);
end;

procedure makanan_gabungan();
begin
  writeln;
  writeln('************************************************');
  writeln('********************BURGER**********************');
  writeln('************************************************');
  burger;
  writeln('************************************************');
  writeln;
  writeln;
  writeln('************************************************');
  writeln('*******************HOT DOG**********************');
  writeln('************************************************');
  hotdog;
  writeln('************************************************');
  writeln;
  writeln('Fixed Cost        (umum)  : Rp ',total_makanan:0:0);
end;


procedure makanan();
var
  kategori, kat2 : string;
begin
  write('Masukan Kategori (Umum/Terpusat) : ');
  readln(kategori);
  case kategori of
  'umum' : makanan_gabungan;
  'terpusat' : begin
    writeln('Masukkan kategori anda (Burger/Hot Dog) : ');
    readln(kat2);
    case kat2 of
    'burger' : burger;
    'hot dog' : hotdog;
    end;
    end;
  end;
end;


procedure minuman();
var
  kat1, kategori1, kategori2, kategori : string;
  subkat : char;
begin
  write('Masukan kategori (umum/Terpusat) : ');
  readln(kategori);
  if (kategori = 'umum') then
    minuman_gabungan
  else
    begin
      write('Masukkan jenis kombinasi (1/2) : ');
      readln(subkat);
      if (subkat = '1') then
        begin
          write('Masukkan ketegori anda : ');
          readln(kat1);
          case kat1 of
          'greentea' : greentea;
          'thaitea' : thaitea;
          'jus' : jus;
          end;
        end
      else
        begin
          write('Masukkan kategori kombinasi anda (greentea,thaitea,jus) : ');
          readln(kategori1,kategori2);
          case kategori1 of
          'greentea' : greentea;
          'thaitea' : thaitea;
          'jus' : jus;
          end;
          case kategori2 of
          'greentea' : greentea;
          'thaitea' : thaitea;
          'jus' : jus;
          end;
        end;
    end;
end;

procedure pemilihan();
var
  kategori : string;
begin
  write('Masukkan Kategori usaha anda (minuman,fastfood) : ');
  readln(kategori);
  case kategori of
  'minuman' : minuman;
  'fastfood' : makanan;
  end;
end;

begin
  mangga := 13000;
  belimbing := 7000;
  alpukat := 10000;
  apel := 32000;
  jeruk := 13000;
  air := 10000;
  esbatu := 3000;
  blacktea := 60000;
  susucair := 17000;
  gulapasir := 16000;
  matcha := 37000;
  roti_burger := 2000;
  timun := 10000;
  daging_burger := 34000;
  selada := 15000;
  mayonaise := 5600;
  saus_sambal := 18000;
  saus_tomat := 15000;
  roti_hotdog := 15000;
  mentega := 8000;
  sosis := 63000;
  mustard := 30000;
  sedotan := 21000;
  gelas := 300;
  karton := 24000;
  blender := 110000;
  kompor := 150000;
  sendok := 15000;
  toples := 5500;
  pisau := 15000;
  tatakan := 10000;
  saringan := 15000;
  mangkuk := 17500;
  pompa_galon := 20000;
  penyimpan_es := 160000;
  pemanggang := 175000;
  spatula := 30000;
  total_hotdog := kompor + pemanggang + pisau + spatula + tatakan + penyimpan_es;
  total_burger := kompor + pemanggang + pisau + spatula + tatakan + penyimpan_es;
  total_jus := blender + sendok + saringan + pisau + mangkuk + pompa_galon + penyimpan_es + tatakan;
  total_thai := kompor + sendok + saringan + (toples*2) + pompa_galon + penyimpan_es;
  total_green := kompor + sendok + saringan + (toples*2) + pompa_galon + penyimpan_es;
  total_minuman := kompor + sendok + blender + (saringan*2) + pisau + mangkuk + pompa_galon + penyimpan_es;
  total_makanan := kompor + pemanggang + pisau + spatula + tatakan + penyimpan_es;
  pemilihan;
end.
