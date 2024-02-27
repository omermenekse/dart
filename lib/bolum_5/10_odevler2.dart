import 'dart:math';

import '11_ogrenci.dart';
import '1_Sınıf _ve_nesne_kavramlari.dart';

void main(List<String> args) {
  /*Soru 2
Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin idsi ve not değeri
tutulmalı. 100 elemanlı bir listede id ve not değerlerini rastgele olusturarak
bu ogrencileri saklayın ve bu ogrencileri  yazdıran metotu yazın.
*/
  Ogrenci2 ogr1 = Ogrenci2(id: 5, notDegeri: 10);

  List<Ogrenci2> tumOgrenciler = List.filled(5, Ogrenci2());

  ogrenciListesiniDoldur(tumOgrenciler);
  //print(tumOgrenciler[5].notDegeri);
  //print(tumOgrenciler[5].id);
  print("************");
  for (Ogrenci2 oankiOgrenci in tumOgrenciler) {
    print(oankiOgrenci);
  }
  print("Tüm öğrencilerin ortalaması : " +
      ogrencilerinOrtalamasiniHesapla(tumOgrenciler).toString());
}

void ogrenciListesiniDoldur(List<Ogrenci2> liste) {
  for (int i = 0; i < liste.length; i++) {
    liste[i] =
        Ogrenci2(id: Random().nextInt(1000), notDegeri: Random().nextInt(100));
  }
}

double ogrencilerinOrtalamasiniHesapla(List<Ogrenci2> liste) {
  int toplam = 0;

  for (Ogrenci2 oankiOgrenci in liste) {
    toplam = toplam + oankiOgrenci.notDegeri;
  }
  return toplam / liste.length;
}
