import 'package:bookly/features/Home/data/models/book_model/list_price.dart';

class Offers {
  int? finskyOfferType;
  ListPrice? listPrice;
  ListPrice? retailPrice;
  bool? giftable;

  Offers(
      {this.finskyOfferType, this.listPrice, this.retailPrice, this.giftable});

  Offers.fromJson(Map<String, dynamic> json) {
    finskyOfferType = json['finskyOfferType'];
    listPrice = json['listPrice'] != null
        ? ListPrice.fromJson(json['listPrice'])
        : null;
    retailPrice = json['retailPrice'] != null
        ? ListPrice.fromJson(json['retailPrice'])
        : null;
    giftable = json['giftable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['finskyOfferType'] = finskyOfferType;
    if (listPrice != null) {
      data['listPrice'] = listPrice!.toJson();
    }
    if (retailPrice != null) {
      data['retailPrice'] = retailPrice!.toJson();
    }
    data['giftable'] = giftable;
    return data;
  }
}
