/*

Kısa method Fat Arrow : tek satırlık statement içeren methodlarımızı kısa bir şekilde göstermeye yarar.
Bu kullanımda süslü parantez ve return anahtar kelimeleri kullanılmaz.

 */

void main(List<String> args) {
  sayilariTopla();
  int fark = sayilariCikar(15, 4);
  print("fark $fark");

  print("çarpım:" + sayilariCarp(6, 4).toString());

  print("büyük olan sayi :" + maxOnaliBul(4, 9).toString());
}

sayilariTopla() {
  int sayi1 = 10, sayi2 = 5;
  print("toplam: $sayi1+$sayi2");
}

sayilariCikar(int s1, int s2) {
  return s1 - s2;
}

//kısa gösterim, kısa yazımda return kullanmıyoruz.
int sayilariCarp(int s1, int s2) => s1 * s2;

int maxOnaliBul(int s1, int s2) {
  if (s1 < s2) {
    return s2;
  } else {
    return s1;
  }
}

int maxOlan(int s1, int s2) => (s1 < s2) ? s1 : s2;

minOlani(int s1, int s2) => (s1 < s2) ? s1 : s2;
