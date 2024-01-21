import 'package:flutter/material.dart';

import '../model/drawer_item_model.dart';
import 'drawer_list_tile.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({
    super.key,
    required this.items,
  });

  final List<DrawerItemModel> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => DrawerListTile(drawerItemModel: items[index],),
      itemCount: items.length,
    );
  }
}
