/*
Fonksiyon  kavramı sayesinde problemlerimizi küçük alt problemlere parçalayarak çok daha okunaklı, hata bulması kolay
uygulamalar geliştirebiliriz.

Bir uygulama geliştirirken, bir problemi çözerken o problemde belli bir işi yapan kodları methodlara bölmemiz gerekir.
Bunun için method veya fonksiyon oluşturabiliriz.

Methodlar parametre alabilir veya herhangi bir parametreye sahip olmayabilir.
Methodlar geriye bir değer dönderebilir. Değer döndürmeyen method tanımlarının başına void yazılır.
Dart dilinde return ve method geri döndürme veri tipi değeri opsiyoneldir, yani belirtmek zorunda değiliz.(Belirtilmesi önerilir)
*/

void main(List<String> args) {
  cevreyiHesapla();
  int sonuc = alanHesapla(5, 20);
  print("alan $sonuc");

  int hacim = hacimHesapla(2, 5, 6);
  print("hacim $hacim");
}

//parametresiz fonksiyon
void cevreyiHesapla() {
  int en = 10, boy = 20;
  int cevre = (en + boy) * 2;
  print("cevre $cevre");
}

//parametreli fonksiyon

int alanHesapla(int sayi1, int sayi2) {
  // int alan = sayi1 * sayi2;
  //print("alan $alan");
  return sayi1 * sayi2;
}

int hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}
