class CemberDaire {
  int _yaricap = 1;
  double _pi = 3.14;
  CemberDaire(int yariCap) {
    _yariCapKontrol = yariCap;
  }

  void set _yariCapKontrol(int deger) {
    if (deger > 0) {
      _yaricap = deger;
    } else
      _yaricap = 1;
  }

  double cevreHesapla() {
    return 2 * _pi * _yaricap;
  }

  double alanHesapla() {
    return _pi * _yaricap * _yaricap;
  }
}
