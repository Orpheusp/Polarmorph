import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BusinessHeadline extends StatelessWidget {
  static const BRAND_SVG = 'assets/svg/brand.svg';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset(
        BRAND_SVG,
        semanticsLabel: 'Polarmorph Coffee & Art',
      ),
    );
  }
}
