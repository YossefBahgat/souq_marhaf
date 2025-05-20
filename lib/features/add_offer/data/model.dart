class AddOfferModel {
  final String brand;
  final String type;
  final String model;
  final String region;
  final String city;
  final List<String> images;

  AddOfferModel({
    required this.brand,
    required this.type,
    required this.model,
    required this.region,
    required this.city,
    required this.images,
  });

  Map<String, dynamic> toMap() {
    return {
      'brand': brand,
      'type': type,
      'model': model,
      'region': region,
      'city': city,
      'imagesUrls': images,
    };
  }

  factory AddOfferModel.fromMap(Map<String, dynamic> map) {
    return AddOfferModel(
      brand: map['brand'],
      type: map['type'],
      model: map['model'],
      region: map['region'],
      city: map['city'],
      images: List<String>.from(map['imagesUrls']),
    );
  }
}

