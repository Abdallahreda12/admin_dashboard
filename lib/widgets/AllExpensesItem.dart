import 'package:admin_dashboard/model/AllExpensesItemModel.dart';
import 'package:admin_dashboard/widgets/ActiveAllExpensesItem.dart';
import 'package:admin_dashboard/widgets/InActiveAllExpensesItem.dart';
import 'package:flutter/material.dart';

class AllExpensesesItem extends StatelessWidget {
  const AllExpensesesItem(
      {super.key, required this.allExpensesItemModel, required this.isSelcted});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isSelcted;
  @override
  Widget build(BuildContext context) {
    return isSelcted
        ? ActveAllExpensesItem(
            allExpensesItemModel: allExpensesItemModel,
          )
        : InActveAllExpensesItem(allExpensesItemModel: allExpensesItemModel);
  }
}
