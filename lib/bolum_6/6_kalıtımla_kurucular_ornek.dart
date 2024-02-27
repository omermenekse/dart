void main(List<String> args) {
  Kisi omer = Kisi("Ömer", 40);
  omer.kendiniTanit();
  Calisan ahmet = Calisan("ahmet", 30, 3000);
  ahmet.kendiniTanit();
}

class Kisi {
  String isim;
  int yas = 0;

  Kisi(this.isim, this.yas);
  void kendiniTanit() {
    print("benim adım $isim yaşım $yas dır");
  }
}

//bir child oluşturduğumuzda parenttın kurucu methodu çalışır
class Calisan extends Kisi {
  int maas;
  Calisan(String name, int age, this.maas) : super(name, age);
  //superdeki parantezler girilen değerleri parenta gönder anlamındadır.
  @override
  void kendiniTanit() {
    print("benim adım $isim yaşım $yas maasım $maas ");
  }
}
