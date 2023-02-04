import 'package:conqueror/Ui/widgets/common/heading.dart';
import 'package:flutter/material.dart';

class SymptomsTab extends StatelessWidget {
  const SymptomsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top),
        const Heading(title: "Your current symptoms", subtile: "Tap to add or remove, your current symptoms", padding: EdgeInsets.symmetric(horizontal: 15)),
        const Divider(),
        Expanded(
          child: Wrap(
            children: const [
              ChoiceChip(label: Text("Fever"), selected: true),
              ChoiceChip(label: Text("Cough"), selected: true),
              ChoiceChip(label: Text("Shortness of breath"), selected: false),
              ChoiceChip(label: Text("Sore throat"), selected: false),
              ChoiceChip(label: Text("Shortness of breath"), selected: false),
            ],
          ),
        )
      ],
    );
  }
}
