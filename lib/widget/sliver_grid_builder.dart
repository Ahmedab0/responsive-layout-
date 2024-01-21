import 'package:flutter/material.dart';

import 'custom_item.dart';

class SliverGridBuilder extends StatelessWidget {
  const SliverGridBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) => CustomItem(clr: const Color(0xffB4B4B4)),
    );
  }
}

