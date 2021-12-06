import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class Seat extends StatelessWidget {
  // NOTE: 0 = unavailable, 1 = available, 2 = selected
  final int status;
  const Seat({ 
    Key? key,
    required this.status,
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundColor(){
      switch (status) {
      case 0:
        return kUnavailableColor;
      case 1:
        return kAvailableColor;
      case 2:
        return kPrimaryColor;
      default:
        return kUnavailableColor;
      }
    }
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: status == 1 ? Border.all(color: kPrimaryColor, width: 1) : null,
      ),
      child: Center(
        child: status == 2 ? Text(
          'YOU', 
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold
            ),
          ) : null,
      )
    );
  }
}