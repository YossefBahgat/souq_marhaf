import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:timeago/timeago.dart' as timeago;

class Offer {
  final String id;
  final String region;
  final String city;
  final String brand;
  final String type;
  final String model;
  final String subject;
  final String additionalInfo;
  final String price;
  final String phone;
  final List<String> imageUrls;
  final String username;
  final String userImagePath;
  final DateTime? timestamp;

  Offer({
    required this.id,
    required this.region,
    required this.city,
    required this.brand,
    required this.type,
    required this.model,
    required this.subject,
    required this.additionalInfo,
    required this.price,
    required this.phone,
    required this.imageUrls,
    required this.username,
    required this.userImagePath,
    required this.timestamp,
  });

  String get timeText {
    if (timestamp == null) return 'منذ قليل';
    return timeago.format(timestamp!, locale: 'ar');
  }

  factory Offer.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Offer(
      id: doc.id,
      region: data['region'] ?? '',
      city: data['city'] ?? '',
      brand: data['brand'] ?? '',
      type: data['type'] ?? '',
      model: data['model'] ?? '',
      subject: data['subject'] ?? '',
      additionalInfo: data['additionalInfo'] ?? '',
      price: data['price'] ?? '',
      phone: data['phone'] ?? '',
      imageUrls: List<String>.from(data['images'] ?? []),
      username: data['username'] ?? 'مستخدم',
      userImagePath: data['userImagePath'] ?? 'assets/images/user.png',
      timestamp: (data['timestamp'] as Timestamp?)?.toDate(),
    );
  }
}
