import 'package:flutter/material.dart' show immutable;
import 'package:zaisystems/consts/models.dart';

@immutable
class User {
  final String id;
  final String name;
  final String email;
  final String password;
  final String phone;
  final String address;
  final String profileUrl;
  final String downloadableProfileUrl;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    this.address = "",
    this.phone = "",
    this.profileUrl = "",
    this.downloadableProfileUrl = "",
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json[userIdColumn] as String,
      name: json[userNameColumn] as String,
      email: json[userEmailColumn] as String,
      password: json[userPasswordColumn] as String,
      address: json[userAddressColumn] as String,
      phone: json[userPhoneColumn] as String,
      profileUrl: json[userProfileUrlColumn] as String,
      downloadableProfileUrl: json[userDProfileUrlColumn] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      userIdColumn: id,
      userNameColumn: name,
      userEmailColumn: email,
      userPasswordColumn: password,
      userAddressColumn: address,
      userPhoneColumn: phone,
      userProfileUrlColumn: profileUrl,
      userDProfileUrlColumn: downloadableProfileUrl,
    };
  }

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? password,
    String? address,
    String? phone,
    String? profileUrl,
    String? downloadableProfileUrl,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      profileUrl: profileUrl ?? this.profileUrl,
      downloadableProfileUrl:
          downloadableProfileUrl ?? this.downloadableProfileUrl,
    );
  }

  @override
  String toString() {
    return '{id: $id, name: $name, email: $email, password: $password, address: $address, profileUrl: $profileUrl, downloadableProfileUrl: $downloadableProfileUrl}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is User &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          email == other.email &&
          password == other.password &&
          address == other.address &&
          profileUrl == other.profileUrl &&
          downloadableProfileUrl == other.downloadableProfileUrl;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      password.hashCode ^
      address.hashCode ^
      profileUrl.hashCode ^
      downloadableProfileUrl.hashCode;
}
