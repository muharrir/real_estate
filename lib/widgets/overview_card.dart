import 'package:flutter/material.dart';
import 'package:real_estate/theme.dart';

class OverviewCard extends StatelessWidget {
  final String imageUrl;
  final String more;

  const OverviewCard({
    Key? key,
    required this.imageUrl,
    required this.more,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 59,
      height: 59,
      margin: EdgeInsets.only(
        right: 15,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          more,
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
          ),
        ),
      ),
    );
  }
}
