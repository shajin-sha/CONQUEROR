import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String title;
  final String? subtile;
  final EdgeInsetsGeometry? padding;
  final Widget? trailing;
  final Color? color;
  final int? fontSize;
  final Color? subtitleColor;
  final bool showBackButton;
  const Heading({Key? key, required this.title, this.subtile, this.padding, this.color, this.trailing, this.fontSize, this.subtitleColor, this.showBackButton = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (showBackButton)
            IconButton(
              icon: const Icon(CupertinoIcons.back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: color ?? Theme.of(context).textTheme.titleLarge?.color,
                      fontSize: fontSize?.toDouble() ?? Theme.of(context).textTheme.titleLarge?.fontSize,
                    ),
                textAlign: TextAlign.left,
              ),
              if (subtile != null)
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Text(
                    subtile!,
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(color: subtitleColor ?? Theme.of(context).textTheme.bodySmall?.color, fontSize: 10),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
            ],
          ),
          const Spacer(),
          if (trailing != null) trailing!,
        ],
      ),
    );
  }
}
