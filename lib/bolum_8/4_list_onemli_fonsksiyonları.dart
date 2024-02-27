void main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person ayse = Ogrenci(8, "ayse", 8);
  var yunus = Person(6, "yunus");
  var ali = Ogrenci(4, "ali", 4);

  List<Person> tumOgrenciler = [emre, hasan, ayse, yunus, ali, emre, ali];
  var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));
  var listeFrom = List.from(tumOgrenciler.whereType<Ogrenci>());
  var listeOf = List.of(tumOgrenciler);
  // bununla bir liste oluşturacaksak aynı yapıladaki liste olmalıdır.
  var listOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());
  //yukarıda tum öğrencileri gez ve type' oğrenci olanları al demektir.

// genrate isimsiz bir fonksiyondur bu fonksiyon başka bir fonksiyonu parametre olarak alır.
  var listGenerate = List<int>.generate(5, (index) => index + 2);

  var listGenerate1 =
      List<Ogrenci>.generate(5, (index) => Ogrenci(index, "$index", index + 2));

  print(listGenerate);
  print("*************");

  print(listGenerate1);

  print("***********");

  print(listeFrom);

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
