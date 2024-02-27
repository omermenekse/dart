void main(List<String> args) {
//immutable değişmez class
  const Student omer = Student(5, "Ömer");
  const Student omer2 = Student(5, "Ömer");
  var omer3 = const Student(5, "Ömer");

  if (omer == omer2) {
    print("eşit");
  } else {
    print("eşit değil");
  }
}

class Student {
  final int id;
  final String isim;

  const Student(this.id, this.isim);
}
