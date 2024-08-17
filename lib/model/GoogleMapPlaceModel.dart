import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPlaceModel {
  final String name;
  final LatLng location;
  final String? phoneNumber;

  GoogleMapPlaceModel(
      {required this.name, required this.location, this.phoneNumber});

  factory GoogleMapPlaceModel.fromJson(
      Map<String, dynamic> json, String? phoneNumber) {
    final location = json['geometry']['location'];
    return GoogleMapPlaceModel(
      name: json['name'],
      location: LatLng(location['lat'], location['lng']),
      phoneNumber: phoneNumber,
    );
  }
}
