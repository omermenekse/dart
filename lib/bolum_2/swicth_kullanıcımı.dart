/**
 * switch: ard arda if -else if kullanmak yerine genellikle switch yapısı tercih edilir
 * her bir case'den sonra break denilerek switch yapısından cıkılmalıdır.
 * 
 *switch kullanırken sadece int ve string veri türleri kullanılır, boolean veya double kullanılmaz.
*/
void main(List<String> args) {
  String notdegeri = "CC";

  switch (notdegeri) {
    case "AA":
      print("notunuz 90-100 arasındadır");
      break;
    case "BA":
      print("notunuz 80-90 arasındadır");
      break;
    case "BB":
      print("notunuz 70-80 arasındadır");
      break;
    case "CB":
      print("notunuz 60-70 arasındadır");
      break;
    case "CC":
      print("notunuz 50-60 arasındadır");
      break;
    case "FF":
      print("notunuz 50 DEN düşük çok çalışman lazım");
      break;

    default:
      {
        print("hatalı not girişi");
      }
  }
  print("******************");
  int yas = 22;
  switch (yas) {
    case 18:
      print("ehliyet alamazsın");
      break;
    case 22:
      print("ehliyet alabilirsin");
      break;
    default:
      {
        print("bilinmeyen değer");
      }
  }
  print("******************");

  int sayi = 6;
  int bolum = (sayi / 10).toInt();

  switch (bolum) {
    case 3:
      print("sayı 30'dan büyüktür");
      break;
    case 2:
      print("sayı 20'dan büyüktür");
      break;
    case 1:
      print("sayı 10'dan büyüktür");
      break;
    case 0:
      print("sayı 10'dan kucuktur");
      break;
  }
}
