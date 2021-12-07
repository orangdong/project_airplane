import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BookingDetailItem extends StatelessWidget {
  final String title;
  final Text value;
  const BookingDetailItem({ 
    Key? key,
    required this.title,
    required this.value,
   }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check.png'),
                fit: BoxFit.contain,
              )
            ),
          ),
          Text(title, style: blackTextStyle),
          Spacer(),
          value
        ]
      ),
    );
  }
}