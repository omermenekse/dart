void main(List<String> args) {
  Map<String, dynamic> map = Map();

  Map<String, dynamic> map2 = {};
  //bu şekilde de map tanımlaması yapabiliyoruz

  var map3 = {};
  //bu şekilde de map yapısıdır...
  var map3_1 = <String, dynamic>{};

  var map4 = {1};
// bu şekilde tanımlama yaparsak bu set yapısıdır.

  map['id'] = 5;
  map['isim'] = 'ömer';
  map['renk'] = 'yesil';

  var yeniMap = Map.from(map);
  var yeniMAp2 = Map.from({'deger': 'yeni'});
//entries: key ve valueDAn oluşan çifte denir.
  var mapFromEntries = Map.fromEntries(map.entries);

  print(mapFromEntries);

  var liste = [1, 2, 3, 4];
// bir listeden map oluşturma
  var mapFromIterable = Map.fromIterable(liste);
  print(mapFromIterable);
  print("*********");
//key ve value değerlerini vermke için
  var mapFromIterable1 = Map<String, String>.fromIterable(liste,
      key: (item) {
        return "$item";
      },
      value: (item) => "${item * 2}");

  print(mapFromIterable1);

  //map methods.

  map.update('id', (value) => value * 3);

  print(map);

  // eğer map imizde update yapıyorsak ve olmayan bir değer girmek istiyorsak

  map.update('id_yeni', (value) => value * 3, ifAbsent: () => 100);

  print(map);
//eğer ... deger yoksa onun yerine yenisini koty

  map.putIfAbsent("soyisim", () => "menekşe");
  print(map);
}
