/*
ternary if yazımı ile kısa bir şekilde şart belirten ifadeler yazılabilir. Kullanımı :
koşul ? expression1 : expression2
eğer koşul doğru ise expression1 değeri, yanlış ise expression2 değeri kullanılır.

kısa kullanım ile değişkenlerin null değerde olup olmadıkları da kontrol edilebilir
expression1 ?? expression2
burda expression1 eğer null değilse kullanılır, eğer null ise expression2 kullanılır.

 */
void main(List<String> args) {
  int sayi1 = 4;
  int sayi2 = 6;
  int kucukSayi;

  if (sayi1 < sayi2) {
    kucukSayi = sayi1;
  } else {
    kucukSayi = sayi2;
  }
  print("kücük sayı : $kucukSayi");
//tenary kullanımı
// ? işaretine kadar if bölümü, if sonucu ? ilk bölüm, else
// bölümü : noktadan sonraki bölüm
  sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;
  print("kucuksayı $kucukSayi");
  kucukSayi = sayi1 < sayi2 ? sayi1 : sayi2;
  //sayi1 sayi2 den küçük ise sayi1 kucuksayıya ata değilse sayı2'yi ata

//null değer atamak için değişken tipinin sonuna ? işareti koymamız gerekir.
  String? ad = null;
  String? soyad = "omer";
  String? mesaj;
  //mesaj değişkeni için ad eğer null ise mesaja soyadı ata
  mesaj = ad ?? soyad;
  print("Merhaba ");
}
