import 'dart:developer';

import 'package:conqueror/controllers/providers/location_provider.dart';
import 'package:conqueror/core/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';

class InitSetup extends StatefulWidget {
  final Widget child;
  const InitSetup({super.key, required this.child});

  @override
  State<InitSetup> createState() => _InitSetupState();
}

class _InitSetupState extends State<InitSetup> {
  // init setup
  @override
  void initState() {
    super.initState();

    // Call init setup
    Helper.fetchCurrentLocation.then((Position? value) {
      Provider.of<LocationProvider>(context, listen: false).updateLocation(value);
    }).catchError((error) {
      log("Location error: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
