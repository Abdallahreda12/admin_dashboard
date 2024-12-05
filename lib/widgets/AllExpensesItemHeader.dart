import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.image, this.imageBackGround, this.imageColor});

  final String image;
  final Color? imageBackGround, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Container(
            width: 60,
            height: 60,
            decoration: ShapeDecoration(
              shape: const OvalBorder(),
              color: imageBackGround ?? const Color(0xfffafafa),
            ),
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                  imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
            ),
          ),
        ),
        Flexible(
          child: Icon(
            Icons.arrow_forward_ios,
            color: imageColor == null ? const Color(0xff064061) : Colors.white,
          ),
        )
      ],
    );
  }
}
