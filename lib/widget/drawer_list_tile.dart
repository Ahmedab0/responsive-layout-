import 'package:flutter/material.dart';

import '../model/drawer_item_model.dart';

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
   required this.drawerItemModel,
  });


  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        drawerItemModel.icon,
        size: 28,
        color: Colors.black54,
      ),
      title: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            drawerItemModel.title.toUpperCase(),
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 4,
              color: Colors.black54,
            ),
          ),
        ),
      ),
    );
  }
}
