// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
    String model;
    int pk;
    Fields fields;

    Product({
        required this.model,
        required this.pk,
        required this.fields,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    String name;
    String description;
    int amount;
    int price;
    String picture;
    int user;

    Fields({
        required this.name,
        required this.description,
        required this.amount,
        required this.price,
        required this.picture,
        required this.user,
    });

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        name: json["name"],
        description: json["description"],
        amount: json["amount"],
        price: json["price"],
        picture: json["picture"],
        user: json["user"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "amount": amount,
        "price": price,
        "picture": picture,
        "user": user,
    };
}
