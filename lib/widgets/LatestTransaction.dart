import 'package:admin_dashboard/model/UserInfoModel.dart';
import 'package:admin_dashboard/utils/appImages.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/cutomListTile.dart';
import 'package:flutter/material.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  static List<Userinfomodel> items = [
    Userinfomodel(
        image: Assets.imagesAvatar1,
        title: "Madrani Andi",
        subtitle: 'Madraniadi20@gmail'),
    Userinfomodel(
        image: Assets.imagesAvatar2,
        title: "Madrani Andi",
        subtitle: 'Madraniadi20@gmail'),
    Userinfomodel(
        image: Assets.imagesAvatar2,
        title: "Madrani Andi",
        subtitle: 'Madraniadi20@gmail')
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 80,
          child: ListView.builder(
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return IntrinsicWidth(
                child: CustomListTile(
                  userinfomodel: items[index],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
