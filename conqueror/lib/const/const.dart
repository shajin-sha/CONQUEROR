import 'package:conqueror/controllers/providers/home_state_provider.dart';
import 'package:conqueror/controllers/providers/location_provider.dart';
import 'package:conqueror/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

const defaultRadius = 20.0;
const defaultPadding = 15.0;
const blueColor = Color(0xff1ab1dc);
const redColor = Color(0xfff1323a);
const greenColor = Color(0xff3ad5b6);
Color grayColor = HexColor("#F3F3F3");

class Constance {
  static const Color defaultColor = Colors.redAccent;
  static const String appName = 'CONQUEROR';
  static const String appVersion = '1.0.0';
  static const String appBuild = '1';
  static const String appCopyright = 'Copyright © CONQUEROR';
  static const String appDescription = 'CONQUEROR is a mobile application that allows you to report, track, prediction and manage an disease outbreak.';
  static const String appAuthor = 'Shajin KP';
}

class MapKeys {
  static const String urlTemplateWhiteMood = "https://api.mapbox.com/styles/v1/shajin-sha/cl7dba061003t14jv1s96kvop/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic2hhamluLXNoYSIsImEiOiJjbDc5YjRuM3owaHRhM3FzOTR5Y3diYmZ5In0.r2n7QCQOPazkdNzX0Zs6RA";
  static const String urlTemplateDarkMood = "https://api.mapbox.com/styles/v1/shajin-sha/cl79cdjd9002a14qz8s31hz7h/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic2hhamluLXNoYSIsImEiOiJjbDc5YjRuM3owaHRhM3FzOTR5Y3diYmZ5In0.r2n7QCQOPazkdNzX0Zs6RA";
  static const String urlTemplateFree = "https://tile.openstreetmap.org/{z}/{x}/{y}.png";
  static const Map<String, String> additionalOptions = {"access_token": "pk.eyJ1Ijoic2hhamluLXNoYSIsImEiOiJjbDc5YjRuM3owaHRhM3FzOTR5Y3diYmZ5In0.r2n7QCQOPazkdNzX0Zs6RA"};
}

class StoreKeys {
  static const String lastKnownLocation = 'lastKnownLocation';
  static const String accentColor = 'accentColor';
}

class BackDrop {
  static final FocusNode focusNode = FocusNode();
}

class StatusBar {
  static theme() {
    return const SystemUiOverlayStyle(
      // Status bar color
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      statusBarBrightness: Brightness.light, // For iOS (dark icons)
      systemNavigationBarColor: Colors.transparent, // Navigation bar color
      systemNavigationBarIconBrightness: Brightness.dark, // Navigation bar icons
    );
  }
}

// MultiProvider list
class Providers {
  static List<SingleChildWidget> providersList = [
    ChangeNotifierProvider(create: (_) => HomeStateProvider()),
    ChangeNotifierProvider(create: (_) => LocationProvider()),
  ];
}

class NetWorkImages {
  static const String dataWasNotFoundImage = 'https://iili.io/4SSgVe.png';
  static const String searchListStartingImage = 'https://i.postimg.cc/0ywwTZcJ/Enabble-Location-3x.png';
  static const String emptyCartImage = 'https://iili.io/LxlnDB.png';
  static const String productSearchListBuilderImage = 'https://iili.io/LaHXyX.png';
  static const String offlineDB = 'https://i.ibb.co/ch9bwD9/Payment-Failed-Backup-2.png';
}

class NavigationStates {
  static const String first = 'ChoosingLocation';
  static const String second = 'ChoosingVehicle';
  static const String third = 'ChoosingPayment';
  static const String fourth = 'Confirmation';
}

colorThemes(BuildContext context) {
  Theme.of(context);
}

textThemes(BuildContext context) {
  return Theme.of(context).textTheme;
}

Size displaySize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  return displaySize(context).width;
}

class ConstanceData {
  static List<String> colors = ['#f4651f', '#E36973', '#2DC282', '#4C4CFF', '#B323BA', '#4FBE9F'];
}

int colorsIndex = 0;

var primaryColorString = '#ed617b';
var secondaryColorString = '#293462';
var primaryGrayColorString = '#ECECEC';
var blueColorString = "#3D8BFF";
