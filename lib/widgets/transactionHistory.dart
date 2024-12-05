import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/TransactionHistoryListView.dart';
import 'package:flutter/material.dart';

class TransacationHistory extends StatelessWidget {
  const TransacationHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Transaction History",
              style: AppStyles.styleSemiBold20(context),
            ),
            Text(
              "See all",
              style: AppStyles.styleMedium16(context),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const TransactionHistoryListView()
      ],
    );
  }
}
