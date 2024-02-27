/**
 * Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
 * Abstract sınıflardan nesne üretilemez , abstract sınıflarda normal ve abstract methodlar olur
 * abstract methodlar alt sınıflarca override edilmek zorundadır.
 * 
 * Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.
 * 
 * birden çok farklı biçimi bir sınıf altında toplama polymorhismdir.
 * mesela; kedi ve köpek sınıfları var. bunları hayvan sınıfı altında topluyoruz.

 */

void main(List<String> args) {
  //Sekil sekil = Sekil();
  //abstract sınıflardan bir nesne oluşturamayız

  Sekil s1 = kare(3);
  print(s1.alanHesapla());
  print(s1.cevreHesapla());
  s1.selamla();

  Sekil s2 = dikdortgen(4, 3);
  print(s2.alanHesapla());
  print(s2.cevreHesapla());
  s2.selamla();

  List<kare> tumKareler = [];
  List<dikdortgen> tumDikdortgenler = [];
  List<Sekil> tumSekiller = [];
  tumSekiller.add(s1);
  tumSekiller.add(s2);

  test(s1);
  test(s2);
}

void test(Sekil sekil) {
  sekil.selamla();
}

abstract class Sekil {
  double alanHesapla();

  double cevreHesapla();

  void selamla() {
    print("ben sekil sınıfındanım");
  }
}

class kare extends Sekil {
  int kenar;

  kare(this.kenar);

  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4;
  }

  @override
  void selamla() {
    print("ben kare sınıfındannım");
  }
}

class dikdortgen extends Sekil {
  int en, boy;

  dikdortgen(this.boy, this.en);

  @override
  double alanHesapla() {
    return en * boy.toDouble();
  }

  @override
  double cevreHesapla() {
    return 2 * (en + boy).toDouble();
  }

  @override
  void selamla() {
    print("ben dikdörtgen sınıfındanım");
  }
}
