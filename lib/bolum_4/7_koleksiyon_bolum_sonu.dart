void main(List<String> args) {
  /*1- Sehirleri tutan bir liste olusturun, 4 tane il ekleyip sırasıyla ekrana yazdırın.*/
  List<String> sehirler = List.filled(4, "");
  sehirler[0] = "ankara";
  sehirler[1] = "samsun";
  sehirler[2] = "istanbul";
  sehirler[3] = "aksaray";

  for (int i = 0; i < sehirler.length; i++) {
    print("sehirler listesinde $i. şehir ${sehirler[i]}dir. ");
  }

  /*2- Keyleri string, değerleri dynamic olan bir map olusturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadıgı bilgisini tutun ve ekrana yazdırın.*/

  Map<String, dynamic> bilgisayar = {
    "işlemci_çekirdek": 6,
    "ram": 32,
    "ssd": true
  };
  for (var oankiEntry in bilgisayar.entries) {
    print("bilgisayar bilgileri ${oankiEntry.key} : ${oankiEntry.value}");
  }
  /*3- Her bir elemanında  keyleri string,  value'leri dynamic  olan bir liste olusturun.
Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun.
Sonrasında da bu listeyi okunaklı bir şekilde yazdırın
Örnek listenin 1. elemanında bulunan il ankara, plaka kodu:06, ilçe sayısı:10(değerler rastgele olabilir).*/
  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[];
  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1['il_adi'] = "ankara";
  eklenecekSehir1['ilce_sayisi'] = 10;
  eklenecekSehir1['plaka_kodu'] = 6;
  Map<String, dynamic> eklenecekSehir2 = Map<String, dynamic>();
  eklenecekSehir2['il_adi'] = "bursa";
  eklenecekSehir2['ilce_sayisi'] = 6;
  eklenecekSehir2['plaka_kodu'] = 16;
  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3['il_adi'] = "istanbul";
  eklenecekSehir3['ilce_sayisi'] = 16;
  eklenecekSehir3['plaka_kodu'] = 34;
  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);
  iller.add({'il_adi': 'izmir', 'ilce_sayisi': 9, 'plaka_kodu': 35});
  print(iller);
  //bu şekide indekste olan ile gelir
  print(iller[0]);
  //burada indeks içerindeki key'in değieri gelir
  print(iller[0]['ilce_sayisi']);
  print("il adı gelir");
  print(iller[1]['il_adi']);
  print(iller[1]['plaka_kodu']);

  // for döngüsü ile listenin elemanlarını çağırma
  for (int i = 0; i < iller.length; i++) {
    var oankiSehirMapYapisi = iller[i];
    print(
        "listenin ${i + 1}. elemanında bulunan sehir adi: ${oankiSehirMapYapisi['il_adi']} plaka kodu ${oankiSehirMapYapisi['plaka_kodu']}");
  }
}
