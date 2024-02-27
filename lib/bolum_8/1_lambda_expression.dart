/**
 * Lambda : ismi olmayan fonksiyonlardır. Dartta her fonksiyon aslında bir nesnedir.
 */
void main(List<String> args) {
  // alttaki tanımla gibi bir fonksiyon oluşturduğumuzda buna lambda expression deniyor
  var fonk1 = (int a, int b) {
    int toplam = a + b;
    print(toplam);
  };

  fonk1(1, 2);

  String isim = "ömer";
  //dartta herşey birer nesnedir.

//ikiside aynı anlamdadır.
  var f2 = (int s) => s * 2;
  var f3 = (int s2) {
    return s2 * 2;
  };

  var sayi = f2(5);
  print(sayi);
  print(f3(6));
}

//Normal bir fonksiyon
void sayilariTopla(int a, int b) {
  int toplam = a + b;
  print(toplam);
}
