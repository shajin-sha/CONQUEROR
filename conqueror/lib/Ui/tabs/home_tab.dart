import 'package:conqueror/Ui/widgets/home_header.dart';
import 'package:conqueror/Ui/widgets/home_map_card.dart';
import 'package:conqueror/Ui/widgets/home_screen_search.dart';
import 'package:conqueror/Ui/widgets/overview_gird.dart';
import 'package:conqueror/Ui/widgets/resent_reported_list.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeHeader(),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: const [
              HomeMapCard(),
              OverviewGird(),
              HomeScreenSearch(),
              ResentReportsList(),
            ],
          ),
        ),
      ],
    );
  }
}
