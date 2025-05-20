
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../data/data_sources/firebase_auth_service.dart';

class AuthController {
  final FirebaseAuthService _service = FirebaseAuthService();

  Future<void> handleRegister({
    required BuildContext context,
    required String email,
    required String username,
    required String password,
  }) async {
    try {
      await _service.registerWithEmail(
        email: email,
        username: username,
        password: password,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("تم إنشاء الحساب بنجاح")),
      );
    } on FirebaseAuthException catch (e) {
      String message;
      switch (e.code) {
        case 'email-already-in-use':
          message = 'هذا البريد الإلكتروني مستخدم بالفعل. حاول تسجيل الدخول.';
          break;
        case 'invalid-email':
          message = 'صيغة البريد الإلكتروني غير صحيحة.';
          break;
        case 'weak-password':
          message = 'كلمة المرور ضعيفة جدًا. اختر كلمة أقوى.';
          break;
        default:
          message = 'حدث خطأ غير متوقع: ${e.message}';
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    } catch (e, stackTrace) {
      debugPrint('Register error: $e');
      debugPrint('Stack trace: $stackTrace');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('فشل إنشاء الحساب. حاول مرة أخرى لاحقًا.')),
      );
    }
  }

  Future<void> handleLogin({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    try {
      await _service.loginWithEmail(
        email: email,
        password: password,
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("تم تسجيل الدخول بنجاح")),
      );
    } on FirebaseAuthException catch (e) {
      String message;
      switch (e.code) {
        case 'user-not-found':
          message = 'هذا البريد غير مسجل. يرجى إنشاء حساب جديد.';
          break;
        case 'wrong-password':
          message = 'كلمة المرور غير صحيحة.';
          break;
        case 'invalid-email':
          message = 'البريد الإلكتروني غير صالح.';
          break;
        default:
          message = 'حدث خطأ أثناء تسجيل الدخول: ${e.message}';
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    } catch (e, stackTrace) {
      debugPrint('Login error: $e');
      debugPrint('Stack trace: $stackTrace');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('فشل تسجيل الدخول. حاول مرة أخرى.')),
      );
    }
  }
}