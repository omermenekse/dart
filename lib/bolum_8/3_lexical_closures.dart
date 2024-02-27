/**
 * Closure özel bir fonksiyondur, closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebiliriz.
 */
//lexical variable scope
//bu aşağıdaki değişkenlere olduğu scope da ulaşabiliriz
void main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;

    void b() {
      var bDegiskeni = 3;
      print(aDegiskeni);
      print(mainDegiskeni);
    }
  }

  /*var d = topla(10);
  var sonuc = d(5);
  print(sonuc);
  */

// bu yapılan iç içe fonksiyon çağırma işine lexical closure deniliyor
  var dondurulenFonksiyon = topla(3);
  var sonuc = dondurulenFonksiyon(4);
  print(sonuc);
}

//bir fonksiyonun içerisine bağşka bir fonksiyonun girmesidir.
//bir fonksiyonun başka bir fonksiyon döndürmesisdir
Function topla(int eleman) {
  return (int deger) => deger * eleman;
}




//lexical closure içerideki fonksiyonun dışarıdaki değikenlere ulaşabilmesi anlamına geliyor