import 'dart:math';
/**
 * Sınıflarımızı oluşturuken olusturduğumuz değişkenler(property) için de null safety özellikleri geçerlidir. Bu özellikleri ilk defa uyguladığımızda karışık gelebilir.
 * 
 * Çünkü bu propertylerin getter ve setter metotları doğrudan veya dolaylı olarak vardır. Bundan dolayı da bu değişkenler aynı scope içinde farklı değerlerler üretebilirler.Siz bu yapılara her erişim yaptığınızda farklı sonuçlar alabilirsiniz.
 * 
 * bunun çözümü ise ilgili veriyi bir değişkende saklayıp, getter üzerinden değil değişken üzerinden kontrolleri yapmanızdır
 */

class MetinUretici {
  String? metin = "ömer";
}

class RastgeleMetinUretici {
  String? degerUret() {
    if (Random().nextBool()) {
      return 'string ifade';
    } else
      return null;
  }

  MetinUretici metin = MetinUretici();

// bu şekilde random ile çalışma durumları olduğunda değişkeni lokal
//bir değişkene atamak kod bloklarının daha sağlıklı çalışmasını sağlar.
}

void main(List<String> args) {
  final uretici = RastgeleMetinUretici();
  String? sonuc = uretici.degerUret();

  if (sonuc == null) {
    print("null değer oldu");
  } else {
    metniYazdir(sonuc);
  }
//burada başla bir class oluşturulup override edilebileceğinden dolayı hataya düşer. bunu engellemk için farklı bir değişken oluşturup o değişkenin null değer olabileceğini belirtip atama yapmamaız gerekir.
  MetinUretici m = MetinUretici();
  metniYazdir(m.metin!);
}

void metniYazdir(String ifade) {
  print(ifade);
}
