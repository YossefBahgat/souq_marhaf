import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // تسجيل مستخدم جديد بإيميل وكلمة مرور
  Future<void> registerWithEmail({
    required String email,
    required String username,
    required String password,
  }) async {
    final userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    // تخزين بيانات المستخدم في Firestore
    await _firestore.collection('users').doc(userCredential.user!.uid).set({
      'uid': userCredential.user!.uid,
      'email': email,
      'username': username,
    });
  }

  // تسجيل دخول مستخدم بإيميل وكلمة مرور
  Future<void> loginWithEmail({
    required String email,
    required String password,
  }) async {
    await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  // تسجيل خروج
  Future<void> logout() async {
    await _auth.signOut();
  }
}