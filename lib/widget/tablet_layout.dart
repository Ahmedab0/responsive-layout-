import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widget/custom_item.dart';

import 'sliver_list_view_builder.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => AspectRatio(
                aspectRatio: 1,
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: CustomItem(
                    clr: const Color(0xffB4B4B4),
                  ),
                ),
              ),
              itemCount: 20,
            ),
          ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 20)),
        const SliverListViewBuilder(),
      ],
    );
  }
}
