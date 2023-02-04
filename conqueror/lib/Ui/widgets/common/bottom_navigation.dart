import 'package:conqueror/controllers/providers/home_state_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class MobileBottomBar extends StatelessWidget {
  const MobileBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeStateProvider = context.watch<HomeStateProvider>();
    return Container(
      color: Theme.of(context).colorScheme.background,
      child: SalomonBottomBar(
        currentIndex: homeStateProvider.selectedBottomNavIndex,
        onTap: (index) => homeStateProvider.navigateTo(index),
        items: [
          /// Home
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.house_fill),
            title: const Text("Home"),
            selectedColor: Theme.of(context).colorScheme.primary,
          ),

          /// Likes
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.person_solid),
            title: const Text("Symptoms"),
            selectedColor: Theme.of(context).colorScheme.primary,
          ),

          /// Search
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.suit_heart_fill),
            title: const Text("Suggestions"),
            selectedColor: Theme.of(context).colorScheme.primary,
          ),

          /// Profile
          SalomonBottomBarItem(
            icon: const Icon(CupertinoIcons.person_fill),
            title: const Text("Profile"),
            selectedColor: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}
