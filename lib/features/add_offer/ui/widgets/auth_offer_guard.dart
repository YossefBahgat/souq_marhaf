import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:souq_Morhaf/features/add_offer/data/submit_offer.dart';

import '../../../../core/routing/routes.dart';

Future<String?> checkAuthAndSubmitOffer({
  required BuildContext context,
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

  if (user == null) {
    showDialog(
      context: context,
      builder:
          (_) => AlertDialog(
            title: const Text("تنبيه"),
            content: const Text("يجب تسجيل الدخول أولًا لإضافة العرض."),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, Routes.logInScreen);
                },
                child: const Text("تسجيل الدخول"),
              ),
            ],
          ),
    );
    return null;
  }
  try {
    await submitOffer(
      region: region,
      city: city,
      brand: brand,
      type: type,
      model: model,
      additionalInfo: additionalInfo,
      subject: subject,
      price: price,
      phoneNumber: phoneNumber,
      images: images,
    );
    return "تم إضافة العرض بنجاح";
  } catch (e) {
    return "حدث خطأ: ${e.toString()}";
  }
}

