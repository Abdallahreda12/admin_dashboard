import 'package:admin_dashboard/model/AllExpensesItemModel.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/AllExpensesItemHeader.dart';
import 'package:flutter/material.dart';

class ActveAllExpensesItem extends StatelessWidget {
  const ActveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
            imageBackGround: const Color(0xff4EB7F2),
            imageColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.data,
            style: AppStyles.styleRegular14.copyWith(color: const Color(0xffFAFAFA)),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
          )
        ],
      ),
    );
  }
}
