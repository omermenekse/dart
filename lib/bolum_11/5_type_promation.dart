/**
 * Dart dili, null değer alması mümkün olmayan ama null değer alacakmış gibi belirtilen nullable tiplere, non-nullable gibi davranır Buna type promotion denir.
 * 
 * Dart tip sistemi, değişkenin nerede tanımlandığını ve nerede okunduğunu sürekli olarak analiz eder. Bir değişken null değer alacak sekilde olusturulmus olabilir, ama okunmadan hemen önce null dışında bir değer atanırsa dart bunu tespit edebilir.
 */
main(List<String> args) {
  String? mesaj;

// null değer ataması yoksa kod hata verir

  if (DateTime.now().hour < 12) {
    mesaj = "günaydın";
  } else {
    mesaj = "iyi aksamlar";
  }

  print(mesaj);
  print(mesaj.length);

  //type promotion from base class to derived class
  Object metin = 'bu bir string';
// üs sınıfta length diye bir tanımlama yok ondan dolayı hataya düşer.
// bir if yapısı ile kontrol yaptığımızda bu hata kalkar
  if (metin is String) print(metin.length);
}
