import 'package:conqueror/Ui/widgets/common/heading.dart';
import 'package:flutter/material.dart';

class SuggestionsTab extends StatelessWidget {
  const SuggestionsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top),
        const Heading(title: "Suggestion", subtile: "Suggestions & offers from oru partners.", padding: EdgeInsets.symmetric(horizontal: 15)),
        const Text("Note:Suggestions includes paid promotions and natural scoring", style: TextStyle(color: Colors.grey, fontSize: 12.8)),
        const Divider(),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: const [
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  child: Icon(Icons.medical_services, size: 30, color: Colors.white),
                ),
                title: Text("Do an test for tuberculosis", style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text("You are at risk of getting tuberculosis from our partner QX labs, at 50% OFF", style: TextStyle(fontSize: 12)),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.red,
                  child: Icon(Icons.local_hospital_rounded, size: 30, color: Colors.white),
                ),
                title: Text("Consultation for diabetes", style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text("You are at risk of getting diabetes from our partner clinic KDE PVT, at 23% OFF", style: TextStyle(fontSize: 12)),
              ),
              Divider(),
              ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.green,
                  child: Icon(Icons.local_hospital_rounded, size: 30, color: Colors.white),
                ),
                title: Text("Consultation for diabetes", style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text("You are at risk of getting diabetes from our partner clinic KDE PVT, at 23% OFF", style: TextStyle(fontSize: 12)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
