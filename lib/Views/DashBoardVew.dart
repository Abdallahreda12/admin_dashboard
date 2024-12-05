import 'package:admin_dashboard/utils/sizeConfig.dart';
import 'package:admin_dashboard/widgets/MobileLayout.dart';
import 'package:admin_dashboard/widgets/TabletLayout.dart';
import 'package:admin_dashboard/widgets/adaptiveLayout.dart';
import 'package:admin_dashboard/widgets/cutomDrawer.dart';
import 'package:admin_dashboard/widgets/desktopLayout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xffFAFAFA),
              leading: GestureDetector(
                child: const Icon(Icons.menu),
                onTap: () {
                  scaffoldKey.currentState!.openDrawer();
                },
              ),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      body: AdapiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ), 
    );
  }
}
