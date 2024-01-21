import 'package:flutter/material.dart';
import 'package:responsive_adaptive_app/widget/custom_item.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          Expanded(flex: 2, child: CustomItem(clr: const Color(0xffB4B4B4))),
          const SizedBox(height: 12),
          Expanded(child: CustomItem(clr: const Color(0xb3fffdfd))),
        ],
      ),
    );
  }
}
