void main(List<String> args) async {
  Map gelenUser = await idyeGoreUserGetir(6);
  List<String> kurslarListesi =
      await usernameGoreKurslariGetir(gelenUser['username']);
  String yorum = await kursunIlkYorumunuGetir(kurslarListesi[0]);
  print(yorum);
}

Future<String> kursunIlkYorumunuGetir(String kursAdi) {
  return Future<String>.delayed(Duration(seconds: 1), () {
    return "kurs mükemmel";
  });
}

Future<List<String>> usernameGoreKurslariGetir(String username) {
  print("$username kullanıcısının kursları getiriliyor");
  return Future<List<String>>.delayed(Duration(seconds: 4), () {
    return ['flutter', 'kotlin', 'javascript'];
  });
}

Future<Map> idyeGoreUserGetir(int id) {
  print("$id idli kullanıcı getiriliyor");
  return Future<Map<String, dynamic>>.delayed(Duration(seconds: 2), () {
    return {'username': 'Ömer', 'id': id};
  });
}
