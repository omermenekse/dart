import 'dart:math';

void main(List<String> args) {
  double deger = kareKokunuAL(25);
  print("Deger ${deger.toStringAsFixed(2)}");

// burada hata mesajı yapabilmek için hatalı bir değer girmemiz gerekir.
  try {
    double deger1 = kareKokunuAL(-25);
    print("Deger ${deger1.toStringAsFixed(2)}");
  } on FormatException catch (e) {
    print(e.message);
    //print(e.source);
  } catch (e) {
    print(e);
  }
}

double kareKokunuAL(int i) {
  if (i < 0) {
    throw FormatException("sayı negatif olamaz");
  }
  return sqrt(i);
}
