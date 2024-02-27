void main(List<String> args) {
  double doubleOrtalama = ortalamaBul(5, 5.4);
  double doubleOrtalama1 = ortalamaBul<int>(2, 8);
  print("ortalama : $doubleOrtalama");
  print("ortalama : $doubleOrtalama1");
}

// fonksiyondan hemen sonra generic olduğunu belirtmemiz gerekir
double ortalamaBul<T extends num>(T s1, T s2) {
  return (s1 + s2) / 2;
}
