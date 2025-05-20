import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
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


abstract class OffersState extends Equatable {
  @override
  List<Object?> get props => [];
}

class OffersInitial extends OffersState {}

class OffersLoading extends OffersState {}

class OffersLoaded extends OffersState {
  final List<Offer> offers;

  OffersLoaded(this.offers);

  @override
  List<Object?> get props => [offers];
}

class OffersError extends OffersState {
  final String message;

  OffersError(this.message);

  @override
  List<Object?> get props => [message];
}

class OffersCubit extends Cubit<OffersState> {
  OffersCubit() : super(OffersInitial()) {
    _subscribeToOffers();
  }

  StreamSubscription? _subscription;

  void _subscribeToOffers() {
    emit(OffersLoading());
    _subscription = FirebaseFirestore.instance
        .collection('offers')
        .orderBy('timestamp', descending: true)
        .snapshots()
        .listen((snapshot) {
      final offers = snapshot.docs.map((doc) => Offer.fromFirestore(doc)).toList();
      emit(OffersLoaded(offers));
    }, onError: (error) {
      emit(OffersError(error.toString()));
    });
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}

