class ProductDetailsArgs {
  final String subject;
  final String username;
  final String userImagePath;
  final String timeText;
  final String region;
  final String productImagePath;
  final String? city;
  final String? brand;
  final String? type;
  final String? model;
  final String additionalInfo;
  final String price;
  final String phoneNumber;
  final List<String> imageUrls;

  ProductDetailsArgs({
    required this.subject,
    required this.username,
    required this.userImagePath,
    required this.timeText,
    required this.region,
    required this.productImagePath,
    this.city,
    this.brand,
    this.type,
    this.model,
    this.additionalInfo = '',
    this.price = '',
    this.phoneNumber = '',
    this.imageUrls = const [],
  });
}
