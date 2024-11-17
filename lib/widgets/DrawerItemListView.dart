import 'package:admin_dashboard/model/drawerItemModel.dart';
import 'package:admin_dashboard/utils/appImages.dart';
import 'package:admin_dashboard/widgets/drawerItem.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  static List<DrawerItemModel> items = [
    DrawerItemModel(image: Assets.imagesDashboardsvg, title: "DashBoard"),
    DrawerItemModel(image: Assets.imagesMyTransaction, title: "My transction"),
    DrawerItemModel(image: Assets.imagesStatistics, title: "Statisics"),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: "Wallet Account"),
    DrawerItemModel(image: Assets.imagesMyInvestment, title: "Investments"),
  ];

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activrIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: DrawerItemsListView.items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activrIndex != index) {
              setState(() {
                activrIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Draweritem(
              drawerItemModel: DrawerItemsListView.items[index],
              isActve: activrIndex == index,
            ),
          ),
        );
      },
    );
  }
}
