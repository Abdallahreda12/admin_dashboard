import 'package:admin_dashboard/widgets/AllExpenses.dart';
import 'package:admin_dashboard/widgets/QuikInvoice.dart';
import 'package:flutter/material.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(
            height: 24,
          ),
          QuikInvoice()
        ],
      ),
    );
  }
}
