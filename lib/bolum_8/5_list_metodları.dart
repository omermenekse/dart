import '../bolum_5/11_ogrenci.dart';

void main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person ayse = Ogrenci(8, "ayse", 8);
  var yunus = Person(6, "yunus");
  var ali = Ogrenci(4, "ali", 4);

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali, emre, ali];
  //elemanları tek tek gez. gezdiğin elemanları dönüştür
  var mapIterable = tumOgrenciler.map((Person e) => "Map ${e.isim}");
  print(mapIterable);
  print("*********");
  //bu oluşturduğumuz değerleri listeye dönüştürüyoruz
  var mapIterableId = tumOgrenciler.map((Person e) => "Map ${e.id}").toList();
  print(mapIterableId);

  // sort elemanları sıralamak için kullanılır
  tumOgrenciler.sort((Ogrenci, Ogrenci2) {
    if (Ogrenci.id < Ogrenci2.id) {
      return -1;
    } else if (Ogrenci.id > Ogrenci2.id) {
      return 1;
    } else
      return 0;
  });
  print(tumOgrenciler);
  print("++++++++++++++");

  tumOgrenciler.add(yunus); //listeye tek eleman eklemek için
  tumOgrenciler.addAll([ali, ayse]); //bir lsite oluşturup ekleyebiliriz.

  print(tumOgrenciler);
  bool sonuc = tumOgrenciler.any((Person element) =>
      element.id >
      3); //fonksiyonun başka bir fonksiyonu parametre olarak almasıdır.

  print(sonuc);
  Map<int, Person> yeniMap =
      tumOgrenciler.asMap(); //listeyi  map formatına dönüştürür.
  print("***********");
  print(yeniMap);
  print(yeniMap[0]!.isim);
//clear tüm listeyi silmek için kullanılır.

//contains listenin içerisinde belirtilen eleman varmı?
  print(tumOgrenciler.contains(emre));

//tüm elemanların isim nesnesnin uzunlukları 0dan büyükmü koşulu

  bool sonucEvery = tumOgrenciler.every((element) => element.isim.length > 0);

// ilk şartı sağlayan elemanı ver
  var bulunan = tumOgrenciler.firstWhere((element) => element.id == 1);

  print(bulunan);

  // first listenin ilk elemanını verir.
  //hashcode: hash codu verir.
  //isEmpty: eğer liste boşsa true false döndürür.

//değiştirilemez liste
  var degistirilemezListe = List.unmodifiable([0, 1, 2]);
  //bu listeye eleman ekleyelip çıkartamayız87
  // degistirilemezListe.add(6);
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);
  @override
  String toString() {
    return "id:$id ve isim:$isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, alinanDersSayisi) : super(id, isim);

  @override
  String toString() {
    return "id:$id ve isim:$isim ve alinan ders sayısı:$alinanDersSayisi\n";
  }
}
