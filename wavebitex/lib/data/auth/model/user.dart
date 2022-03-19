import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@Freezed()
abstract class User with _$User {
  const factory User({
    int? id,
    String? fullName,
    String? email,
    String? password,
    String? phone,
    String? otp,
    String? token,
    String? referralCode,
    String? createdAt,
    String? updatedAt,
    int? status,
    String? pin,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
