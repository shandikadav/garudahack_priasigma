import 'dart:convert';

class Order {
  final int? userId;
  final Items? items;

  Order({
    this.userId,
    this.items,
  });

  factory Order.fromRawJson(String str) => Order.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        userId: json["user_id"],
        items: json["items"] == null ? null : Items.fromJson(json["items"]),
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "items": items?.toJson(),
      };
}

class Items {
  final int? productId;
  final int? quantity;
  final int? storeId;

  Items({
    this.productId,
    this.quantity,
    this.storeId,
  });

  factory Items.fromRawJson(String str) => Items.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Items.fromJson(Map<String, dynamic> json) => Items(
        productId: json["product_id"],
        quantity: json["quantity"],
        storeId: json["store_id"],
      );

  Map<String, dynamic> toJson() => {
        "product_id": productId,
        "quantity": quantity,
        "store_id": storeId,
      };
}
