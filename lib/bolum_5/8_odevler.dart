import '9_cember_daire.dart';

void main(List<String> args) {
  /*Soru 1
CemberDaire isimli sınıf oluşturun. Bu sınıfın yarıçap alan kurucusu
olmalı.Ayrıca cevre ve alanını hesaplayan metotlar olmalı.(Pi sayısı 3,14 alın)
*/

  CemberDaire c1 = CemberDaire(4);
  print("Cevre: ${c1.cevreHesapla()}");
  print("Alan: ${c1.alanHesapla()}");
}
