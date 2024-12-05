import 'package:admin_dashboard/widgets/AllExpesessAndQuickInvoiceSection.dart';
import 'package:admin_dashboard/widgets/MycardAndTransactionHistory.dart';
import 'package:admin_dashboard/widgets/incomeSection.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionHistory(),
          SizedBox(
            height: 24,
          ),
          IncomdeSection()
        ],
      ),
    );
  }
}
