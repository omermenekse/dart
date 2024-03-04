void main(List<String> args) {
  //git kayıtlarını unutma
  print("anne çocuğu ekmek almaya yollar");
  print("çocuk ekmek almak için evden çıkar");
  uzunSurenIslem()
      .then((value) => print(value))
      .catchError((hata) => print(hata))
      .whenComplete(() => print("ekmek alma operasyonu bitti"));

  print("peynir zeytin hazırlar");
  print("kahvaltı hazır");
}

Future<String> uzunSurenIslem() {
  return Future<String>.delayed(Duration(seconds: 2), () {
    return "çocuk ekmekle eve girer";
    //throw Exception("bakkalda ekmek kalmadi");
  });
}
