import 'dart:async';

void main(List<String> args) async {
  print("program başladı");

//future durationdan sonra açılan paranteze duration bitiminde yapılacak işlem yazılır.

  Future.delayed(Duration(seconds: 0), () {
    print("0 saniyelik işlem");
  });

  print("program bitti");

  Future<int> toplam = Future(() {
    int toplam = 0;
    for (int i = 0; i < 1000000; i++) {
      toplam = toplam + i;
    }

//burada bir throwda atabiliriz.
    //throw Exception("Toplam hesaplanamadı");

    return toplam;
  });
//yazdırmak için
  //toplam.then((int toplam) => print(toplam));

//eğer haat varsa
  // toplam.then((int toplam) => print(toplam)).catchError((hata) => print(hata));

//await olarak tanımlarsak main metod async olmak zorundadır.
  int forSonuc = await toplam;
  print("*********** $forSonuc");
//awaitlerle çalıştığımızda hatalar için try catchler kullanılmalıdır.

//burada value olarak belirlediğimiz değeri geriye doğru döndürmektedir.
//mock data için kullanılabilir
  var f2 = Future.value("ömer");

  var f3 = Future.error(
      "hata yazdırmak için kullanılmaktadır. hata ile biten future");

  f3.catchError((hata) => print(hata));
}
