import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:admin_dashboard/widgets/DotsIndicator.dart';
import 'package:admin_dashboard/widgets/MyCardsPageView.dart';
import 'package:flutter/material.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentCardIndex = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(
      () {
        currentCardIndex = pageController.page!.round();
        setState(() {});
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          width: 420,
          child: Text(
            "My Card",
            style: AppStyles.styleSemiBold20(context),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        MyCardsPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 19,
        ),
        DotsIndicator(
          currentCardIndex: currentCardIndex,
        )
      ],
    );
  }
}
