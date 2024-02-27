/*
String : Metinsel ifadeler için kullanılan veri türüdür.
Çift tırnak veya tek tırnak ile belirilebilir.
İki stringi birleştirmek için + operatörü kullanılır.
Birden fazla satır süren metinsel ifadeleri birleştirirken + kullanmasak da olur. 
  'ifade 1'
  'ifade 2' olarak kullanilabilir.
 
Interpolation : string ifade içinde baska bir string ifadeyi $ifade olarak kullabiliriz. Böylece + kullanmak gerekmez.
Eğer ifade birden fazla alana sahipse ${ifade.method} şeklinde kullanılır.
Ayrıca interpolation diğer veri türleri için de geçerlidir.
*/

void main(List<String> args) {
  String isim1 = "ömer";
  var sayi = 55;
  bool deger = true;

  String isim = "ömer";
  String soyIsim = "menekse";
  var kurs = "Dart'ın kullanımı";
  String kursTanimi = "Dart'ı ve Flutter'ı ogreneceğiz";

  print(isim + " " + soyIsim);
  print("$isim $soyIsim");
  print("soyadım olan $soyIsim'de bulunan karakter sayisi:" +
      soyIsim.length.toString());
  print("karakter sayısı ${soyIsim.length}");
  print("isimin karakter sayısı: ${isim.length}");

  double en = 10;
  double boy = 12;

  print("eni $en ve boyu $boy olan dikdörtgenin alanı ${boy * en}'dir");
  print(
      "eni ${en.toInt()} ve boyu ${boy.toInt()} olan dikdörtgenin alanı ${(boy * en).toInt()}'dir");

  print(15.9.toInt());
}
