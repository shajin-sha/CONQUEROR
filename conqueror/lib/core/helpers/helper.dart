import 'package:conqueror/controllers/navigation/navigation_helper.dart';
import 'package:conqueror/controllers/navigation/paths.dart';
import 'package:conqueror/core/location/geo_location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class Helper {
  static Future<Position?> fetchCurrentLocation = fetchLocation();
}

String formatAddress(List<Placemark>? placemark) {
  if (placemark == null || placemark.isEmpty) {
    return "- - -";
  } else {
    return "${placemark.first.locality}, ${placemark.first.name}, ${placemark.first.postalCode}, ${placemark.first.administrativeArea}";
  }
}

Widget homeFlotingActionButton() {
  return FloatingActionButton(
    onPressed: () => NavigationHelper.navigate(path: Paths.report),
    child: const Icon(CupertinoIcons.plus, color: Colors.white),
  );
}
