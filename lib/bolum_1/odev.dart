/*Sorular
1- Adınızı, soyadınızı ve yaşınızı farklı değişkenlerde saklayıp, ekrana
"Benim adım emre altunbilek, yaşım 34 ve tüm ismimdeki karakter sayısı : 15'tir" yazdırın

2- Bir üçgenin tüm kenarlarını değişkenlerde saklayıp çevresini ekrana yazdırın
örnek birinci kenarı 3, ikinci kenarı 4, üçüncü kenarı 5 olan üçgenin çevresi 12dir
*/

import 'dart:async';

void main(List<String> args) {
  String ad = "omer";
  var soyad = "menekse";
  int yas = 39;

  print(
      "benim adım $ad  soyadım $soyad yaşım ${yas} ve tüm karakterlerin toplamı: ${(ad.length + soyad.length)}");

  int birincikenar = 3;
  int ikincikenar = 4;
  int ucuncukenar = 5;

  print(
      "Birinci kenar $birincikenar, ikinci kenar $ikincikenar, ucuncu kenar $ucuncukenar toplamı: ${(birincikenar + ikincikenar + ucuncukenar)}");
}
