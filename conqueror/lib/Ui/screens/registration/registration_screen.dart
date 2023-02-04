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
          TextFormField(decoration: const InputDecoration(contentPadding: EdgeInsets.all(20), labelText: 'Name')),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
