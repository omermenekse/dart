/**
 * dartdaki ismlendirilmiş parametreler varsayılan olarak opsiyoneldir, tanımlanması kullanıcıya baglıdır. Bu yüzden kullanıcı tarafından atanmazlarsa null değer alırlar ki bu kabul edilmez. Bu yüzden parametrelerin veri tiplerini tanımlarken String?, int? gibi nullable tiplerle belirtmeliyiz.
 * 
 * Bunun dışında tüm parametrelere varsayılan değerler atanarak da sorun çözülebilir.
 * 
 * Son çözüm ise required kullanarak bu parametrelerin mutlaka girilmesi sağlanabilir.
 */

int ucSayiyiTopla(
    //süslü parantezler varsa bunlar kullanıcının isteğine bağlıdır
    //kullanıcı bunları isterse yazar isterse yazmaz opsiyoneldir.
    {required int ilk,
    required int ikinci,
    required int ucuncu}) {
  return ilk + ikinci + ucuncu;
  // değerlerin başına required yazdığımızda bu değerlere bir değer atamasının yazpılması zorunludur demiş oluyoruz.
}

main(List<String> args) {
  final toplam = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 5);
  final toplam2 = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 5);
  final toplam3 = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 3);
}
