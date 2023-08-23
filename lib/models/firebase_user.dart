import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart' show immutable;
import 'package:zaisystems/consts/models.dart';

@immutable
class FirebaseUser {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String profileUrl;
  final String downloadableProfileUrl;

  const FirebaseUser({
    required this.id,
    required this.name,
    required this.email,
    this.phone = "",
    this.profileUrl = "",
    this.downloadableProfileUrl = "",
  });

  factory FirebaseUser.fromFirebase(User user) {
    return FirebaseUser(
      id: user.uid,
      name: user.displayName!,
      email: user.email!,
      phone: user.phoneNumber ?? "",
      downloadableProfileUrl: user.photoURL ?? "",
    );
  }

  factory FirebaseUser.fromJson(Map<String, dynamic> json) {
    return FirebaseUser(
      id: json[userIdColumn] as String,
      name: json[userNameColumn] as String,
      email: json[userEmailColumn] as String,
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
      userPhoneColumn: phone,
      userProfileUrlColumn: profileUrl,
      userDProfileUrlColumn: downloadableProfileUrl,
    };
  }

  FirebaseUser copyWith({
    String? id,
    String? name,
    String? email,
    String? password,
    String? address,
    String? phone,
    String? profileUrl,
    String? downloadableProfileUrl,
  }) {
    return FirebaseUser(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      profileUrl: profileUrl ?? this.profileUrl,
      downloadableProfileUrl:
          downloadableProfileUrl ?? this.downloadableProfileUrl,
    );
  }

  @override
  String toString() {
    return '{id: $id, name: $name, email: $email, profileUrl: $profileUrl, downloadableProfileUrl: $downloadableProfileUrl}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FirebaseUser &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          email == other.email &&
          profileUrl == other.profileUrl &&
          downloadableProfileUrl == other.downloadableProfileUrl;

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      email.hashCode ^
      profileUrl.hashCode ^
      downloadableProfileUrl.hashCode;
}
