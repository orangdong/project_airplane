import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class NewDestinationItem extends StatelessWidget {
  final String image;
  final String title;
  final String city;
  final String rating;
  const NewDestinationItem({ 
    Key? key,
    required this.image,
    required this.title,
    required this.city,
    this.rating = '5.0' 
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultRadius),
        color: kWhiteColor,
      ),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold
              ),
              ),
              Text(city,
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
              Text(rating, 
              style: blackTextStyle.copyWith(
                fontWeight: semiBold
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}