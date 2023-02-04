import 'package:conqueror/Ui/tabs/home_tab.dart';
import 'package:conqueror/Ui/tabs/profile_tab.dart';
import 'package:conqueror/Ui/tabs/suggestions_tab.dart';
import 'package:conqueror/Ui/tabs/symptoms_tab.dart';
import 'package:conqueror/Ui/widgets/common/bottom_navigation.dart';
import 'package:conqueror/controllers/providers/home_state_provider.dart';
import 'package:conqueror/core/helpers/helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeStateProvider = context.watch<HomeStateProvider>();
    return Scaffold(
      floatingActionButton: homeStateProvider.selectedBottomNavIndex == 0 ? homeFlotingActionButton() : null,
      bottomNavigationBar: const MobileBottomBar(),
      body: IndexedStack(
        index: homeStateProvider.selectedBottomNavIndex,
        children: const [
          HomeTab(),
          SymptomsTab(),
          SuggestionsTab(),
          ProfileTab(),
        ],
      ),
    );
  }
}
