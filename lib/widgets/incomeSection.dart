import 'package:admin_dashboard/utils/sizeConfig.dart';
import 'package:admin_dashboard/widgets/CustomBackgroundContainer.dart';
import 'package:admin_dashboard/widgets/IncomeChartForSpacificDesktopLayout.dart';
import 'package:admin_dashboard/widgets/IncomeDetails.dart';
import 'package:admin_dashboard/widgets/IncomeSectionHeader.dart';
import 'package:admin_dashboard/widgets/IncomeChartForFullDesktopLayout.dart';
import 'package:flutter/material.dart';

class IncomdeSection extends StatelessWidget {
  const IncomdeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [IncomeSectionHeader(), IncomeSectionBody()],
      ),
    );
  }
}

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1450
        ? const IncomeChartForSpecificDesktopLayout()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: IncomeChartForFullDesktopLayout(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              )
            ],
          );
  }
}
