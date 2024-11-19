import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text(
        "All Expenses",
        style: AppStyles.styleSemiBold20,
      ),
      const Expanded(child: SizedBox()),
      Container(
        padding: const EdgeInsets.all(12),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          children: [
            const Text(
              "Monthly",
              style: AppStyles.styleMedium16,
            ),
            const SizedBox(
              width: 18,
            ),
            Transform.rotate(
                angle: -1.57079633,
                child: Transform.translate(
                  offset: const Offset(5, 0),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xff064061),
                  ),
                ))
          ],
        ),
      )
    ]);
  }
}
