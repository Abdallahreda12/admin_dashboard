import 'package:admin_dashboard/utils/appImages.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage(Assets.imagesBackgroundCard)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          color: const Color(0xff4EB7F2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                "Name Card",
                style: AppStyles.styleReqular16(context).copyWith(color: Colors.white),
              ),
              subtitle: Text(
                "Syah Bandi",
                style: AppStyles.styleMedium20(context),
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                "0918 8124 0042 8129",
                style: AppStyles.styleSemiBold20(context).copyWith(color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24, bottom: 15),
              child: Text(
                "12/20 - 124",
                style: AppStyles.styleReqular16(context).copyWith(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
