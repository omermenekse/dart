/**
 * Bir diğer koleksiyon yapısı da Set yapısıdır.
 * List den en önemli farklı elemanları sıralı olarak tutmaz, bu durumda list lerde oldugu gibi indexleri kullanamayız
 * Bir diğer farkı ise bir elemandan sadece bir tane olur yani her bir eleman birbirinden farklıdır.
 * 
 * index olmadan elemanları kontrol etmek için contains methodu kullanılabilir. onun dışında listelerdeki methodlar set için de geçerlidir.
 * 
 */

void main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("emre");
  isimler.add("ömer");
  isimler.add("elif");
  isimler.add("yusuf");
  isimler.add("ömer");
  // setlerde birindeks durumu yoktur

  bool sonuc = isimler.remove("emre");
  print("sonuc : $sonuc");
  print("*******");

  for (String s1 in isimler) {
    print("isimler : $s1");
  }

  Set<int> numaralar = Set.from([1, 2, 3, 1, 5, 6]);
  List<int> sayilar = [0, 2, 4, 6, 8, 10];

  for (int s1 in numaralar) {
    print("no : $s1");
  }
  numaralar.addAll(sayilar);

  for (int s1 in numaralar) {
    print("add alldan sonra no : $s1");
  }
}
