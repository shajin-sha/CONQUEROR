import 'package:conqueror/Ui/widgets/common/color_card.dart';
import 'package:conqueror/Ui/widgets/common/heading.dart';
import 'package:conqueror/Ui/widgets/home_map_card.dart';
import 'package:conqueror/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiseaseScreen extends StatelessWidget {
  const DiseaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                      title: "Dec 2019",
                      subtitle: "First case",
                      icon: CupertinoIcons.calendar,
                      backgroundColor: HexColor("#b0e861"),
                    ),
                    ColorCard(
                      title: "Fever",
                      backgroundColor: HexColor("#6cbcf5"),
                      subtitle: "Major symptoms",
                      icon: CupertinoIcons.person_solid,
                    ),
                    ColorCard(
                      subtitle: "Chance of infection",
                      title: "High",
                      backgroundColor: HexColor("#f0785d"),
                    ),
                    ColorCard(
                      title: "Prevention",
                      subtitle: "Wash your hands",
                      backgroundColor: HexColor("#f7cf60"),
                      icon: CupertinoIcons.hand_raised,
                    ),
                    ColorCard(
                      subtitle: "Best nearby hospital",
                      title: "Hospital 1",
                      icon: CupertinoIcons.location,
                      backgroundColor: HexColor("#343633"),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const Heading(title: "Description", subtile: "More details of the disease", padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("eque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.", style: Theme.of(context).textTheme.bodySmall),
                ),
                const Divider(),
                const SizedBox(height: 10),
                // Symptoms
                const Heading(title: "Symptoms", subtile: "Symptoms of the disease", padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1)),
                const Divider(),
                ListTile(title: const Text("Fever", style: TextStyle(fontWeight: FontWeight.bold)), trailing: Icon(CupertinoIcons.person_fill, color: Theme.of(context).colorScheme.primary), dense: true),
                const ListTile(title: Text("Cough", style: TextStyle(fontWeight: FontWeight.bold)), trailing: Icon(CupertinoIcons.person_fill), dense: true),
                const ListTile(title: Text("Shortness of breath", style: TextStyle(fontWeight: FontWeight.bold)), trailing: Icon(CupertinoIcons.person_fill), dense: true),
                const Divider(),
                const Heading(title: "Top consultants", subtile: "Top nearby hospital & doctors", padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1)),
                ListTile(
                  leading: const CircleAvatar(radius: 30),
                  subtitle: const Text("hospital"),
                  title: Text("Mammen Memorial Hospital", style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 15)),
                  trailing: const Icon(CupertinoIcons.phone_fill),
                ),
                ListTile(
                  leading: const CircleAvatar(radius: 30),
                  subtitle: const Text("Doctor"),
                  title: Text("Shajin", style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 15)),
                  trailing: const Icon(CupertinoIcons.phone_fill),
                ),
                ListTile(
                  leading: const CircleAvatar(radius: 30),
                  subtitle: const Text("Testing lab"),
                  title: Text("Hyper testing lab PVT", style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 15)),
                  trailing: const Icon(CupertinoIcons.phone_fill),
                ),
                const Divider(),
                const Heading(title: "Prevention", subtile: "Prevention of the disease", padding: EdgeInsets.symmetric(horizontal: 10, vertical: 1)),
                ListTile(
                  title: const Text("Wash your hands", style: TextStyle(fontWeight: FontWeight.bold)),
                  trailing: Icon(CupertinoIcons.hand_raised_fill, color: Theme.of(context).colorScheme.primary),
                  dense: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
