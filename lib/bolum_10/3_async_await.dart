void main(List<String> args) async {
  print("internetten kişi verileri getirilecek");

//async - await
// await kullanacaksak o metodun async olarak tanımlanması lazım.
  // String kisi = await kisiVerisiniGetir() ;

  //kisiyleIlgiliIslemler().then((value) => print(value));
  kisiyleIlgiliIslemler();
  print("Baska işlerr yapılacak");

  print("işlem bitti");
}

void kisiyleIlgiliIslemler() async {
  String kisi = await kisiVerisiniGetir();
  print(kisi.length);
}

Future<String> kisiVerisiniGetir() {
  return Future<String>.delayed(Duration(seconds: 3), () {
    return "kişi adı: ömer ve id:1 ";
  });
}
