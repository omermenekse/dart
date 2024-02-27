/*
if ve else yapıları ile programlarımızı dallandırıp yönlendirebiliriz. Eğer koşullar sağlanıyorsa veya sağlanmıyorsa
belli kod bloklarının çalıştırılmasını sağlamak için if yapısını kullanılır. Genel kullanım şekli şöyledir:

if(saglanması gereken şart){
  verilen şart sağlanmışsa çalısacak blok
}else{
  verilen şart sağlanmamışsa çalışacak blok
}

benzer şekilde if yapımızı else if ile daha da derinleştirebiliriz.
if(saglanması gereken şart){
  verilen şart sağlanmışsa çalısacak blok
}else if(yukarıdaki şart doğru değilse çalışır ve koşulumuz yazılır.){
  verilen şart sağlanmamışsa çalışacak blok
}else if(yukarıdaki şart doğru değilse çalışır ve koşulumuz yazılır.){
  verilen şart sağlanmamışsa çalışacak blok
}else{
  verilen şart sağlanmamışsa çalışacak blok
}

bu yapıda herhangi bir if blogunda kod calıstırılırsa alttaki şartlara bakılmaz ve program;
 son else kısmından sonra gelen süslü parantezlerden sonra çalışmaya devam eder
 */
void main(List<String> args) {
  int sayi = 12;
  num sayi2 = 12;
// var3=13;

  if (sayi > sayi2) {
    print("$sayi sayısı $sayi2 sayısından büyüktür");
  } else {
    print("$sayi sayısı $sayi2 sayısından küçüktür");
  }

  print("**************************************************");
  if (sayi < sayi2) {
    print("$sayi sayısı $sayi2 sayısından küçüktür");
  } else if (sayi2 < sayi) {
    print("$sayi2 sayısı $sayi sayısından küçüktür");
  } else {
    print("vediğiniz sayılar birbirine eşittir");
  }
  print("**************************************************");

  int notDegeri = 150;

  if (notDegeri >= 90 && notDegeri <= 100) {
    print("Notunuz: AA");
  } else if (notDegeri >= 80 && notDegeri < 90) {
    print("Notunuz: BA");
  } else if (notDegeri >= 70 && notDegeri < 80) {
    print("Notunuz: BB");
  } else if (notDegeri >= 60 && notDegeri < 70) {
    print("Notunuz: CB");
  } else if (notDegeri >= 50 && notDegeri < 60) {
    print("Notunuz: CC");
  } else if (notDegeri < 50) {
    print("Notunuz çok düşük yazmaya tenezzül etmedik");
  } else {
    print("hatalı veya eksik giriş");
  }
}
