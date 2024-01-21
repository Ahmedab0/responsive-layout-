import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/model/drawer_item_model.dart';

import 'drawer_item_list_view.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  final List<DrawerItemModel> items = const [
    DrawerItemModel(icon: Icons.home, title: 'DASHBOARD'),
    DrawerItemModel(icon: Icons.settings, title: 'settings'),
    DrawerItemModel(icon: Icons.info, title: 'about'),
    DrawerItemModel(icon: Icons.logout, title: 'logout'),
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      backgroundColor: const Color(0xffDBDBDB),
      child: Column(
        children: [
          const DrawerHeader(
            child: FittedBox(
                child: Icon(
              Icons.favorite,
              color: Colors.black54,
            )),
          ),
          const SizedBox(
            height: 16
          ),
          DrawerListView(items: items),
        ],
      ),
    );
  }
}

