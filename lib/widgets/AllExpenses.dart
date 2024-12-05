import 'package:admin_dashboard/widgets/AllExpensesHeader.dart';
import 'package:admin_dashboard/widgets/CustomBackgroundContainer.dart';
import 'package:admin_dashboard/widgets/allExpensesItemListView.dart';
import 'package:flutter/material.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          Allexpensesitemlistview()
        ],
      ),
    );
  }
}
