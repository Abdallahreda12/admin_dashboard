import 'package:admin_dashboard/widgets/CustomButton.dart';
import 'package:admin_dashboard/widgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                title: 'Customer name',
                hint: 'Type customer name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTextField(
                title: 'Customer Email',
                hint: 'Type customer email',
              ),
            )
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomTextField(
                title: 'Item name',
                hint: 'Type item name',
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: CustomTextField(
                title: 'Item mount',
                hint: 'Type mount',
              ),
            )
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(0xff4DB7F2),
                backgroundColor: Colors.white,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: CustomButton(
                textColor: Colors.white,
                backgroundColor: Color(0xff4DB7F2),
              ),
            ),
          ],
        )
      ],
    );
  }
}
