class ListPriceInMicros {
  int? amountInMicros;
  String? currencyCode;

  ListPriceInMicros({this.amountInMicros, this.currencyCode});

  ListPriceInMicros.fromJson(Map<String, dynamic> json) {
    amountInMicros = json['amountInMicros'];
    currencyCode = json['currencyCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['amountInMicros'] = amountInMicros;
    data['currencyCode'] = currencyCode;
    return data;
  }
}
