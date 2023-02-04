import 'package:conqueror/Ui/widgets/common/heading.dart';
import 'package:conqueror/controllers/navigation/navigation_helper.dart';
import 'package:conqueror/controllers/providers/home_state_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeStateProvider homeStateProvider = Provider.of<HomeStateProvider>(context);
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
                    Text("Male | 25 years old", style: Theme.of(context).textTheme.bodySmall),
                    const Divider(),
                    Row(
                      children: [
                        Chip(label: Text("25 points", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white), textAlign: TextAlign.center), backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.5)),
                        const SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            ScaffoldMessenger.of(NavigationKeys.navigatorKey.currentContext!).showSnackBar(const SnackBar(
                              duration: Duration(seconds: 8),
                              content: Text("Prototype software : This is another side of the app, where our partners can manage, download, add new reports and Partners can make paid promotions in order to get more customers and more business. (Partners are : doctors, hospitals, clinics, pharmacies, labs, etc.)"),
                            ));

                            homeStateProvider.togglePartnerMood();
                          },
                          child: Chip(avatar: const Icon(CupertinoIcons.person_crop_circle_badge_checkmark), label: Text("Become partner  ", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white), textAlign: TextAlign.center), backgroundColor: Colors.red),
                        ),
                      ],
                    ),
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
                onTap: () {
                  ScaffoldMessenger.of(NavigationKeys.navigatorKey.currentContext!).showSnackBar(const SnackBar(
                    duration: Duration(seconds: 8),
                    content: Text("Prototype software : This pro feature (Subscriptions), By using this users an get more correct predictions and more accurate results."),
                  ));
                },
                trailing: const Icon(CupertinoIcons.chevron_right, size: 20),
                leading: const CircleAvatar(child: Icon(CupertinoIcons.person_3_fill, size: 20, color: Colors.white)),
                title: const Text("Add family members", style: TextStyle(fontSize: 15)),
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.bell),
                title: Text("Notification", style: Theme.of(context).textTheme.titleMedium),
                trailing: Switch.adaptive(value: true, onChanged: (e) {}),
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.person),
                title: Text("Name", style: Theme.of(context).textTheme.titleMedium),
                subtitle: Text("Shajin KP", style: Theme.of(context).textTheme.bodySmall),
                trailing: const Icon(CupertinoIcons.chevron_right),
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.phone),
                title: Text("Phone", style: Theme.of(context).textTheme.titleMedium),
                subtitle: Text("+91-8891870546", style: Theme.of(context).textTheme.bodySmall),
                trailing: const Icon(CupertinoIcons.chevron_right),
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.calendar),
                title: Text("Date of Birth", style: Theme.of(context).textTheme.titleMedium),
                subtitle: Text("25/05/1996", style: Theme.of(context).textTheme.bodySmall),
                trailing: const Icon(CupertinoIcons.chevron_right),
              ),
              ListTile(
                leading: const Icon(CupertinoIcons.location),
                title: Text("Address", style: Theme.of(context).textTheme.titleMedium),
                subtitle: Text("Kerala, India", style: Theme.of(context).textTheme.bodySmall),
                trailing: const Icon(CupertinoIcons.chevron_right),
              ),
            ],
          ),
        )
      ],
    );
  }
}
