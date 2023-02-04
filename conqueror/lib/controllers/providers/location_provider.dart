import 'package:flutter/foundation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationProvider extends ChangeNotifier {
  Position? position;
  List<Placemark>? placemarks;
  LocationProvider({this.position});
  Future<void> updateLocation(Position? fetchedPosition) async {
    position = fetchedPosition;
    placemarks = await placemarkFromCoordinates(fetchedPosition!.latitude, fetchedPosition.longitude);
    notifyListeners();
  }
}
