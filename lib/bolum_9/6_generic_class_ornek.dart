import '7_mystack.dart';

void main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("ömer");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5);
  //intMyStack.push("ömer");

  StringMyStack stringMyStack = StringMyStack();
  stringMyStack.push("ömer");
  print(stringMyStack.toString());

// generic bir yapı oluşturduğumuzda dynamic bir yapı ile oluşur
//fakat biiz önüne bir veri tipi belirlediğimiz zaman
//generic yapı belirlenen veri türüne göre çalışmaya başlar.

/*
  GenericStack genericStack = GenericStack();
  genericStack.push("ömer");
  genericStack.push(3);
  */

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("ömer");
  print(genericStack.pop());
}
