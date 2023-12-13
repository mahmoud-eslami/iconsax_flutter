import 'package:example/pages/home/widgets/home_app_bar.dart';
import 'package:example/pages/home/widgets/icon_tile.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final list = Iconsax.items.entries.toList();

    return Scaffold(
      body: Column(
        children: [
          const HomeAppBar(),
          Expanded(
            child: GridView.builder(
              shrinkWrap: false,
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 0.0),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: list.length,
              itemBuilder: (context, index) {
                final item = list[index];

                return IconTile(item: item);
              },
            ),
          ),
        ],
      ),
    );
  }
}
