import 'package:admin_dashboard/model/transactionModel.dart';
import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionmodel});

  final Transactionmodel transactionmodel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionmodel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionmodel.date,
          style: AppStyles.styleRegular14(context)
              .copyWith(color: const Color(0xffAAAAAA)),
        ),
        trailing: Text(
          transactionmodel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
              color: transactionmodel.isWithDrawer
                  ? const Color(0xffF3735E)
                  : const Color(0XFF7CD87A)),
        ),
      ),
    );
  }
}
