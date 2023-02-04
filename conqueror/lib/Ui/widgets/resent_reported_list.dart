import 'package:conqueror/Ui/widgets/common/heading.dart';
import 'package:conqueror/const/const.dart';
import 'package:conqueror/controllers/navigation/navigation_helper.dart';
import 'package:conqueror/controllers/navigation/paths.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResentReportsList extends StatelessWidget {
  const ResentReportsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Column(
        children: [
          const Divider(),
          const SizedBox(height: 15),
          const Heading(
            title: "Resent Reports",
            subtile: "Recently reported diseases from your locality",
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            trailing: Text("See more", style: TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w600)),
          ),
          Expanded(
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              itemCount: 3,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () => NavigationHelper.navigate(path: Paths.disease),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Text("TB", style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.white)),
                  ),
                  title: Text("Tuberculosis", style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal, fontSize: 16)),
                  subtitle: Column(
                    children: [
                      const Text("Tuberculosis is reported by more than 320 people from your locality.", style: TextStyle(fontSize: 12)),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Chip(label: const Text("12Min ago", style: TextStyle(fontSize: 12)), avatar: const Icon(CupertinoIcons.clock, size: 12), backgroundColor: grayColor),
                          const SizedBox(width: 10),
                          Chip(label: const Text("12", style: TextStyle(fontSize: 12)), avatar: const Icon(CupertinoIcons.person_2, size: 12), backgroundColor: grayColor),
                        ],
                      ),
                    ],
                  ),
                  trailing: const Icon(CupertinoIcons.right_chevron, size: 20),
                  isThreeLine: true,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
