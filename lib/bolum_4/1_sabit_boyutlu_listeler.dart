/**
 * List ikiye ayrılır
 *  1-Sabit uzunluklu
 *  2-Büyüyen listeler
 * 
 * Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak kullanılır.
 * List<int> numaralar = List.filled(10, 0); //10 eleman içeren sabit uzunluklu liste yani dizi.
 * Index numaraları 0'dan baslar yani listenin ilk elemanına erişmek için 0. indexine bakılır. numaralar[0] diyerek..
 * 
 */
main(List<String> args) {
  int sayi = 4;
  List<int> sayilar = List.filled(5, 2, growable: false);
  sayilar[0] = 4;
  sayilar[1] = 1;
  sayilar[2] = 9;
  print(sayilar);
  print(sayilar.length);

  print(sayilar[2]);

  List<String> isimler = List.filled(2, "");
  isimler[0] = "ömer";
  isimler[1] = 5.toString();

  print(isimler);

  // dynamic list

  List<dynamic> karisik = List.filled(5, 0);
  //  List<dynamic> karisik = List<dynamic>.filled(5, 0);
  //yukarıda ki şekilde de yazılabilri.
  karisik[0] = "ömer";
  karisik[1] = 1;
  print(karisik);

//liste elemanlarını gezmek
  for (int i = 0; i < sayilar.length; i++) {
    sayilar[i] += 5;
    print(sayilar[i]);
  }
  print("*************");

  for (int oankieleman in sayilar) {
    print(oankieleman);
  }






  
}
