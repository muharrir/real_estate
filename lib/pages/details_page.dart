import 'package:flutter/material.dart';
import 'package:real_estate/theme.dart';
import 'package:real_estate/widgets/overview_card.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: 20,
          left: 30,
          right: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/icon_back.png',
              width: 32,
            ),
            Text(
              'Details',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: bold,
              ),
            ),
            Image.asset(
              'assets/icon_more.png',
              width: 32,
            ),
          ],
        ),
      );
    }

    Widget imageContent() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 30,
        ),
        height: 328,
        width: 315,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/image_house.png',
            ),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'American Classic',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icon_location.png',
                            width: 18,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(
                            'Highway District 201',
                            style: greyTextStyle1.copyWith(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/icon_love.png',
                    width: 20,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 15,
              ),
              child: Text.rich(
                TextSpan(
                  text:
                      'American classic house, this house has always been\n a target for property companies because of its\n ancient style but very attractive ',
                  style: greyTextStyle2.copyWith(
                    fontSize: 12,
                  ),
                  children: [
                    TextSpan(
                      text: 'Read More',
                      style: yellowTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget overview() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 30,
              ),
              child: Text(
                'Overview',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 15,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    OverviewCard(
                      imageUrl: 'assets/image1.png',
                      more: '',
                    ),
                    OverviewCard(
                      imageUrl: 'assets/image2.png',
                      more: '',
                    ),
                    OverviewCard(
                      imageUrl: 'assets/image3.png',
                      more: '',
                    ),
                    OverviewCard(
                      imageUrl: 'assets/image4.png',
                      more: '',
                    ),
                    OverviewCard(
                      imageUrl: 'assets/image5.png',
                      more: '8+',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget price() {
      return Container(
        margin: EdgeInsets.all(30),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                right: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: greyTextStyle1.copyWith(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    '\$ 300K',
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kBlackColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Buy',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            header(),
            imageContent(),
            content(),
            overview(),
            price(),
          ],
        ),
      ),
    );
  }
}
