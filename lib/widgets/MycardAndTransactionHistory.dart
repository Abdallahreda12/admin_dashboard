import 'package:admin_dashboard/widgets/CustomBackgroundContainer.dart';
import 'package:admin_dashboard/widgets/MyCardSection.dart';
import 'package:admin_dashboard/widgets/transactionHistory.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransacationHistory()
        ],
      ),
    );
  }
}
