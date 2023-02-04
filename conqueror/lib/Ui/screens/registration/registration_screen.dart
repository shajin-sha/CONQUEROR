import 'package:conqueror/Ui/widgets/common/button.dart';
import 'package:conqueror/controllers/navigation/navigation_helper.dart';
import 'package:conqueror/controllers/navigation/paths.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top),
          const SizedBox(height: 20),
          const Center(child: CircleAvatar(radius: 50, child: Icon(CupertinoIcons.heart_solid, size: 50, color: Colors.white))),
          const SizedBox(height: 20),
          Text("Conqueror,", style: Theme.of(context).textTheme.displaySmall!.copyWith(fontSize: 25, color: Colors.grey.withOpacity(0.8)), textAlign: TextAlign.center),
          Text("The ultimate disease preventions partner", style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 12, color: Colors.black45), textAlign: TextAlign.center),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(contentPadding: EdgeInsets.all(20), labelText: 'Name')),
                const SizedBox(height: 20),
                TextFormField(decoration: const InputDecoration(contentPadding: EdgeInsets.all(20), labelText: 'Age')),
                const SizedBox(height: 20),
                SwitchListTile(
                  tileColor: Colors.grey.withOpacity(0.2),
                  title: const Text("Male", style: TextStyle(color: Colors.black45)),
                  value: true,
                  activeColor: Theme.of(context).colorScheme.primary,
                  onChanged: (e) {},
                ),
                const SizedBox(height: 20),
                Button(text: "Begin", onTap: () => NavigationHelper.navigate(path: Paths.home))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
