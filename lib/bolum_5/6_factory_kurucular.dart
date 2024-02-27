import '1_Sınıf _ve_nesne_kavramlari.dart';

void main(List<String> args) {
  Ogrenci omer = Ogrenci(5, "omer");
  Ogrenci hasan = Ogrenci.idsiz("hasan");
  Ogrenci ayse = Ogrenci.factoryKurucu(-9, "ayse");

  print(omer.id);

  print(ayse.id);
  print(ayse.isim);

  int sayi = toplam();

  // print(sayi);
}

int toplam() {
  return 3 + 5;
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("varsayılan kurucu calıştı");
  }

  Ogrenci.idsiz(this.isim) {
    print("isimlendirilmiş kurucu calıştı");
  }

  factory Ogrenci.factoryKurucu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }
}
