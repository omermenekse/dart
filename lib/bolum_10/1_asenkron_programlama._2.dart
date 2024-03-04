import 'dart:io';

void main(List<String> args) {
  //git kayıtlarını unutma
  print("anne çocuğu ekmek almaya yollar");
  print("çocuk ekmek almak için evden çıkar");
  Future<String> sonuc = uzunSurenIslem();

//buradaki yapı sonuc hazır oldugunda kodun geri kalanını tetikle
//burası işlem başarılı bir şekilde tatmlandığında çalışıyor
  /// sonuc.then((String value) => print(value));
//eğer hata çıkarsa alttaki kod ile çalıştırmak gerekir.
  sonuc.then((String value) => print(value)).catchError((hata) {
    print(hata);
  }).whenComplete(() => print("ekmek alma operasyonu bitti"));

  print("peynir zeytin hazırlar");
  print("kahvaltı hazır");
}

// burada dönen veri string oluğu için
// metod veri türüne Future string olarak  gireriz.

Future<String> uzunSurenIslem() {
  Future<String> sonuc = Future.delayed(Duration(seconds: 2), () {
    return "çocuk ekmekle eve girer";
    //throw Exception("bakkalda ekmek kalmadi");
  });

  return sonuc;
}
