/**
 * programdaki karşılaştırma, matematiksel ve mantıksal işlemleri gerçekleştirirken kullanılan işaretlerdir.
 * 
 * Aritmetik operatörler +,-,/,* ve %
 *    matematikteki karşılıklarının aynısıdır, sadece % operatörü mod alma işine yarar 5%2 = 1 (5in 2 ile bölümünden kalanı verir)
 * 
 * Atama ve karşılaştırma operatörleri +=, -=, /= , *=, %=
 *    sayi += 5 ifadesi sayi = sayi + 5 ifadesine denk gelir
 * 
 * Karşılaştırma operatörleri <, > , <=, >= , ==, !=
 *    != eşit değilse durumunu gösterir
 * 
 * Mantıksal operatörler &&, ||, ! (değil, not) 
 *    && ve, || veya anlamına gelir. ! operatörü onundeki boolean değerin tersini verir. 
 *
 * arttırma azaltma operatörleri 
 *    ++ -> değişkeni 1 arttırır
 *    -- -> değişkeni 1 azaltır.
 *    Bu ifadelerin değişkenin sağında veya solunda olması önemlidir.
 *    sayi++ -> önce sayıyı kullan sonra 1 arttır, ++sayi ise önce sayiyi 1 arttır sonra kullan anlamına gelir.
 * 
 * işlem önceliği
 *    () -> önce parantez içi işletilir
 *    ++ ve -- Değişkenden önce gelenler
 *    * ve /
 *    + ve -
 *    = atama işlemi
 *    ++ ve -- Değişkenden sonra gelenler
 */

void main(List<String> args) {
  double sayi1 = 9;
  double sayi2 = 6;
//Aritmetik operatörler +,-,/,* ve %
  print("$sayi1 + $sayi2 toplamı ${sayi1 + sayi2}");
  print("$sayi1 - $sayi2 farkı ${sayi1 - sayi2}");
  print("$sayi1 * $sayi2 çarpımı ${sayi1 * sayi2}");
  print("$sayi1 / $sayi2 bölümü ${sayi1 / sayi2}");
  print("$sayi1 % $sayi2 modu ${sayi1 % sayi2}");

  // * Atama ve karşılaştırma operatörleri +=, -=, /= , *=, %=

  double sayi3 = 5;
  sayi3 = sayi3 + 5;
  print(sayi3);

  sayi3 += 5; // sayi3 = sayi3+5;
  print(sayi3);

// != eşit değilse durumunu gösterir
  double sayi4 = 9;
  double sayi5 = 5;
  if (sayi4 <= sayi5) {
    print("Sayı $sayi4 küçük ve eşittir $sayi5");
  } else {
    print("Sayı $sayi4 küçük ve eşit değildir $sayi5");
  }

  String isim = "ömer";
  String soyisim = "menekşe";

  if (isim != soyisim) {
    print("isim ve soyisim aynı değildir.");
  } else {
    print("isim ve soyisim aynı değere sahiptir.");
  }

  // Mantıksal operatörler &&, ||, ! (değil, not)
  // && ve
  //|| veya

// ve iki kosulunda true olması gerekir
  bool kosul1 = true;
  bool kosul2 = true;
  print(kosul1 && kosul2); // true

// ve operatöründe bir tane operatör false olursa sonuc false olur
  bool kosul3 = true;
  bool kosul4 = false;
  print(kosul3 && kosul4); // false

  // veya operatörü || bir operatörün true olması sonucun true olması için yeterlidir.

  bool kosul5 = true;
  bool kosul6 = false;
  print(kosul5 || kosul6); // true

  // ! not operatör yani değil olarak operatörü değiştirirr
}
