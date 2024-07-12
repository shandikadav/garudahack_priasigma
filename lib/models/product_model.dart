import 'dart:convert';

class Product {
    final int? id;
    final String? name;
    final String? description;
    final int? price;
    final int? stock;
    final int? discount;
    final String? photo;
    final DateTime? expiryDate;
    final int? storeId;
    final DateTime? createdAt;
    final DateTime? updatedAt;
    final int? discountPrice;

    Product({
        this.id,
        this.name,
        this.description,
        this.price,
        this.stock,
        this.discount,
        this.photo,
        this.expiryDate,
        this.storeId,
        this.createdAt,
        this.updatedAt,
        this.discountPrice,
    });

    factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stock: json["stock"],
        discount: json["discount"],
        photo: json["photo"],
        expiryDate: json["expiry_date"] == null ? null : DateTime.parse(json["expiry_date"]),
        storeId: json["store_id"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
        discountPrice: json["discountPrice"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
        "discount": discount,
        "photo": photo,
        "expiry_date": expiryDate?.toIso8601String(),
        "store_id": storeId,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "discountPrice": discountPrice,
    };
}
