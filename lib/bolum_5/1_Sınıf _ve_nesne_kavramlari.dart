void main(List<String> args) {
//Nesneye yönelimli programlamaya giriş
/**
 * Sınıf : Kendi veri türlerimiz veya soyut olan taslaklara denir. Kendi içinde değişkenlere ve methodlara sahiptir
 * Istedigimiz bir nesnenin veya varlığın bilgisayar dillerinde tanımıdır.
 * 
 * Nesne : Olusturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
 * Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
 * 
 * Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.
 * 
 */
  int sayi = 5;
  var sayi2 = 10;
  Ogrenci omer = Ogrenci();
  // sınıftan üretilen her bir öğeye nesne(instance )
  //denir
  omer.ogrAd = "Ömer Menekşe";
  omer.ogrNo = 11216;
  omer.aktifMi = true;

  Ogrenci hasan = Ogrenci();
  hasan.ogrAd = "hasan";

// bu şekildede sınıftan bir nesne türetebiliriz.
  var kemal = Ogrenci();

  // parantez ile bellek içerisinde bir alanı reserved ediyoruz

/*
dart null değer kabul etmez null değer
tanımlamak için veri tipi sonuna "?"
koyarız
*/
}

class Ogrenci {
  //instance variables
  int ogrNo = 1;
  String? ogrAd = "";
  bool? aktifMi = true;

//sınıfın içerisinde tanımlı metod
  void dersCalis() {
    print("Öğrenci ders calısıyor");
  }
}
