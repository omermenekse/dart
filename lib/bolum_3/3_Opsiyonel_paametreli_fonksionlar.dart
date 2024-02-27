/**
 * methodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani verilse de olur verilmese de olur gibi durumlarda süslü ve köşeli parantez kullanırız.
 * Eğer köşeli parantez [] kullanırsak bu ilgili parametrelerin methoda gönderilmesi zorunluluğunu ortadan kaldırır.
 * Eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır ama bu parametreleri belirtirken sıralama önemini kaybeder ve de parametreleri geçerken isimlerini vermek zorunda kalırız.
 * Ayrıca method tanımlarında parametrelere = diyerek varsayılan değerler atayabiliriz. Bu değerler sayesinde eğer kullanıcı  method parametrelerini atamamışsa bu varsayılan değerler kullanılır.
 */
void main(List<String> args) {
  /*print(sayilariTopla(11, 12, 13));
  int toplam = sayilariTopla(11, 12, 13);
  print("en son toplam  $toplam");
*/
  /* int toplam1 = sayilariTopla(1, 2, 3);
  print("optinal toplam $toplam1");
  */
  int toplam3 = sayilariTopla(s1: 5, s2: 0, s3: 1);
  print(toplam3);
  int hacim = hacimHesapla(en: 1, boy: 2, yukseklik: 4);
  print("hacim $hacim");
}

/*
// parametreleri gerekli olan fonksiyon
int sayilariTopla(int s1, int s2, int s3) {
  return s1 + s2 + s3;
}
*/
//optinal
//optinal parametreleri köşeli parantezler ile belirtiyoruz
/*
int sayilariTopla(int s1, [int s2 = 0, int s3 = 0]) {
  return s1 + s2 + s3;
}*/

// optional  named- opsiyonel isimlendirilmiş fonksiyon anlamına geliyor
//fonksiyon içerisinde süslü parantez ile yapıyoruz
//burada parametrelerin adlarını vererek biz yerleştiriyoruz. önemli
//bunlara varsayılan değer ataması yapmamız gerekmektedir.
int sayilariTopla({int s1 = 0, int s2 = 0, int s3 = 0}) {
  return s1 + s2 + s3;
}

int hacimHesapla({int en = 1, int boy = 1, int yukseklik = 1}) {
  return en * boy * yukseklik;
}
