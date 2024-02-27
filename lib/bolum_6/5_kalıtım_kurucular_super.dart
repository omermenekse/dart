void main(List<String> args) {
//  Asker emre = Asker();
  //Deneme hasan = Deneme();
  Er hasan = Er("hasan", 20);
  hasan.selamla();

  Asker omer = Asker("Ömer", 40);
  hasan.memleketDegistir("samsun");
  hasan.selamla();

  // alt sınıftakileri oluşturduğumuzda da isim ve yas ggirilmelidir
}

class Asker {
  String ad = "varsayılan";
  int yas = 0;
  String memleket = "Ankara";

  // asker classından nesne üretileceği zaman mutlaka yas ve isim verilmelidir.
  Asker(this.ad, this.yas) {
    print("asker sınıfının kurucusu çalıştı");
  }

  void selamla() {
    print("Merhaba adım $ad ve yasım $yas");
  }
}

class Er extends Asker {
  //burada super i kullanmamaız gerekiyor parant child ilişkisinden dolayı

  Er(String ad, int yas) : super(ad, yas) {
    print("er sınıfının kurucusu çalıştı");
  }
  //bi üst sınıftaki değişkene ulaşmak için super keyword kullanılır
  void memleketDegistir(String yeniMemleket) {
    super.memleket = yeniMemleket;
  }

  @override
  void selamla() {
    print("er sınıfından selamlar");
  }
}



// alt sınıflar isterlerse üst sınıfların metodlarını override edebilirler



/*
class Deneme extends Er {
  Deneme() {
    print("deneme sınıfının kurucusu calıstı");
  }
}
*/


