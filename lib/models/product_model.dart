import 'dart:convert';

class Product {
    final int? id;
    final String? name;
    final String? description;
    final int? price;
    final int? stock;
    final int? discount;
    final dynamic photo;
    final int? storeId;
    final DateTime? createdAt;
    final DateTime? updatedAt;

    Product({
        this.id,
        this.name,
        this.description,
        this.price,
        this.stock,
        this.discount,
        this.photo,
        this.storeId,
        this.createdAt,
        this.updatedAt,
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
        storeId: json["store_id"],
        createdAt: json["createdAt"] == null ? null : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null ? null : DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "stock": stock,
        "discount": discount,
        "photo": photo,
        "store_id": storeId,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
    };
}
