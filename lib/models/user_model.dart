import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    final int? userId;
    final String? name;
    final String? email;
    final String? password;
    final String? address;
    final String? phoneNumber;
    final dynamic username;
    final dynamic bio;
    final dynamic profilePicture;
    final DateTime? createdAt;
    final DateTime? updatedAt;

    User({
        this.userId,
        this.name,
        this.email,
        this.password,
        this.address,
        this.phoneNumber,
        this.username,
        this.bio,
        this.profilePicture,
        this.createdAt,
        this.updatedAt,
    });

    factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["user_id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        address: json["address"],
        phoneNumber: json["phone_number"],
        username: json["username"],
        bio: json["bio"],
        profilePicture: json["profile_picture"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "name": name,
        "email": email,
        "password": password,
        "address": address,
        "phone_number": phoneNumber,
        "username": username,
        "bio": bio,
        "profile_picture": profilePicture,
        "created_at": createdAt?.toIso8601String(),
        "updated_at": updatedAt?.toIso8601String(),
    };

    static Future<void> saveToSharedPreferences(User user) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('user', userToJson(user));
  }

  static Future<User?> getFromSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = prefs.getString('user');
    if (userJson != null) {
      return userFromJson(userJson);
    }
    return null;
  }

  static Future<void> removeFromSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('user');
  }
}
