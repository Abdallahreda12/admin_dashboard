import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(
            "Design Service",
            style: AppStyles.styleReqular16(context),
          ),
          trailing: Text(
            "40%",
            style: AppStyles.styleMedium16(context),
          ),
          leading: Container(
            width: 12,
            height: 12,
            decoration: const ShapeDecoration(
              color: Color(0xff208BC7),
              shape: OvalBorder(),
            ),
          ),
        ),
        ListTile(
          title: Text(
            "Design product",
            style: AppStyles.styleReqular16(context),
          ),
          trailing: Text(
            "25%",
            style: AppStyles.styleMedium16(context),
          ),
          leading: Container(
            width: 12,
            height: 12,
            decoration: const ShapeDecoration(
              color: Color(0xff4EB7F2),
              shape: OvalBorder(),
            ),
          ),
        ),
        ListTile(
          title: Text(
            "Product royalti",
            style: AppStyles.styleReqular16(context),
          ),
          trailing: Text(
            "20%",
            style: AppStyles.styleMedium16(context),
          ),
          leading: Container(
            width: 12,
            height: 12,
            decoration: const ShapeDecoration(
              color: Color(0xff064061),
              shape: OvalBorder(),
            ),
          ),
        ),
        ListTile(
          title: Text(
            "Other",
            style: AppStyles.styleReqular16(context),
          ),
          trailing: Text(
            "22%",
            style: AppStyles.styleMedium16(context),
          ),
          leading: Container(
            width: 12,
            height: 12,
            decoration: const ShapeDecoration(
              color: Color(0xffE2DECD),
              shape: OvalBorder(),
            ),
          ),
        )
      ],
    );
  }
}
