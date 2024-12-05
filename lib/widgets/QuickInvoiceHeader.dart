import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class QuikInvoiceHeader extends StatelessWidget {
  const QuikInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: const Color(0xffFAFAFA),
              borderRadius: BorderRadius.circular(50)),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
