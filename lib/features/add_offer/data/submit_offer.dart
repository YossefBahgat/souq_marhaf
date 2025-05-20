import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> submitOffer({
  required String? region,
  required String? city,
  required String? brand,
  required String? type,
  required String? model,
  required String additionalInfo,
  required String price,
  required String phoneNumber,
  required List<File> images,
  required String subject,
}) async {
  final user = FirebaseAuth.instance.currentUser;
  print('المستخدم الحالي: ${user?.uid}');

  try {
    if (user == null) throw Exception('لا يوجد مستخدم مسجل الدخول');

    // 1. جلب اسم المستخدم من Firestore
    final userDoc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
    final username = userDoc.data()?['username'] ?? 'مستخدم';
    final userImagePath = userDoc.data()?['userImage'] ?? 'assets/images/user.png';

    // 2. تخزين المسارات المحلية للصور فقط
    List<String> imagePaths = images.map((image) => image.path).toList();

    final offerData = {
      'region': region,
      'city': city,
      'brand': brand,
      'type': type,
      'model': model,
      'subject': subject,
      'additionalInfo': additionalInfo,
      'price': price,
      'phone': phoneNumber,
      'images': imagePaths,
      'timestamp': FieldValue.serverTimestamp(),
      'username': username,
      'userImagePath': userImagePath,
      'userId': user.uid,
    };

    // 3. رفع البيانات إلى Firestore
    await FirebaseFirestore.instance.collection('offers').add(offerData);
  } catch (e) {
    throw Exception('فشل رفع العرض: $e');
  }
}
