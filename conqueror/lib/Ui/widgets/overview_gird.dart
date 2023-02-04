import 'package:conqueror/Ui/widgets/overview_card.dart';
import 'package:conqueror/const/const.dart';
import 'package:conqueror/controllers/providers/home_state_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OverviewGird extends StatelessWidget {
  const OverviewGird({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeStateProvider homeStateProvider = Provider.of<HomeStateProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: MediaQuery.of(context).size.width,
        height: homeStateProvider.isOverviewExpanded ? 220 : 130,
        decoration: BoxDecoration(color: grayColor, borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            SizedBox(height: homeStateProvider.isOverviewExpanded ? 15 : 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                OverviewCards(),
                OverviewCards(),
              ],
            ),
            if (!homeStateProvider.isOverviewExpanded)
              Column(
                children: [
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(width: 10),
                          Icon(CupertinoIcons.info, color: Theme.of(context).textTheme.bodySmall?.color, size: 13),
                          const SizedBox(width: 5),
                          Text("Estimated report of disease that may affect you", style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 10)),
                        ],
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () => homeStateProvider.toggleOverview(),
                            child: Icon(CupertinoIcons.chevron_down, color: Theme.of(context).textTheme.bodySmall?.color, size: 15, semanticLabel: "Expand"),
                          ),
                          const SizedBox(width: 15),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            if (homeStateProvider.isOverviewExpanded)
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      OverviewCards(),
                      OverviewCards(),
                    ],
                  ),
                ],
              ),
            if (homeStateProvider.isOverviewExpanded) const SizedBox(height: 10),
            if (homeStateProvider.isOverviewExpanded)
              GestureDetector(
                onTap: () => homeStateProvider.toggleOverview(),
                child: Icon(CupertinoIcons.chevron_compact_up, color: Theme.of(context).textTheme.bodySmall?.color, size: 18, semanticLabel: "Expand"),
              ),
          ],
        ),
      ),
    );
  }
}
