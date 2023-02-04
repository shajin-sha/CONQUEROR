import 'package:conqueror/Ui/widgets/common/heading.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.of(context).padding.top),
        const Heading(title: "Profile", subtile: "Your profile and settings", padding: EdgeInsets.symmetric(horizontal: 15)),
        const Divider(),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: [
              ListTile(
                isThreeLine: true,
                title: Text("Shajin KP", style: Theme.of(context).textTheme.titleMedium),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("+91-8891870546", style: Theme.of(context).textTheme.bodySmall),
                    const SizedBox(height: 5),
                    Text("Male | 25 years old", style: Theme.of(context).textTheme.bodySmall),
                    const Divider(),
                    Chip(label: Text("25 points", style: Theme.of(context).textTheme.bodySmall, textAlign: TextAlign.center), backgroundColor: Colors.green[100]),
                  ],
                ),
                // QR code button (used for requesting payments by drivers)
                // OR sending payments to drivers (within the app QR code scanner).
                trailing: IconButton(
                  icon: const Icon(CupertinoIcons.qrcode),
                  onPressed: () {},
                ),
                // Hero animated avatar with user's profile picture
                leading: const CircleAvatar(
                  radius: 40,
                ),
              ),
              const Divider(),
              const Heading(title: "Personal Details", fontSize: 15, subtile: "Your basic information we need to verify your identity.", padding: EdgeInsets.all(20)),
              ListTile(
                leading: const Icon(CupertinoIcons.person_2),
                title: Text("Add family members", style: Theme.of(context).textTheme.titleMedium),
                trailing: const Icon(CupertinoIcons.chevron_right),
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.bell),
                title: Text("Notification", style: Theme.of(context).textTheme.titleMedium),
                trailing: Switch.adaptive(value: true, onChanged: (e) {}),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(CupertinoIcons.creditcard),
                title: Text("Payment methods", style: Theme.of(context).textTheme.titleMedium),
                trailing: const Icon(CupertinoIcons.chevron_right),
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.location),
                title: Text("Addresses", style: Theme.of(context).textTheme.titleMedium),
                trailing: const Icon(CupertinoIcons.chevron_right),
              ),
            ],
          ),
        )
      ],
    );
  }
}
