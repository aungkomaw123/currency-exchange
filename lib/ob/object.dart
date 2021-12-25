class CurrencyOb {
  CurrencyOb({
    required this.info,
    required this.description,
    required this.timestamp,
    required this.rates,
  });
  late final String info;
  late final String description;
  late final String timestamp;
  late final Rates rates;

  CurrencyOb.fromJson(Map<String, dynamic> json) {
    info = json['info'];
    description = json['description'];
    timestamp = json['timestamp'];
    rates = Rates.fromJson(json['rates']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['info'] = info;
    _data['description'] = description;
    _data['timestamp'] = timestamp;
    _data['rates'] = rates.toJson();
    return _data;
  }
}

class Rates {
  Rates({
    required this.USD,
    required this.RUB,
    required this.KWD,
    required this.DKK,
    required this.AUD,
    required this.ZAR,
    required this.NPR,
    required this.INR,
    required this.BND,
    required this.EUR,
    required this.THB,
    required this.PKR,
    required this.KES,
    required this.CNY,
    required this.CHF,
    required this.SAR,
    required this.LAK,
    required this.EGP,
    required this.BDT,
    required this.LKR,
    required this.NZD,
    required this.IDR,
    required this.KHR,
    required this.SGD,
    required this.VND,
    required this.PHP,
    required this.KRW,
    required this.CZK,
    required this.JPY,
    required this.MYR,
    required this.RSD,
    required this.BRL,
    required this.HKD,
    required this.SEK,
    required this.NOK,
    required this.ILS,
    required this.CAD,
    required this.GBP,
  });
  late final String USD;
  late final String RUB;
  late final String KWD;
  late final String DKK;
  late final String AUD;
  late final String ZAR;
  late final String NPR;
  late final String INR;
  late final String BND;
  late final String EUR;
  late final String THB;
  late final String PKR;
  late final String KES;
  late final String CNY;
  late final String CHF;
  late final String SAR;
  late final String LAK;
  late final String EGP;
  late final String BDT;
  late final String LKR;
  late final String NZD;
  late final String IDR;
  late final String KHR;
  late final String SGD;
  late final String VND;
  late final String PHP;
  late final String KRW;
  late final String CZK;
  late final String JPY;
  late final String MYR;
  late final String RSD;
  late final String BRL;
  late final String HKD;
  late final String SEK;
  late final String NOK;
  late final String ILS;
  late final String CAD;
  late final String GBP;

  Rates.fromJson(Map<String, dynamic> json) {
    USD = json['USD'];
    RUB = json['RUB'];
    KWD = json['KWD'];
    DKK = json['DKK'];
    AUD = json['AUD'];
    ZAR = json['ZAR'];
    NPR = json['NPR'];
    INR = json['INR'];
    BND = json['BND'];
    EUR = json['EUR'];
    THB = json['THB'];
    PKR = json['PKR'];
    KES = json['KES'];
    CNY = json['CNY'];
    CHF = json['CHF'];
    SAR = json['SAR'];
    LAK = json['LAK'];
    EGP = json['EGP'];
    BDT = json['BDT'];
    LKR = json['LKR'];
    NZD = json['NZD'];
    IDR = json['IDR'];
    KHR = json['KHR'];
    SGD = json['SGD'];
    VND = json['VND'];
    PHP = json['PHP'];
    KRW = json['KRW'];
    CZK = json['CZK'];
    JPY = json['JPY'];
    MYR = json['MYR'];
    RSD = json['RSD'];
    BRL = json['BRL'];
    HKD = json['HKD'];
    SEK = json['SEK'];
    NOK = json['NOK'];
    ILS = json['ILS'];
    CAD = json['CAD'];
    GBP = json['GBP'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['USD'] = USD;
    _data['RUB'] = RUB;
    _data['KWD'] = KWD;
    _data['DKK'] = DKK;
    _data['AUD'] = AUD;
    _data['ZAR'] = ZAR;
    _data['NPR'] = NPR;
    _data['INR'] = INR;
    _data['BND'] = BND;
    _data['EUR'] = EUR;
    _data['THB'] = THB;
    _data['PKR'] = PKR;
    _data['KES'] = KES;
    _data['CNY'] = CNY;
    _data['CHF'] = CHF;
    _data['SAR'] = SAR;
    _data['LAK'] = LAK;
    _data['EGP'] = EGP;
    _data['BDT'] = BDT;
    _data['LKR'] = LKR;
    _data['NZD'] = NZD;
    _data['IDR'] = IDR;
    _data['KHR'] = KHR;
    _data['SGD'] = SGD;
    _data['VND'] = VND;
    _data['PHP'] = PHP;
    _data['KRW'] = KRW;
    _data['CZK'] = CZK;
    _data['JPY'] = JPY;
    _data['MYR'] = MYR;
    _data['RSD'] = RSD;
    _data['BRL'] = BRL;
    _data['HKD'] = HKD;
    _data['SEK'] = SEK;
    _data['NOK'] = NOK;
    _data['ILS'] = ILS;
    _data['CAD'] = CAD;
    _data['GBP'] = GBP;
    return _data;
  }
}
