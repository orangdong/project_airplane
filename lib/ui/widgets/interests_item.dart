import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class InterestsItem extends StatelessWidget {
  final String title;
  const InterestsItem({ Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              ),
            ),
          ),
          Text(title, style: blackTextStyle.copyWith(fontWeight: medium))
        ],
      ),
    );
  }
}