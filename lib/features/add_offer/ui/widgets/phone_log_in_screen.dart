// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// //  PhoneLogInScreen
//
// class PhoneLogInScreen extends StatefulWidget {
//   const PhoneLogInScreen({super.key});
//   @override
//   State<PhoneLogInScreen> createState() => _RegisterScreenState();
// }
//
// class _RegisterScreenState extends State<PhoneLogInScreen> {
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final nameController = TextEditingController();
//
//   Future<void> registerUser() async {
//     try {
//       // 1. إنشاء حساب في Firebase Auth
//       UserCredential userCredential = await FirebaseAuth.instance
//           .createUserWithEmailAndPassword(
//           email: emailController.text.trim(),
//           password: passwordController.text.trim());
//
//       String uid = userCredential.user!.uid;
//
//       // 2. حفظ بيانات المستخدم في Firestore
//       await FirebaseFirestore.instance.collection('users').doc(uid).set({
//         'uid': uid,
//         'email': emailController.text.trim(),
//         'name': nameController.text.trim(),
//         'createdAt': Timestamp.now(),
//       });
//
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("تم التسجيل بنجاح!")),
//       );
//     } catch (e) {
//       print("خطأ في التسجيل: $e");
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("فشل التسجيل: $e")),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("تسجيل حساب")),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             TextField(
//               controller: nameController,
//               decoration: const InputDecoration(labelText: "الاسم"),
//             ),
//             TextField(
//               controller: emailController,
//               decoration: const InputDecoration(labelText: "البريد الإلكتروني"),
//             ),
//             TextField(
//               controller: passwordController,
//               decoration: const InputDecoration(labelText: "كلمة المرور"),
//               obscureText: true,
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: registerUser,
//               child: const Text("تسجيل"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }