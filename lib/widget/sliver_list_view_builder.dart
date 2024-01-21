import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widget/custom_item.dart';

class SliverListViewBuilder extends StatelessWidget {
  const SliverListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: CustomItem(width: double.infinity, height: 70, clr: Colors.grey[200],),
        );
      },
    );
  }
}