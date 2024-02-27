/**
 * Dinamik olarak büyüyen küçülen koleksiyonlarımız varsa sabit uzunluklu listeler yerine
 * buyuyen listeleri kullanırız. Bu listelere varsayılan olarak boyut vermemiz gerekmez.
 * Tanımlanması sabit uzunluklu dizilere benzer sadece burada listenin boyutunu belirtmeyiz.
 * add eleman ekler, 
 * clear tüm elemanları siler, 
 * remove verilen elemanı siler,
 * removeAt belirtilen indextekielemanı siler
 * Ayrıca [] kullanarak belli bir indexteki elemanı güncelleyebilirz.
 */
void main(List<String> args) {
  List<int> sayilar = [];

  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);
  print(sayilar);
  print(sayilar.length);
  //sayilar.length= 100; bu şekilde listeye olmayan elemanlar
  //için null değeri atamasına izin vermeliyiz "?" işareti ile
  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(55);
  print(sayilar2);

//sabit uzunluklu liste fakat büyüp küçülebilsin
  List<int> sayilar3 = List.filled(10, 10, growable: true);
  print(sayilar3);
  sayilar3.add(55);
  print(sayilar3);
  print(sayilar3.length);
  print("*****");
  List<int> sayilar4 = List.empty(growable: true);
  List<int> sayilar5 = [];
  // yukaridaki iki listede aynı işi yapmaktadır.
  sayilar4.add(10);
  sayilar5.add(11);
  //dinamik listelerde indeks numarasına göre değer girişi yapamıyoruz
}
