main(List<String> args) {
  List<int> sayilar = [10, 5, 4, 3, 11, 9, 15];
  print(sayilar.first);
  print(sayilar.last);
  print(sayilar.isEmpty);

  if (sayilar.isNotEmpty) {
    print(sayilar.first);
    print(sayilar.last);
  }
  print("Boş mu: " + sayilar.isEmpty.toString());
  print("Eleman sayısı:  ${sayilar.length}");
  print(" ters sırada : ${sayilar.reversed}");
  sayilar.add(25);
  print(sayilar);
  //remove ilk yazılan değeri listeden çıkartır.
  sayilar.remove(3);
  print(sayilar);
  //indeks numarasındaki değeri çıkartır.
  sayilar.removeAt(0);
  //listeyi temizler
  //sayilar.clear();
// veerilen değeri içeriyormu? true false
  sayilar.contains(5);

  if (sayilar.contains(6)) {
    print("listede 6 var");
  } else {
    print("listede 6 yok");
  }
//verilen indeks numarasındaki elementi getiriş
  print(sayilar.elementAt(2));
//verilen eleemanın indeks numarasını verir.
  print(sayilar.indexOf(11));
  //rastgele liste elemanlarının yerleriini değiştirir.
  sayilar.shuffle();
}
