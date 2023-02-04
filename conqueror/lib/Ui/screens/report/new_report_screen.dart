import 'package:conqueror/Ui/widgets/common/button.dart';
import 'package:conqueror/Ui/widgets/common/heading.dart';
import 'package:conqueror/controllers/providers/resent_reports_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewReportScreen extends StatelessWidget {
  const NewReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ResentReportsProvider resentReportsProvider = Provider.of<ResentReportsProvider>(context);
    return Scaffold(
      bottomNavigationBar: Button(
        interHeight: 90,
        text: "Report",
        icon: CupertinoIcons.paperplane_fill,
        onTap: () => resentReportsProvider.postNewDisease(),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          const Heading(title: "New Report", subtile: "Report your own disease", padding: EdgeInsets.symmetric(horizontal: 5), showBackButton: true),
          const Divider(),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(0),
              itemCount: resentReportsProvider.resentReports.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(resentReportsProvider.resentReports[index]['disease_name']),
                  trailing: resentReportsProvider.selectedIndex == index ? const Icon(Icons.check) : null,
                  onTap: () => resentReportsProvider.setDiseaseIndex(index),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
