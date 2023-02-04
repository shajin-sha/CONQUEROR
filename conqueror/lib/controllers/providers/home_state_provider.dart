import 'package:flutter/material.dart';

class HomeStateProvider extends ChangeNotifier {
  bool isOverviewExpanded = false;
  int selectedBottomNavIndex = 0;

  void toggleOverview() {
    isOverviewExpanded = !isOverviewExpanded;
    notifyListeners();
  }

  void navigateTo(int index) {
    selectedBottomNavIndex = index;
    notifyListeners();
  }
}
