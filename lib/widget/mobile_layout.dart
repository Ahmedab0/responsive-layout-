import 'package:flutter/material.dart';

import 'sliver_grid_builder.dart';
import 'sliver_list_view_builder.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 16)),
        SliverGridBuilder(),
        SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverListViewBuilder(),
      ],
    );
  }
}
