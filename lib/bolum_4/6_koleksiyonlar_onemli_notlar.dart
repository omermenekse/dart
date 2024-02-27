void main(List<String> args) {
  var listem = <String>[];

// aşağıdaki şekilde oluşturduğumuz yapı hem map hemde setler
//için kullanılır. içerisine key, value şeklide data girersek map olur,
//tek bir değer girersek set olur

  var mySet = {};
  var mySet1 = {"yas"}; //set
  var myMap = {"yas": 25};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

//spread operator
//binden fazla listeyi eklemek için kullnılır
  var sonListe = [...tekSayilar, ...ciftSayilar];

  /*sonListe.addAll(tekSayilar);
  sonListe.addAll(ciftSayilar);*/

  print(sonListe);

  var map1 = {"ad": "ömer"};
  var map2 = {"yas": 40};

  var sonMap = {...map1, ...map2};

  print(sonMap);

  var set1 = {"yusuf"};
  var set2 = {"elif"};
  var set3 = {"ömer"};
  var set4 = {"ömer"};

  var setler = {...set1, ...set2, ...set3, ...set4};

  print(setler);
}
