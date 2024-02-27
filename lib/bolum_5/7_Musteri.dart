class Musteri {
  int? _musteriNo;

//Bu diğer bir yolla da yapılabiliyor.
  /* Musteri(int musteriNo) {
//bu sınıfda bulunan musteri no ya parametre olarak girilen musteri noyu ata
    // this.musteriNo = musteriNo;
  }
  */

  //Musteri(this._musteriNo);

  Musteri(int musteriNo) {
    _musteriNoKontrol(musteriNo);
  }

//getter yaparken
  String get musteriNoSoyle {
    return "Musteri no: $_musteriNo";
  }

  //bu şekildede getter yazabiliriz

  String get musteriNoSoyle2 => "Musteri no: $_musteriNo";

  // setterın farklı bir yazımı var
  void set musteriNoAta(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      return;
  }

  void _musteriNoKontrol(int no) {
    if (no > 300) {
      _musteriNo = no;
    } else
      print("hatalı müsteri no");
    return;
  }

  void bilgileriYazdir() {
    print("Musteri oluşturuldu musteri no: $_musteriNo");
  }
}
