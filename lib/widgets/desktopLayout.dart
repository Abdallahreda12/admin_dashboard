import 'package:admin_dashboard/widgets/cutomDrawer.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        Expanded(
            child: Column(
          children: [],
        ))
      ],
    );
  }
}
