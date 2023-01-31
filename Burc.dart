class Burc {
  final String _burcAdi;
  final String _burcTarihi;
  final String _burcDetayi;
  final String _burcKucukResim;
  final String _burcBuyukResim;
  String get burcBuyukResim => _burcBuyukResim;
  String get burcAdi=> _burcAdi;
  String get burcTarihi=> _burcTarihi;
  String get burcDetayi=> _burcDetayi;
  String get burcKucukResim=> _burcKucukResim;
  Burc(this._burcDetayi,this._burcAdi,this._burcBuyukResim,this._burcKucukResim,this._burcTarihi);
}
