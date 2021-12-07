import 'package:flutter/material.dart';
import 'package:project_airplane/shared/theme.dart';
import 'package:project_airplane/ui/pages/success_page.dart';
import 'package:project_airplane/ui/widgets/booking_detail_item.dart';
import 'package:project_airplane/ui/widgets/button.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget route(){
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_destination.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold
                      )
                      ),
                      Text(
                        'Tangerang',
                        style: greyTextStyle.copyWith(
                          fontWeight: light
                        )
                      )
                  ]
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'TLC',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold
                      )
                      ),
                    Text(
                        'Ciliwung',
                        style: greyTextStyle.copyWith(
                          fontWeight: light
                        )
                      )
                  ]
                ),
              ],
            )
          ],
        ),
      );
    }
    
    Widget bookingDetail(){
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30
          ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    image: DecorationImage(
                      image: AssetImage('assets/img_dest_2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('White House',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: semiBold
                    ),
                    ),
                    Text('America',
                    style: greyTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: light
                    ),
                    ),
                  ],
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/icon_star.png')
                        ),
                      ),
                    ),
                    Text('4.5', 
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text('Booking Details', 
            style: blackTextStyle.copyWith(
              fontSize: 16, 
              fontWeight: semiBold)),
            SizedBox(height: 10),
            BookingDetailItem(
              title: 'Traveller',
              value: Text('2 Person', style: blackTextStyle.copyWith(fontWeight: semiBold),),
            ),
            BookingDetailItem(
              title: 'Seat',
              value: Text('A3, B3', style: blackTextStyle.copyWith(fontWeight: semiBold),),
            ),
            BookingDetailItem(
              title: 'Insurace',
              value: Text('YES', style: greenTextStyle.copyWith(fontWeight: semiBold),),
            ),
            BookingDetailItem(
              title: 'Refundable',
              value: Text('NO', style: redTextStyle.copyWith(fontWeight: semiBold),),
            ),
            BookingDetailItem(
              title: 'VAT',
              value: Text('45%', style: blackTextStyle.copyWith(fontWeight: semiBold),),
            ),
            BookingDetailItem(
              title: 'Price',
              value: Text('IDR 8.500.000', style: blackTextStyle.copyWith(fontWeight: semiBold),),
            ),
            BookingDetailItem(
              title: 'Grand Total',
              value: Text('IDR 140.000.000', style: purpleTextStyle.copyWith(fontWeight: semiBold),),
            ),
          ]
        ),
      );
    }

    Widget paymentDetail(){
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30
          ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Payment Details', 
            style: blackTextStyle.copyWith(
              fontSize: 16, 
              fontWeight: semiBold)),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 16),
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img_card.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(defaultRadius),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 24,
                          width: 24,
                          margin: EdgeInsets.only(right: 6),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icon_plane.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text('Pay',
                        style: whiteTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold
                        ),
                        ),
                      ]
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('IDR 80.400.000',
                      style: blackTextStyle.copyWith(
                        fontSize: 18, 
                        fontWeight: semiBold
                        ),
                      ),
                      SizedBox(height: 5),
                      Text('Current Balance',
                      style: greyTextStyle.copyWith( 
                        fontWeight: regular
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]
        )
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          route(),
          bookingDetail(),
          paymentDetail(),
          Button(
            title: 'Pay Now',
            margin: EdgeInsets.only(top: 30, bottom: 30),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SuccessPage()));
            },
          ),
          Text('Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline
            ),
          textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
        ]
      )
    );
  }
}