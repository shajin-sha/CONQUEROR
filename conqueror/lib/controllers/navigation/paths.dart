import 'package:conqueror/Ui/screens/OTP/otp_screen.dart';
import 'package:conqueror/Ui/screens/disease/disease_screen.dart';
import 'package:conqueror/Ui/screens/home/home_screen.dart';
import 'package:conqueror/Ui/screens/registration/registration_screen.dart';
import 'package:conqueror/Ui/screens/report/new_report_screen.dart';
import 'package:flutter/material.dart';

class Paths {
  static const String home = '/';
  static const String disease = '/disease';
  static const String report = '/report';
  static const String otp = '/otp';
  static const String register = '/register';
}

class Routes {
  static Map<String, WidgetBuilder> roots = {
    Paths.home: (context) => const HomeScreen(), // Home
    Paths.disease: (context) => const DiseaseScreen(), // Disease
    Paths.report: (context) => const NewReportScreen(), // Report
    Paths.otp: (context) => OTPScreen(), // OTP
    Paths.register: (context) => const RegistrationScreen(), // Register
  };
}
