/**
 * Bazen değişkenler veya propertyler non-nullable olmalıdır ama ilk değer ataması hemen gerçekleşmeyecektir. bu durumlarda late anahtar kelimesi kullanırılır.
 * 
 * Bir değişkenin önüne late yazdıgınızda Dart'a şunları söylemiş olursunuz
 *  1- bu değişkene bir değer atama
 *  2- değeri sonradan atayacaksın
 *  3- Bana güven dart,valla bu değişkeni sen okumadan önce initialize edeceğim
 * 
 * Eğer değişkene değer atamadan okumaya çalışırsanız hata alırsınız.
 */

class Yemek {
  // eğer sınıflarda tanımlanacak değişkenlere değer ataması yapılmayacaksa null olduğunu belirtelim
  // burada "late" anahtar kelimesini kullanarak darta ben bunu kullanmadan önce muhakkak değer ataması yapacağım diyoruz

  late final String tanim;
  late final int fiyat;

  Yemek(int fiyat) {
    this.fiyat = fiyat;
  }

  void setTanim(String tanim) {
    this.tanim = tanim;
  }
}

main(List<String> args) {
  final yemegim = Yemek(100);
  yemegim.setTanim('kuru fasulye');
  print(yemegim.tanim);
  print(yemegim.fiyat);
}
