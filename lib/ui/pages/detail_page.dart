import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_airplane/models/destination_model.dart';
import 'package:project_airplane/ui/pages/choose_seat_page.dart';
import 'package:project_airplane/ui/widgets/button.dart';
import 'package:project_airplane/ui/widgets/interests_item.dart';
import '../../shared/theme.dart';

class DetailPage extends StatelessWidget {
  final DestinationModel destination;
  
  const DetailPage(this.destination, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget content(){
      return Container(
        margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
        ),
        width: double.infinity,
        child: Column(
          children: [
            // Emblem
            Container(
              height: 24,
              width: 100,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/emblem.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            // Title
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination.title,
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          destination.city,
                          style: whiteTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
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
                        Text(destination.rating.toString(), 
                        style: whiteTextStyle.copyWith(
                          fontWeight: semiBold
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
            // Description
            Container(
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('About', style: 
                  blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                  ),
                  SizedBox(height: 20),
                  Text('Berada di jalur jalan provinsi yang\nmenghubungkan Denpasar Singaraja serta Bali,White House berada di kota Denpasar.',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                  ),
                  SizedBox(height: 20),
                  Text('Photos', style: 
                  blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img_photo_1.png'),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img_photo_2.png'),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img_photo_3.png'),
                          fit: BoxFit.contain,
                        ),
                        borderRadius: BorderRadius.circular(defaultRadius),
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text('Interests', style: 
                  blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      InterestsItem(title: 'Kids Park'),
                      InterestsItem(title: 'Honor Bridge'),
                    ],
                  ),
                  Row(
                    children: [
                      InterestsItem(title: 'City Museum'),
                      InterestsItem(title: 'Central Mall'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          NumberFormat.currency(
                            locale: 'id_ID',
                            symbol: 'IDR ',
                            decimalDigits: 0
                          ).format(destination.price),
                          style: 
                        blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: semiBold,
                        ),
                        ),
                        Text('per orang', style: 
                        greyTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: regular,
                        ),
                        ),
                      ],
                    ),
                  ),
                  Button(
                    title: 'Book Now',
                    width: 170,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseSeatPage()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
    Widget shadow(){
      return Container(
        height: 214,
        margin: EdgeInsets.only(top: 236),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              kWhiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }
    Widget backgroundImage(){
      return Container(
        height: 450,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(destination.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      );
    }


    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            shadow(),
            content(),
          ],
        ),
      )
    );
  }
}