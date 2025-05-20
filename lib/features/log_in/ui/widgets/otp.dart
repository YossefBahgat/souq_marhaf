// import 'package:flutter/material.dart';
//
// import '../../logic/auth_controller.dart';
//
// class OtpScreen extends StatefulWidget {
//   final String verificationId;
//   final String phone;
//   final String? username;
//   final bool isRegistration;
//
//   const OtpScreen({
//     super.key,
//     required this.verificationId,
//     required this.phone,
//     this.username,
//     required this.isRegistration,
//   });
//
//   @override
//   State<OtpScreen> createState() => _OtpScreenState();
// }
//
// class _OtpScreenState extends State<OtpScreen> {
//   final _controller = AuthController();
//   final _otpController = TextEditingController();
//   bool _isLoading = false;
//
//   @override
//   void dispose() {
//     _otpController.dispose();
//     super.dispose();
//   }
//
//   Future<void> _verifyOtp() async {
//     if (_otpController.text.length != 6) return;
//
//     setState(() => _isLoading = true);
//
//     try {
//       if (widget.isRegistration) {
//         await _controller.confirmRegistration(
//           verificationId: widget.verificationId,
//           smsCode: _otpController.text,
//           username: widget.username!,
//           phone: widget.phone,
//         );
//       } else {
//         await _controller.confirmLogin(
//           verificationId: widget.verificationId,
//           smsCode: _otpController.text,
//         );
//       }
//
//       Navigator.pushReplacementNamed(context, '/home');
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text(e.toString())),
//       );
//     } finally {
//       if (mounted) setState(() => _isLoading = false);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('تأكيد الرمز')),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             Text('تم إرسال رمز التحقق إلى ${widget.phone}'),
//             SizedBox(height: 20),
//             TextField(
//               controller: _otpController,
//               keyboardType: TextInputType.number,
//               maxLength: 6,
//               decoration: InputDecoration(
//                 labelText: 'رمز التحقق',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 20),
//             _isLoading
//                 ? CircularProgressIndicator()
//                 : ElevatedButton(
//               onPressed: _verifyOtp,
//               child: Text('تأكيد'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }