import 'package:admin_dashboard/model/AllExpensesItemModel.dart';
import 'package:admin_dashboard/utils/appImages.dart';
import 'package:admin_dashboard/widgets/AllExpensesItem.dart';
import 'package:flutter/material.dart';

class Allexpensesitemlistview extends StatefulWidget {
  const Allexpensesitemlistview({super.key});

  static var item = [
    AllExpensesItemModel(
        image: Assets.imagesMoneys,
        data: 'April 2022',
        title: "Balance",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesCardReceive,
        data: 'April 2022',
        title: "Income",
        price: r"$20,129"),
    AllExpensesItemModel(
        image: Assets.imagesCardSend,
        data: 'April 2022',
        title: "Expenses",
        price: r"$20,129")
  ];

  @override
  State<Allexpensesitemlistview> createState() =>
      _AllexpensesitemlistviewState();
}

class _AllexpensesitemlistviewState extends State<Allexpensesitemlistview> {
  int SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: Allexpensesitemlistview.item.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                return setState(() {
                  SelectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensesesItem(
                  allExpensesItemModel: item,
                  isSelcted: SelectedIndex == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                return setState(() {
                  SelectedIndex = index;
                });
              },
              child: AllExpensesesItem(
                allExpensesItemModel: item,
                isSelcted: SelectedIndex == index,
              ),
            ),
          );
        }
      }).toList(),
    );
  }
}
