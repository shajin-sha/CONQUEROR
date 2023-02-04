import 'package:badges/badges.dart' as badges;
import 'package:conqueror/const/const.dart';
import 'package:conqueror/controllers/providers/location_provider.dart';
import 'package:conqueror/core/helpers/helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final LocationProvider locationProvider = Provider.of<LocationProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).padding.top),
                  Text("Hey, shajin", style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold)),
                  Text("Those diseases are spreading out, take care.", style: Theme.of(context).textTheme.bodySmall),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: badges.Badge(
                  position: badges.BadgePosition.bottomEnd(end: 40),
                  badgeContent: const Text("2", style: TextStyle(color: Colors.white)),
                  child: const CircleAvatar(
                    radius: 28,
                    backgroundImage: NetworkImage("https://i.ibb.co/dgHC6xS/HD-wallpaper-memoji-emoji-album-artwork-cover-art-emoji-stickers-iphone-boy-emoji.jpg"),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.6,
                height: 30,
                decoration: BoxDecoration(color: grayColor, borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    const SizedBox(width: 5),
                    const Icon(CupertinoIcons.location_solid, size: 15),
                    const SizedBox(width: 5),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.4,
                      child: Text(formatAddress(locationProvider.placemarks), style: const TextStyle(color: Colors.black, fontSize: 10), maxLines: 1, overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(width: 10),
                    const Text("Change", style: TextStyle(color: Colors.blue, fontSize: 10, fontWeight: FontWeight.bold)),
                    const Icon(CupertinoIcons.right_chevron, size: 10, color: Colors.blue),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              Container(
                width: MediaQuery.of(context).size.width / 3.5,
                height: 30,
                decoration: BoxDecoration(color: grayColor, borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: const [
                    SizedBox(width: 10),
                    Text("Suggestions", style: TextStyle(color: Colors.blue, fontSize: 10, fontWeight: FontWeight.bold)),
                    Icon(CupertinoIcons.right_chevron, size: 12, color: Colors.blue),
                  ],
                ),
              ),
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
