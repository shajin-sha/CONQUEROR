import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorCard extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String? title;
  final String? subtitle;
  final IconData? icon;
  final bool big;
  const ColorCard({super.key, this.backgroundColor, this.textColor, this.title, this.subtitle, this.icon, this.big = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: big ? 250 : 120,
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon ?? CupertinoIcons.calendar, color: Colors.white, size: 25),
            const SizedBox(height: 5),
            Text(subtitle ?? "First reported", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white)),
            Text(title ?? "Dec 2019", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20, overflow: TextOverflow.ellipsis)),
          ],
        ),
      ),
    );
  }
}
