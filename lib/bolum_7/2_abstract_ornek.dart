void main(List<String> args) {
  Veritabani db = OracleDB();
  // faklı bir abstract class kullanacaksak sadece nesne ürettiğimiz
  //classı değiştirmemiz gerekir.
  db.userDelete();
  db.userSave();

  Veritabani db1 = FirebaseDB();
  db1.userDelete();
  db1.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();

  void urunGuncelle();
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("oracle Db den user silindi");
  }

  @override
  void userSave() {
    print("oracle Db ye user kayıt edildi");
  }

  @override
  void userUpdate() {
    print("oracle Db deki user güncellendi");
  }

  @override
  void urunGuncelle() {
    // TODO: implement urunGuncelle
  }
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
    print("firebase Db den user silindi");
  }

  @override
  void userSave() {
    print("firebase Db ye user kayıt edildi");
  }

  @override
  void userUpdate() {
    print("firebase Db deki user güncellendi");
  }

  @override
  void urunGuncelle() {
    // TODO: implement urunGuncelle
  }
}
