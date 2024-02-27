void main(List<String> args) {
  User user1 = User();
  NormalUser normal1 = NormalUser();
  normal1.davetEt();
  normal1.girisYap();

  SadeceOkuyabilenNormalUser user = SadeceOkuyabilenNormalUser();
  //user.davetEt();
  user.girisYap();
  //user.adiniSoyle();
}

/*
dart dilinde inheritance extends ile yapılmaktadır.+


override etmek parents da bulunan bir metodun childda tekrar tanımlanmasıdır.
*/

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("Parent user giris yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("normal user arkadaşlarını davet etti");
  }

  @override
  void girisYap() {
    print("normal user giriş yaptı");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniSoyle() {
    print("ben sadece okuyabilirim");
  }

  @override
  void girisYap() {
    print("SadeceOkuyabilenNormalUser giriş yaptı");
  }
}

class Adminuser extends User {
  void toplamKullaniciSAyisiniGoster() {
    print("toplam user sayısı 20");
  }
}
