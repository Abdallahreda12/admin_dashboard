import 'package:admin_dashboard/widgets/CustomBackgroundContainer.dart';
import 'package:admin_dashboard/widgets/LatestTransaction.dart';
import 'package:admin_dashboard/widgets/QuickInvoiceForm.dart';
import 'package:admin_dashboard/widgets/QuickInvoiceHeader.dart';
import 'package:flutter/material.dart';

class QuikInvoice extends StatelessWidget {
  const QuikInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          QuikInvoiceHeader(),
          LatestTransaction(),
          Divider(
            height: 48,
          ),
          QuickInvoiceForm()
        ],
      ),
    );
  }
}
