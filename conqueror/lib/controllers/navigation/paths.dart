import 'package:conqueror/Ui/screens/disease/disease_screen.dart';
import 'package:conqueror/Ui/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class Paths {
  static const String home = '/';
  static const String disease = '/disease';
}

class Routes {
  static Map<String, WidgetBuilder> roots = {
    Paths.home: (context) => const HomeScreen(), // Home
    Paths.disease: (context) => const DiseaseScreen(), // Disease
  };
}
