import 'dart:async';

/**
 * KURUCU METHODLAR - CONSTRUCTORS
 * Bir sınıftan nesne ürettiğimizde tetiklenen yapılardır. Bu yapıları kullanarak nesnelerimizi veri göndererek oluşturabilir, nesneleri kullanmadan önce gerekli atamaları ve ayarları yapabiliriz.
 
 * Farklı türde kurucu olusturabiliriz.
 *  1-Default : Sınıf adının yanına () dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur.
 *    Ogrenci emre=new Ogrenci() dediğimizde aslında default kurucu çalışır.
 *    Default constructor sınıfın içinde eğer elle yazıp belirtmesek bile olan Ogrenci(){} şeklinde tanımlı boş bir methoddur.
 *    Istersek bunu çeşitli durumlar için kullanabiliriz. Bu method her nesne üretiminde ilk olarak çalışan methoddur.
 *    Kurucu methodların geri dönüş tipi olmaz.

 *  2- Parametreli Kurucu Method : Aslında default constructorın parametre almış haline denir.
 *    Ogrenci emre=new Ogrenci("emre");
 * 
 *  Dart dilinde method overloading olmadığı için sadece ya default yapıcı ya da parametreli yapıcı olmalıdır.
 
 *  3- Named (Isimlendirilmiş) : Sınıf içerisinde 
     SinifAdi.methodAdi(){
     buraya kodlar gelir.
     }
    //Istediniz sayıda isimlendirilmiş kurucu oluşturabilirsiniz. 
 */
void main(List<String> args) {
  Araba honda = Araba(2010, "HOnda", true);

//burada parametreli constructor olmadan veri girişini yapıyoruz
  honda.marka = "Honda";
  honda.modelYili = 2020;
  honda.otomatikMi = true;
  honda.bilgileriSoyle();
  honda.modelYili = 2021;
  honda.bilgileriSoyle();
  var reno = Araba(2010, "Reno", false);
  reno.bilgileriSoyle();

  var bmw = Araba(2021, "BMW", true);
  bmw.bilgileriSoyle();
  bmw.yasHesapla();

//bu şekilde bir constructor için
//yeni bir constructor üretmemiz gerekir
  var citreon = Araba.markasizKurucuMetot(true, 2018);

  Araba suzuki = Araba.modelYiliOlmayanKurucuMetot(true, "suzuki");

  suzuki.yasHesapla();
}

// sınıf adından sonra süslü parantez gelir

class Araba {
  //null değer almasını istiyorsak değişken tipi yanına ?
  //koymalıyız
  int? modelYili;
  String? marka;
  bool? otomatikMi;

  /*  Araba() {
    print("Kurucu metot tetiklendi");
  } */
// parametreli constructıor
  // Araba(this.modelYili, this.marka, this.otomatikMi) {
  //   print("Kurucu metot tetiklendi");
  // }

  Araba.markasizKurucuMetot(this.otomatikMi, this.modelYili);

  Araba.modelYiliOlmayanKurucuMetot(bool otomatikMi, String marka) {
    this.otomatikMi = otomatikMi;
    this.marka = marka;
  }

  Araba(this.modelYili, this.marka, this.otomatikMi) {
    print("kurucu metod tetiklendi");
  }

/* // bunun daha kısa yazımı this ileolur
//Araba(int yil, String m, bool o) 
  Araba(int yil, String m, bool o) {
    print("Kurucu metot tetiklendi");
    
    /* this.modelYili = modelYili;
    this.marka = marka;
    this.otomatikMi = otomatikMi; */

   /*  modelYili = yil;
    marka = m;
    otomatikMi = o; */
  }  */
//
  void bilgileriSoyle() {
    print(
        "Arabanın model yili ${modelYili}, markası : ${marka} otomatik mi:${otomatikMi}");
  }

  void yasHesapla() {
    if (modelYili != null)
      //! null olabilecek şeyleri null değilmiş gibi kullanmasını sağlaamk için ünlem kullanılır
      print("Arabanın yaşı ${2021 - modelYili!}");
    else
      print("Model yılı olmadıgından yaş hesaplanamadı");
  }
}
