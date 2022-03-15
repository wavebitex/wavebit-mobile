class User {
  int? id;
  String? fullName;
  String? email;
  String? password;
  String? phone;
  String? otp;
  String? token;
  String? referralCode;
  String? createdAt;
  String? updatedAt;
  int? status;
  String? pin;

  User(
      {
        this.id,
      this.fullName,
      this.email,
      this.password,
      this.phone,
      this.otp,
      this.token,
      this.referralCode,
      this.createdAt,
      this.updatedAt,
      this.status,
      this.pin});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
    otp = json['otp'];
    token = json['token'];
    referralCode = json['referral_code'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    status = json['status'];
    pin = json['pin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = id;
    data['full_name'] = fullName;
    data['email'] = email;
    data['password'] = password;
    data['phone'] = phone;
    data['otp'] = otp;
    data['token'] = token;
    data['referral_code'] = referralCode;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['status'] = status;
    data['pin'] = pin;
    return data;
  }
}
