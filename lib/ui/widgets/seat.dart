import 'package:flutter/material.dart';
import 'package:project_airplane/cubit/seat_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../shared/theme.dart';

class Seat extends StatelessWidget {
  // NOTE: 0 = unavailable, 1 = available, 2 = selected
  final bool isAvailable;
  final String id;
  const Seat({ 
    Key? key,
    this.isAvailable = true,
    required this.id,
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor(){
      if(!isAvailable){
        return kUnavailableColor;
      }else{
        if(isSelected){
          return kPrimaryColor;
        }else{
          return kAvailableColor;
        }
      }
    }
    return GestureDetector(
      onTap: () {
        if(!isAvailable){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Seat Unavailable'),
            backgroundColor: kRedColor,
            duration: Duration(milliseconds: 750),
            ));
        }else{
          if(context.read<SeatCubit>().totalSeat() >= 5 && !isSelected){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Maximum 5 seats'),
            backgroundColor: kRedColor,
            duration: Duration(milliseconds: 750),
            ));
          }else{
            context.read<SeatCubit>().addSeat(id);
          }
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(15),
          border: isAvailable ? Border.all(color: kPrimaryColor, width: 2) : null,
        ),
        child: Center(
          child: isSelected ? Text(
            'YOU', 
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold
              ),
            ) : null,
        )
      ),
    );
  }
}