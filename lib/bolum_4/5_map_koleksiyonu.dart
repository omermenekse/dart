/**
 * Map yapısı da set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
 * Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
 * Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yani eşsiz olması gerekmektedir.
 * 
 * Map yapısını sözlüğe benzetebiliriz. Tıpkı sözlük gibi birbirden farklı elemanları içerir.
 * Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.
 */

void main(List<String> args) {
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 224, "istanbul": 212};

  print(alanKodlari);
  print(alanKodlari["bursa"]);
  print("****");
  // sadece keyleri yazabiliyoruz. valuelerden keye ulaşamıyoruz
  //print(alanKodlari[312]);

  Map<String, dynamic> emre = {
    "soyad": "altunbilek",
    "yas": 34,
    "bekarMi": true
  };
  print(emre);
  print(emre["yas"]);

  List sayilar = [0, 1, 2];

// bu şekilde de oluşturabilir
  Map<String, dynamic> deneme = Map();

  Map<String, dynamic> deneme2 = {};

// mape değer atama
  deneme2["yas"] = 55;
  print(deneme2["yas"]);
  print("*********");

  for (String oankiAnahtar in emre.keys) {
    print(oankiAnahtar);
    print(emre[oankiAnahtar]);
  }
  for (dynamic deger in emre.values) {
    print(deger);
  }

  for (var element in emre.entries) {
    print("Key : ${element.key}\ndegeri : ${element.value}");
  }
  if (emre.containsKey("yas")) {
    print("bulunan yas deger ${emre["yas"]}");
  }
}
