/*
Sınıflarımızda nesne üretmeden bazı değişkenlere ve methodlara erişmek isteyebiliriz. burada karsımıza static kavramı cıkar.

Static kullanarak nesne değil sınıf değişkenleri ve methodları olusturabilirz.
Bir sınıfta tanımlanan method ve değişkenlere erişirken mutlaka nesne üretmemiz gerekirdi. Ama biz bunları static olarak tanımlarsak
artık nesne üretmeden bu değerlere erişebilir ve kullanabiliriz. Artık onlar nesnelerin değil sınıfın method ve değişkenleridir.

ayrıca statik degiskenler kullanılana kadar deger almazlar, bellekte yer ayrılmaz
statik methodların içinde this anahtar kelimesi kullanılmaz.

static metotlar içinden nesneye özgü alanlara erişilemezken, nesneye özgü metot içinden static değerlere erişilebilir.

//static bir değişken içerisinden bir nesne çağıramayız.
 */

void main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();
  m1.cikar();

  print(Matematik.PI);

  Matematik m2 = Matematik(30, 10);
  m2.topla();
  m2.cikar();

  //statik metoda ulaşmak için
  Matematik.sinifAdiniSoyle();

  print("toplam islem sayisi ${Matematik.toplamIslemsayisi}");
}

class Matematik {
  //instance variable
  int birinciSayi = 0;
  int ikinciSayi = 0;
  //bunu static tanımlarsak nesneye bağlı değil sınıfa bağlı olarak çalışıacaktır.
  static int toplamIslemsayisi = 0;

  //class variable, sınıf değişkeni
  // statik değişkene sınıftan ulaşabiliriz
  static double PI = 3.14;
  static void sinifAdiniSoyle() {
    print("ben matematik sınıfıyım");
  }

  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    toplamIslemsayisi++;
    print("toplam ${birinciSayi + ikinciSayi}");
  }

  void cikar() {
    toplamIslemsayisi++;
    print("fark ${birinciSayi - ikinciSayi}");
  }
}
