void main(List<String> args) {
  Ogrenci omer = Ogrenci(10, "Omer");
  Ogrenci hasan = Ogrenci.idSiz("hasa");
  Ogrenci ayse = Ogrenci.factoryKurucusu(-9, "ayse");
  print("***********");
  print(ayse.id);
  print(ayse.isim);

  int sayi = toplam();
}

int toplam() {
  return 3 + 5;
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim) {
    print("varsayılan kurucu calıstı");
  }

  Ogrenci.idSiz(this.isim) {
    print("isimlendirilmis kurucu calıştı");
  }

  factory Ogrenci.factoryKurucusu(int id, String isim) {
    if (id < 0) {
      return Ogrenci(5, isim);
    } else
      return Ogrenci(id, isim);
  }
}
