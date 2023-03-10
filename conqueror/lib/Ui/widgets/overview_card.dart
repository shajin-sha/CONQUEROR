import 'package:flutter/material.dart';

class OverviewCards extends StatelessWidget {
  final String avatarText;
  final String title;
  final String subtitle;
  const OverviewCards({super.key, this.avatarText = "35%", this.title = "Title", this.subtitle = "Subtitle"});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        width: MediaQuery.of(context).size.width / 2.1,
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Colors.grey[200],
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: Text(avatarText, style: Theme.of(context).textTheme.labelMedium!.copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.bodySmall!.copyWith(overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold, fontSize: 18)),
                SizedBox(
                  child: Text(subtitle, style: Theme.of(context).textTheme.bodySmall!.copyWith(overflow: TextOverflow.ellipsis)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
