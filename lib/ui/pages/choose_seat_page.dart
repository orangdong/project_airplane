import 'package:flutter/material.dart';
import 'package:project_airplane/ui/pages/checkout_page.dart';
import 'package:project_airplane/ui/widgets/button.dart';
import 'package:project_airplane/ui/widgets/seat.dart';
import '../../shared/theme.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget title(){
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Choose Your\nFavorite Seat',
            style: blackTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(height: 30,),
          Row(
            children: [
              Container(
                height: 16,
                width: 16,
                margin: EdgeInsets.only(right: 6),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_available.png'),
                  )
                ),
              ),
              Text('Available',
                style: blackTextStyle
                ),
              Container(
                height: 16,
                width: 16,
                margin: EdgeInsets.only(right: 6, left: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_selected.png'),
                  )
                ),
              ),
              Text('Selected',
                style: blackTextStyle
                ),
              Container(
                height: 16,
                width: 16,
                margin: EdgeInsets.only(right: 6, left: 10),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/icon_unavailable.png'),
                  )
                ),
              ),
              Text('Unavailable',
                style: blackTextStyle
                ),
            ],
          )
        ],
        ),
      );
    }

    Widget seatContainer(){
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kWhiteColor
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height:48,
                  width: 48,
                  child: Center(
                    child: Text(
                      'A', 
                      style: greyTextStyle.copyWith(
                        fontSize: 16
                        ),
                      ),
                  ) 
                  ),
                  Container(
                    height:48,
                    width: 48,
                    child: Center(
                      child: Text(
                        'B', 
                        style: greyTextStyle.copyWith(
                          fontSize: 16
                          ),
                        ),
                    ) 
                  ),
                  Container(
                    height:48,
                    width: 48,
                    child: Center(
                      child: Text(
                        '', 
                        style: greyTextStyle.copyWith(
                          fontSize: 16
                          ),
                        ),
                    ) 
                  ),
                  Container(
                    height:48,
                    width: 48,
                    child: Center(
                      child: Text(
                        'C', 
                        style: greyTextStyle.copyWith(
                          fontSize: 16
                          ),
                        ),
                    ) 
                  ),
                  Container(
                    height:48,
                    width: 48,
                    child: Center(
                      child: Text(
                        'D', 
                        style: greyTextStyle.copyWith(
                          fontSize: 16
                          ),
                        ),
                    ) 
                  ),
              ],
            ),

            //SEAT 1
            Container(
              margin: EdgeInsets.only(top: 16),
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Seat(status: 0),
                  Seat(status: 0),
                  Container(
                  height:48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '1', 
                      style: greyTextStyle.copyWith(
                        fontSize: 16
                        ),
                      ),
                  ) 
                  ),
                  Seat(status: 1),
                  Seat(status: 0),
                ],
              ),
            ),
            //SEAT 2
            Container(
              margin: EdgeInsets.only(top: 16),
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Seat(status: 1),
                  Seat(status: 1),
                  Container(
                  height:48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '2', 
                      style: greyTextStyle.copyWith(
                        fontSize: 16
                        ),
                      ),
                  ) 
                  ),
                  Seat(status: 1),
                  Seat(status: 0),
                ],
              ),
            ),
            //SEAT 3
            Container(
              margin: EdgeInsets.only(top: 16),
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Seat(status: 2),
                  Seat(status: 2),
                  Container(
                  height:48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '3', 
                      style: greyTextStyle.copyWith(
                        fontSize: 16
                        ),
                      ),
                  ) 
                  ),
                  Seat(status: 1),
                  Seat(status: 1),
                ],
              ),
            ),
            //SEAT 4
            Container(
              margin: EdgeInsets.only(top: 16),
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Seat(status: 1),
                  Seat(status: 0),
                  Container(
                  height:48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '4', 
                      style: greyTextStyle.copyWith(
                        fontSize: 16
                        ),
                      ),
                  ) 
                  ),
                  Seat(status: 1),
                  Seat(status: 1),
                ],
              ),
            ),
            //SEAT 5
            Container(
              margin: EdgeInsets.only(top: 16),
              child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Seat(status: 1),
                  Seat(status: 1),
                  Container(
                  height:48,
                  width: 48,
                  child: Center(
                    child: Text(
                      '5', 
                      style: greyTextStyle.copyWith(
                        fontSize: 16
                        ),
                      ),
                  ) 
                  ),
                  Seat(status: 0),
                  Seat(status: 1),
                ],
              ),
            ),
            // Your Seat
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Text('Your Seat',
                      style: greyTextStyle.copyWith(
                        fontSize: 16
                        ),
                      )
                  ),
                  Text('A3, B3',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold
                    ),
                  )
                ],
              )
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Text('Total',
                      style: greyTextStyle.copyWith(
                        fontSize: 16
                        ),
                      )
                  ),
                  Text('IDR 50.000.000',
                  style: purpleTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold
                    ),
                  )
                ],
              )
            ),
          ],
        )
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            title(),
            seatContainer(),
            Button(title: 'Continue To Checkout', 
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CheckoutPage()));
            }, 
            margin: EdgeInsets.only(
              top: 30, 
              bottom: 46,
              ),
            ),
          ],
        ),
      ),
    );
  }
}