import 'package:conqueror/Ui/widgets/common/heading.dart';
import 'package:conqueror/controllers/providers/resent_reports_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SymptomsTab extends StatelessWidget {
  const SymptomsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final ResentReportsProvider resentReportsProvider = Provider.of<ResentReportsProvider>(context);
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top),
        const Heading(title: "Your current symptoms", subtile: "Tap to add or remove, your current symptoms", padding: EdgeInsets.symmetric(horizontal: 15)),
        const Divider(),
        Expanded(
          child: Wrap(
            children: resentReportsProvider.symptoms
                .map((e) => Padding(
                      padding: const EdgeInsets.all(2),
                      child: ChoiceChip(
                        onSelected: (bool selected) {
                          resentReportsProvider.toggleSymptom(e['name']);
                        },
                        label: Text(e['name'], style: TextStyle(color: e['is_selected'] ? Colors.white : Colors.black)),
                        selected: e['is_selected'],
                        selectedColor: Theme.of(context).colorScheme.primary,
                      ),
                    ))
                .toList(),
          ),
        )
      ],
    );
  }
}
