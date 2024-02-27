import 'dart:math';

void main(List<String> args) {
  /*4- 5 elemanlı iki farklı liste olusturun. Elemanlar 0-50'ye rastgele şekilde olusturulsun
Bu elemanları tek bir listeye aktarın
Olusan son listenin elemanlarının karelerini tutan set yapısı olusturup ekrana yazdırın.*/
  List<int> liste1 = List.filled(5, 0);
  var liste2 = List<int>.filled(5, 0);
  List<int> sonListe = <int>[];
  Set<int> sonSetyapisi = <int>{};

  for (int i = 0; i < 5; i++) {
    liste1[i] = Random().nextInt(50);
    liste2[i] = Random().nextInt(50);
  }

  print(liste1);
  print(liste2);

  sonListe = [...liste1, ...liste2];

  for (int gecici in sonListe) {
    sonSetyapisi.add(gecici * gecici);
  }

  print(sonListe);
  print(sonSetyapisi);
}
