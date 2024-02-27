/**
 * Exception Istisna : İstisna, programın çalışması sırasında ortaya çıkan bir sorundur. 
 * Bir istisna, bir çok değişik nedenden dolayı meydana gelebilir.
 * 
 * Bir metot, try ve catch anahtar kelimelerinin kombinasyonunu kullanarak bir istisnayı yakalayabilir. 
 * Try/catch bloğu, istisna oluşması muhtemel kodun etrafına yerleştirilir.
 * Ayrıca on ExceptionName{} blogunu cıkacak istisnanın adını biliyorsak kullabiliriz.
 * Finally blogu istisna çıksın çıkmasın calısacak olan method blogudur.
 * 
 * throw ile hata cıkan yerde kendimiz hata fırlatabiliriz.
 * 
 * Kendi istisna sınıfımızı olusturabilirz. Olusturdugumuz istisna ile ilgili sınıf implements Exception diye tanımlanır.
 */

void main(List<String> args) {
  print("program başladı");

//~bu işerat ile değer verirsek sonucu int e çevirmek demektir.
  int sayi = 100 ~/ 6;

  print(sayi);

  // bir try catch bloğu oluşturmak için

  try {
    int sayi1 = 100 ~/ int.parse("omer");
    /* bölene int.parse("omer") böyle bir ifade atarsak bize format exception
    
FormatException: Invalid radix-10 number (at character 1)
omer
 hatası verir.
 */
    print(sayi1);
    // ignore: deprecated_member_use
  } on IntegerDivisionByZeroException {
    print("bölen 0 olamaz");
  } on FormatException catch (e) {
    print(e);
    print(e.message);
  } catch (e) {
    print("Hata çıktı ${e.toString()}");
  } finally {
    print("işlem bitti");
  }

  /*
  -- HATA MESAJI---
Unhandled exception:
IntegerDivisionByZeroException
#0      int.~/ (dart:core-patch/integers.dart:30:7)
  */

  print("program bitti");
}
