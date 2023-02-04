import 'package:conqueror/controllers/navigation/navigation_helper.dart';
import 'package:conqueror/data/data.dart';
import 'package:flutter/cupertino.dart';

class ResentReportsProvider extends ChangeNotifier {
  List<Map<String, dynamic>> overviewCardData = Data.resentReports;
  List<Map<String, dynamic>> resentReports = Data.resentReports;
  List<Map<String, dynamic>> symptoms = Data.symptoms;
  int selectedIndex = 0;

  void search(String query) {
    if (query.isEmpty) {
      resentReports = Data.resentReports;
      notifyListeners();
    } else {
      resentReports = Data.resentReports.where((element) => element['name'].toString().toLowerCase().contains(query)).toList();
      notifyListeners();
    }
  }

  void toggleSymptom(String symptomName) {
    for (var element in symptoms) {
      if (element['name'] == symptomName) {
        element['is_selected'] = !element['is_selected'];
      }
    }
    notifyListeners();
  }

  void setDiseaseIndex(index) {
    selectedIndex = index;
    notifyListeners();
  }

  void postNewDisease() {
    // Find disease from disease index (selectedIndex)
    Map<String, dynamic> selectedIndexDisease = resentReports.where((element) => resentReports.indexOf(element) == selectedIndex).toList()[0];
    resentReports.add(selectedIndexDisease);
    NavigationHelper.back();
    notifyListeners();
  }
}
