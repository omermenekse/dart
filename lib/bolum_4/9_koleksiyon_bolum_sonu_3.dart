import 'dart:io';

void main(List<String> args) {
/*

5- Kullanıcıdan aldıgınız integer pozitif sayıları bir listede tutun, kullanıcı -1 değerini
girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
*/

  int girilenNot = 0;
  List<int> girilenNotlar = <int>[];
  //List<int> girilenNotlar2 = List.empty(growable: true);

  do {
    print(" lütfen notuunuzu giriniz, çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) {
      girilenNotlar.add(girilenNot);
    }
  } while (girilenNot != -1);

  print("kaç tane not girildi ${girilenNotlar.length}");
  double ortalama = listeninOrtalamasi(girilenNotlar);
  print("notların ortalaması $ortalama");
}

double listeninOrtalamasi(List<int> liste) {
  int toplam = 0;
  for (int i = 0; i < liste.length; i++) {
    toplam = toplam + liste[i];
  }
  return toplam / liste.length;
}
