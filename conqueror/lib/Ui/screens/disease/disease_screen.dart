import 'package:conqueror/Ui/widgets/common/color_card.dart';
import 'package:conqueror/Ui/widgets/common/heading.dart';
import 'package:conqueror/Ui/widgets/home_map_card.dart';
import 'package:conqueror/controllers/providers/resent_reports_provider.dart';
import 'package:conqueror/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DiseaseScreen extends StatelessWidget {
  const DiseaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ResentReportsProvider resentReportsProvider = Provider.of<ResentReportsProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          const Heading(title: "Disease", subtile: "More details of the disease", showBackButton: true),
          const Divider(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(0),
              children: [
                const Heading(title: "Heat map ", subtile: "Heat map of the disease", padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                const HomeMapCard(),
                const SizedBox(height: 10),
                const Heading(title: "Quick overview", subtile: "Color code of the disease", padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                Wrap(
                  children: [
                    ColorCard(
                      big: true,
                      title: resentReportsProvider.resentReports[resentReportsProvider.selectedIndex]['first_date_case'],
                      subtitle: "First case",
                      icon: CupertinoIcons.calendar,
                      backgroundColor: HexColor("#b0e861"),
                    ),
                    ColorCard(
                      title: resentReportsProvider.resentReports[resentReportsProvider.selectedIndex]['major_symptom'],
                      backgroundColor: HexColor("#6cbcf5"),
                      subtitle: "Major symptoms",
                      icon: CupertinoIcons.person_solid,
                    ),
                    ColorCard(
                      subtitle: "Chance of infection",
                      title: resentReportsProvider.resentReports[resentReportsProvider.selectedIndex]['predictions']['chance'],
                      backgroundColor: HexColor("#f0785d"),
                    ),
                    ColorCard(
                      title: "Prevention",
                      subtitle: resentReportsProvider.resentReports[resentReportsProvider.selectedIndex]['predictions']['preventive_measures'],
                      backgroundColor: HexColor("#f7cf60"),
                      icon: CupertinoIcons.hand_raised,
                    ),
                    ColorCard(
                      subtitle: "Best nearby hospital",
                      title: resentReportsProvider.resentReports[resentReportsProvider.selectedIndex]['nearby_partners'][0]['name'],
                      icon: CupertinoIcons.location,
                      backgroundColor: HexColor("#343633"),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Heading(title: "Description", subtile: "More details of the disease", padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 10), child: Text(resentReportsProvider.resentReports[resentReportsProvider.selectedIndex]['disease_description'], style: Theme.of(context).textTheme.bodySmall)),
                const Divider(),
                const SizedBox(height: 10),
                // Symptoms
                const Heading(title: "Top consultants", subtile: "Top nearby hospital & doctors", padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1)),
                const SizedBox(height: 10),
                for (int i = 0; i < resentReportsProvider.resentReports[resentReportsProvider.selectedIndex]['nearby_partners'].length; i++)
                  ListTile(
                    leading: CircleAvatar(radius: 30, backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.5)),
                    subtitle: Text(resentReportsProvider.resentReports[resentReportsProvider.selectedIndex]['nearby_partners'][i]['address'], style: Theme.of(context).textTheme.bodySmall),
                    title: Text(resentReportsProvider.resentReports[resentReportsProvider.selectedIndex]['nearby_partners'][i]['name'], style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 15)),
                    trailing: const Icon(CupertinoIcons.chevron_right),
                  ),
                SizedBox(height: MediaQuery.of(context).padding.bottom)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
