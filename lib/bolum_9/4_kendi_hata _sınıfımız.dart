void main(List<String> args) {
  try {
    Ogrenci omer = Ogrenci(-5);
    // eksi değer verdiğimizde ekranda sıfır görülür.
    print(omer.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
  } finally {
    print("program bitti");
  }
}

class AgeException implements Exception {
  String mesaj = "";

  AgeException({this.mesaj = "Age exception"});

  @override
  String toString() {
    return "hatanın to string metodu çalıştı";
  }
}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas) {
    if (yas < 0) {
      //print("yas negatif olamaz");
      throw AgeException(mesaj: "Age Exception- Yas negatif olamaz");
    } else
      this.yas = yas;
  }
}
