part of 'models.dart';

class Space {
  late int id;
  late int price;
  late String nameSpace;
  late int rate;
  late String imageUrl;
  late String citySpace;
  late String countrySpace;
  late String address;
  late String phone;
  late String mapURL;
  late List photos;
  late int numberOfKitchens;
  late int numberOfBedrooms;
  late int numberOfCupboards;

  Space({
    this.id = 0,
    this.rate = 0,
    this.price = 0,
    this.nameSpace = "",
    this.imageUrl = "",
    this.citySpace = "",
    this.countrySpace = "",
    this.address = "",
    this.phone = "",
    this.mapURL = "",
    this.photos = const [],
    this.numberOfBedrooms = 0,
    this.numberOfCupboards = 0,
    this.numberOfKitchens = 0,
  });
  Space.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameSpace = json['name'];
    citySpace = json['city'];
    countrySpace = json['country'];
    imageUrl = json['image_url'];
    price = json['price'];
    rate = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapURL = json['map_url'];
    photos = json['photos'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfKitchens = json['number_of_kitchens'];
    numberOfCupboards = json['number_of_cupboards'];
    // photos = json['photos'] != null ? List<String>.from(json['photos']) : [];
  }
}
