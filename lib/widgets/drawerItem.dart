import 'package:admin_dashboard/model/drawerItemModel.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/InActiveDrawerItem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Draweritem extends StatelessWidget {
  const Draweritem(
      {super.key, required this.drawerItemModel, required this.isActve});
  final DrawerItemModel drawerItemModel;
  final bool isActve;
  @override
  Widget build(BuildContext context) {
    return isActve
        ? ListTile(
            leading: SvgPicture.asset(drawerItemModel.image),
            title: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: Text(
                drawerItemModel.title,
                style: AppStyles.styleBold16(context)
                    .copyWith(color: const Color(0xff4EB7F2)),
              ),
            ),
            trailing: Container(
              width: 3.27,
              decoration: const BoxDecoration(color: Color(0xff4EB7F2)),
            ),
          )
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
