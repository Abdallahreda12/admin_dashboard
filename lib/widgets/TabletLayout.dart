import 'package:admin_dashboard/widgets/AllExpesessAndQuickInvoiceSection.dart';
import 'package:admin_dashboard/widgets/MycardAndTransactionHistory.dart';
import 'package:admin_dashboard/widgets/cutomDrawer.dart';
import 'package:admin_dashboard/widgets/incomeSection.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
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
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
