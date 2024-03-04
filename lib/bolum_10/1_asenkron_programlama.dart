import 'dart:io';

void main(List<String> args) {
  //git kayıtlarını unutma
  print("anne çocuğu ekmek almaya yollar");
  uzunSurenIslem();
  print("peynir zeytin hazırlar");
  print("kahvaltı hazır");
}

//flutter single thread bir yapıda çalışır.
//yani işler birbiri ile peş peşe çalışır

//bu metod asenkron çalışma için
void uzunSurenIslem() {
  print("çocuk ekmek almak için evden çıkar");
  Future.delayed(Duration(seconds: 5), () {
    print("çocuk ekmekle eve girer");
  });
}

/*
bu metod senkron çalışma için
void uzunSurenIslem() {
  print("çocuk ekmek almak için evden çıkar");
  sleep(Duration(seconds: 10));
  print("çocuk ekmekle eve girer");
}*/


/*
bu şekilde çalışma senkron bir çalışmadır. bu çalışmada bir işlem
bitmeden diğer işleme geçilmezde bu da uygulamaaın yavaş çalışmasına neden olur. 
bunun için asenkron çalışma uygulanır
*/
