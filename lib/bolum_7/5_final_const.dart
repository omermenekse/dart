/*
bazı durumlarda değişmez değerlere ihtiyaç duyabiliriz. bir değer atadıktan sonra bu değerin
sonradan değiştirilmesini istemiyorsak final ve const anahtar kelimeleri ile değişkenlerimi tanımlarız.

kullanım ve amaçları aynı olan bu iki kavramın farkı :
final : değer atandıktan sonra, bellekte yer ayrılması sadece erişilirse olur. final verilerin değerleri değişebilir, veri tipleri değiştirilemez.
const : bu da aslında final'dir ama derleme anında değer atanır ve bellekte yeri ayrılır, hiç kullanılmasa bile... Veri tipi de içindeki değer de sonradan değiştirilemez. 

burada veri türü belirtilebilir ama isteğe bağlıdır, yani belirtilmese de olur.

En önemli fark ise instance değişkenler sadece final olarak tanımlanır, const ile tanımlanamaz.
const ile tanımlanması için static const olmalıdır.

 */
void main(List<String> args) {
  //İMMUTABELE DEĞİŞMEZ
  var str = "ömer";
  str = "altunbilek";

  final str2 = "omer";

  //final olarak tanımladığımız değişkeni bir daha değiştiremeyiz.
  //str2 = "menekşe";

//sabit değişkenlere değer atanamaz ilk verilen değer kalır
  //const String str3 = "ankara";
  //str3 = "samsun";

  //runtime ekranda ilk önce gördüğümüz şeylerdir. bu aşamada final olarak
  //değişkenleri tanımlamak önemlidir.

//compile time ise ekranda çıktıyı görene kadar olan zamanda gerçekleşen işlemlerdir.

  const sayi = 5;

  final sayi2 = 10;

  final tarih = DateTime.now();

  //const compile time daki değerler için kullanmamaız gerekir.

/*
  final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];

 final liste oluşturmanın amacı liste adında ikinci bir değişken oluşturmamak için, fakat liste içerisine eleman ekleyemeyiz.
*/
  const liste = [1, 2, 3];
  const liste2 = [1, 2, 3];
  if (liste == liste2) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}
