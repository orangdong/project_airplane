import 'package:flutter/material.dart';
import 'package:project_airplane/ui/widgets/button.dart';
import '../../shared/theme.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bonusCard(){
      return Container(
        height: 211,
        width: 300,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img_card.png'),
          ),
          boxShadow: [
            BoxShadow(
              color: kPrimaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Expanded(
                  child: 
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Name', 
                        style: whiteTextStyle.copyWith(
                          fontWeight: light
                        ),
                        ),
                        Text('Lee Jieun',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: medium
                        ),
                        overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_plane.png'),
                    ),
                  ),
                ),
                Text('Pay',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium
                ),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Balance',
                    style: whiteTextStyle.copyWith(
                      fontWeight: light,
                    ),
                    ),
                    Text('IDR 1.000.000',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                      fontSize: 26,
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget headline(){
      return Container(
        margin: EdgeInsets.only(top: 80, bottom: 75),
        child: Column(
          children: [
            Text('Big Bonus 🎉',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: semiBold
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Text('We give you early credit so that\nyou can buy a flight ticket',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light
            ),
            textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            bonusCard(),
            headline(),
            Button(
              margin: EdgeInsets.only(top: 50),
              title: 'Start Fly Now', 
              onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
              },
              width: 220,
            ),
          ],
        ),
      ),
    );
  }
}