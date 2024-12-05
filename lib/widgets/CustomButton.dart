import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.textColor, required this.backgroundColor});

  final Color textColor, backgroundColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgroundColor,
        ),
        onPressed: () {},
        child: Text(
          "Send Money",
          style: AppStyles.styleSemiBold16(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
