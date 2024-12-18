import 'package:admin_dashboard/widgets/AllExpesessAndQuickInvoiceSection.dart';
import 'package:admin_dashboard/widgets/MycardAndTransactionHistory.dart';
import 'package:admin_dashboard/widgets/cutomDrawer.dart';
import 'package:admin_dashboard/widgets/incomeSection.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

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
          flex: 2,
          child: AllExpensessAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyCardAndTransactionHistory(),
                SizedBox(
                  height: 24,
                ),
                IncomdeSection()
              ],
            ),
          ),
        )
      ],
    );
  }
}
