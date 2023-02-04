import 'package:conqueror/const/const.dart';
import 'package:conqueror/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomeMapCard extends StatelessWidget {
  const HomeMapCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: SizedBox(
          height: 270,
          child: FlutterMap(
            options: MapOptions(
              center: LatLng(51.5, -0.09),
              zoom: 17,
              maxZoom: 18.3,
            ),
            nonRotatedChildren: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white.withOpacity(0.5),
                  child: IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.chevron_right_circle_fill, color: Theme.of(context).colorScheme.primary)),
                ),
              ),
            ],
            children: [
              TileLayer(
                urlTemplate: MapKeys.urlTemplateWhiteMood,
                additionalOptions: MapKeys.additionalOptions,
                backgroundColor: HexColor('#ece2cb'),
                // Keep  more tiles in memory
                keepBuffer: 100000000000000 * 90000000000000,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
