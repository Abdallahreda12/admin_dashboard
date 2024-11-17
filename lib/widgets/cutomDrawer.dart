import 'package:admin_dashboard/model/drawerItemModel.dart';
import 'package:admin_dashboard/utils/appImages.dart';
import 'package:admin_dashboard/widgets/DrawerItemListView.dart';
import 'package:admin_dashboard/widgets/InActiveDrawerItem.dart';
import 'package:admin_dashboard/widgets/cutomListTile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomListTile(
                image: Assets.imagesProfilePhoto,
                title: "Lekan Okeowo",
                subTitle: "demo@gmail.com"),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesSetting, title: "Setting System")),
                InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                        image: Assets.imagesLogout, title: "Logout Account")),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
