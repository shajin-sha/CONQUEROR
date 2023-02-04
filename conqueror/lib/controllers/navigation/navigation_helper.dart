import 'package:flutter/material.dart';

class NavigationKeys {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
}

class NavigationHelper with ChangeNotifier {
  int homeScreenTabIndex = 0;

  static void navigate({required String path, Object? arguments, BuildContext? context}) {
    Navigator.pushNamed(context ?? NavigationKeys.navigatorKey.currentContext!, path, arguments: arguments);
  }

  static void back({BuildContext? context}) {
    Navigator.pop(context ?? NavigationKeys.navigatorKey.currentContext!);
  }

  void changeHomeScreenTabIndex(int index) {
    homeScreenTabIndex = index;
    notifyListeners();
  }
}
