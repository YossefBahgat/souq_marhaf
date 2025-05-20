// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'product_model.dart';
//
// class ProductRepository {
//   final FirebaseFirestore _firestore;
//
//   ProductRepository({FirebaseFirestore? firestore})
//       : _firestore = firestore ?? FirebaseFirestore.instance;
//
//   Future<Product> fetchProductById(String productId) async {
//     final docSnapshot = await _firestore.collection('products').doc(productId).get();
//     if (!docSnapshot.exists) {
//       throw Exception('Product not found');
//     }
//     final data = docSnapshot.data()!;
//     return Product.fromFirestore(data);
//   }
// }
