void main(List<String> args) {
  int sayi1 = 10;

  sayi1 = sayi1 + 1; //11
  sayi1 += 5; //16
  print(sayi1); //16

  sayi1++;
  print(sayi1); //17

  int sayi2 = 10;

  print(sayi2++); //11 önce kullan sonra arttır

  print(++sayi2); //12 önce arttır sonra kullan

  // işlem önceliği
  /*
 * işlem önceliği
 *    () -> önce parantez içi işletilir
 *    ++ ve -- Değişkenden önce gelenler
 *    * ve /
 *    + ve -
 *    = atama işlemi
 *    ++ ve -- Değişkenden sonra gelenler
 */

  int s1 = 10, s2 = 5;
  double sonuc = 0;
  sonuc = ((s1 + s2 * 3 - s2) + s1 - s1 * 5 + s1).toDouble();
  print(sonuc); //-15

  sonuc = (s1 * s2 + 4 / 2) + s1++ * s2 + (++s1);
  print(sonuc); //114
}
