// lib/features/auth/data/models/user_model.dart

class UserModel {
  final String uid;
  final String phone;
  final String username;

  UserModel({
    required this.uid,
    required this.phone,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'phone': phone,
      'username': username,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'],
      phone: map['phone'],
      username: map['username'],
    );
  }
}
