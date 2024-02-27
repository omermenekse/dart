import 'dart:io';

void main(List<String> args) {
  print("adınızı girin");

  String? isim = stdin.readLineSync();
  print("girilen isim$isim");

  print("yaşınızı girin");
  int? yas = int.parse(stdin.readLineSync()!);
  //sondaki ünlemin anlamı sisteme burasının nal olmayaağını söylüyoruz.
  print("girilen yas $yas");
}
