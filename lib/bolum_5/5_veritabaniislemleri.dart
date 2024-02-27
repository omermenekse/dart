// nesne isimlerinin önüne "_" alt çizgi koyduğum8uzda private olur
import 'dart:math';

class VeritabaniIslemleri {
  String _kullaniciAdi = "omer";
  String _sifre = "123456";

  bool baglan() {
    if (_internetVarmi()) {
      if (_kullaniciAdi == "omer" && _sifre == "123456") {
        return true;
      } else
        return false;
    } else {
      return false;
    }
  }

  VeritabaniIslemleri() {}
  VeritabaniIslemleri.loginWithNameandPassword(
      String kullaniciAdi, String Sifre) {}
  bool _internetVarmi() {
    if (Random().nextBool()) {
      return true;
    } else
      return false;
  }
}
