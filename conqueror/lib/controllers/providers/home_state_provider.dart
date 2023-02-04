import 'package:conqueror/controllers/navigation/navigation_helper.dart';
import 'package:flutter/material.dart';

class HomeStateProvider extends ChangeNotifier {
  bool isOverviewExpanded = false;
  int selectedBottomNavIndex = 0;
  bool partnerMood = false;

  void toggleOverview() {
    isOverviewExpanded = !isOverviewExpanded;
    notifyListeners();
  }

  void navigateTo(int index) {
    if (index == 2) {
      ScaffoldMessenger.of(NavigationKeys.navigatorKey.currentContext!).showSnackBar(const SnackBar(
        duration: Duration(seconds: 8),
        content: Text("Prototype software : This is where app get it's is revenue from paid promotions and offers. (Guiding users to the right place, what they have to do after been infected etc..)"),
      ));
    }
    selectedBottomNavIndex = index;
    notifyListeners();
  }

  void togglePartnerMood() {
    partnerMood = !partnerMood;
    notifyListeners();
  }
}
