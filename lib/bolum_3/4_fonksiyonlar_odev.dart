/*
SORU1: Parametre olarak  bir tane int sayı alan fonksiyon yazınız.
Bu fonksiyon aldığı değere kadar olan çift sayıların toplamını geriye döndürsün..

SORU2: Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı
Eğer PI sayısı verilmediyse varsayılan olarak 3,14 alarak hesaplama yapın.

SORU3: Bir ücgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yazınız.
Bu fonksiyon kenar değerlerine göre bu üçgenin çeşit kenar ikiz kenar veya eşkenar olduğunu
ekrana yazdırsın, geriye bir değer döndürmesin.

 */
void main(List<String> args) {
  int sonuc = ciftSayilar(10);
  print(sonuc);

  double alan = daireAlaniHesapla(2);
  print("Alan $alan");
  ucgeninCesidi(birincikenar: 4, ikinciKenar: 4, ucuncuKenar: 5);
}

int ciftSayilar(int sayi) {
  int toplam = 0;
  int ciftsayi = 0;
  for (int i = 1; i < sayi; i++) {
    if (i % 2 == 0) {
      toplam = toplam + i;
    }
  }

  return toplam;
}

double daireAlaniHesapla(double yariCap, [double piSAyisi = 3.14]) {
  return piSAyisi * yariCap * yariCap;
}

void ucgeninCesidi(
    {int birincikenar = 1, int ikinciKenar = 1, int ucuncuKenar = 1}) {
  if (birincikenar == ikinciKenar && birincikenar == ucuncuKenar) {
    print("bu üçgen eşkenar üçgendir");
  } else if (birincikenar == ikinciKenar ||
      birincikenar == ucuncuKenar ||
      ikinciKenar == ucuncuKenar) {
    print("bu üçgen ikizkenar ucgendir");
  } else {
    print("bu üçgen çeşit kenar bir üçgendir");
  }
}
