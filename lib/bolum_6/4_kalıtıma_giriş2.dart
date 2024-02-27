void main(List<String> args) {
  User user1 = User();
  var user2 = NormalUser();
  SadeceOkuyabilenNormalUser user3 = SadeceOkuyabilenNormalUser();
  Adminuser user4 = Adminuser();

  User user5 = Adminuser(); //upcasting yukarı çevirim
  User user6 = SadeceOkuyabilenNormalUser(); //upcasting yukarı çevirim

  SadeceOkuyabilenNormalUser user = SadeceOkuyabilenNormalUser();

  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);

  test(user1);
  test(user2);
  test(user3);
  test(user4);
}

void test(User kullanici) {
  kullanici.girisYap(); // polimorphizm çok biçimlilik
  // tek bir veri tipine göre birçok fonksiyon sonucunu döndürebiliriz
}

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
  @override
  void girisYap() {
    print("admin user giriş yaptı");
  }

  void toplamKullaniciSAyisiniGoster() {
    print("toplam user sayısı 20");
  }
}
