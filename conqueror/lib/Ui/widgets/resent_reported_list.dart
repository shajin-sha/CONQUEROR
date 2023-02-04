import 'package:conqueror/Ui/widgets/common/heading.dart';
import 'package:conqueror/const/const.dart';
import 'package:conqueror/controllers/navigation/navigation_helper.dart';
import 'package:conqueror/controllers/navigation/paths.dart';
import 'package:conqueror/controllers/providers/home_state_provider.dart';
import 'package:conqueror/controllers/providers/resent_reports_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ResentReportsList extends StatelessWidget {
  const ResentReportsList({super.key});

  @override
  Widget build(BuildContext context) {
    final ResentReportsProvider resentReportsProvider = Provider.of<ResentReportsProvider>(context);
    final HomeStateProvider homeStateProvider = Provider.of<HomeStateProvider>(context);
    return SizedBox(
      height: 600,
      child: Column(
        children: [
          const Divider(),
          const SizedBox(height: 15),
          Heading(
            title: "Resent Reports",
            subtile: "Recently reported diseases from your locality",
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            trailing: GestureDetector(
              onTap: () {
                if (homeStateProvider.partnerMood) {
                  ScaffoldMessenger.of(NavigationKeys.navigatorKey.currentContext!).showSnackBar(const SnackBar(
                    duration: Duration(seconds: 8),
                    content: Text("Prototype software : By using this feature patness can download the report in digital format"),
                  ));
                }
              },
              child: Text(homeStateProvider.partnerMood ? "Download report" : "See more", style: const TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.w600)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const ClampingScrollPhysics(),
              itemCount: resentReportsProvider.resentReports.length > 5 ? 4 : resentReportsProvider.resentReports.length,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () => NavigationHelper.navigate(path: Paths.disease),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Text("TB", style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal, fontSize: 16, color: Colors.white)),
                  ),
                  title: Text(resentReportsProvider.resentReports[index]['disease_name'], style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.normal, fontSize: 16)),
                  subtitle: Column(
                    children: [
                      Text(resentReportsProvider.resentReports[index]['disease_description'], style: const TextStyle(fontSize: 12)),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Chip(label: Text(resentReportsProvider.resentReports[index]['disease_time'], style: const TextStyle(fontSize: 12)), avatar: const Icon(CupertinoIcons.clock, size: 12), backgroundColor: grayColor),
                          const SizedBox(width: 10),
                          Chip(label: Text(resentReportsProvider.resentReports[index]['disease_reported_by'], style: const TextStyle(fontSize: 12)), avatar: const Icon(CupertinoIcons.person_2, size: 12), backgroundColor: grayColor),
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
