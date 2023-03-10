import 'package:conqueror/controllers/providers/resent_reports_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreenSearch extends StatelessWidget {
  const HomeScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final ResentReportsProvider resentReportsProvider = Provider.of<ResentReportsProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          const SizedBox(height: 5),
          TextFormField(
            onChanged: (e) => resentReportsProvider.search(e),
            decoration: InputDecoration(
              hintText: "Search for nearby disease",
              hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(color: Theme.of(context).textTheme.bodySmall?.color!.withOpacity(0.5)),
              prefixIcon: Icon(CupertinoIcons.search, color: Theme.of(context).textTheme.bodySmall?.color),
              filled: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            ),
          ),
        ],
      ),
    );
  }
}
