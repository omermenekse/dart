import '5_veritabaniislemleri.dart';
import '7_Musteri.dart';

/**
 * private değişken ve fonksiyonlar: Bir sınıftaki değişken ve metotları bazen erişime kapatmak isteyebiliriz. Bu durumlarda _ işareti ile bunları saklarız. 
 * 
 * getter metotlar: sınıf değişkenlerini okumak için kullanılan özel fonksiyonlardır.
 * Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılmış değişkenlerin
 * gerekli olduğunda okunmasını sağlamaktır.
 * 
 * setter metotlar: sınıf değişkenlerine veri atamak için kullanılır. Bu metotların amacı özellikle private yani dış dünyanun erişimine kapatılan değişkenlere veri atamaktır, ayrıca veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması için kullanılır.
 */

//private alanları başka bir class içerisinde saklarız
void main(List<String> args) {
  Musteri m1 = Musteri(952);
  m1.musteriNoAta = 456;
  m1.bilgileriYazdir();
  //getter olduğu için bu şekilde yazıyoruz
  print(m1.musteriNoSoyle);
  print("********");
  Musteri m2 = Musteri(299);
  m2.bilgileriYazdir();

  // setterlara direk değer atayabiliyoruz

  VeritabaniIslemleri db = VeritabaniIslemleri();
  VeritabaniIslemleri db2 =
      VeritabaniIslemleri.loginWithNameandPassword("omer2", "123");

  bool sonuc = db.baglan();

  if (sonuc) {
    print("bağlandık");
  } else {
    print("bağlanamadım");
  }
}
