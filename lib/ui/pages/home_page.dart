import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_airplane/cubit/auth_cubit.dart';
import 'package:project_airplane/cubit/destination_cubit.dart';
import 'package:project_airplane/models/destination_model.dart';
import 'package:project_airplane/ui/widgets/new_destination_item.dart';
import 'package:project_airplane/ui/widgets/popular_destination.dart';
import '../../shared/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<DestinationCubit>().getDestinations();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                  left: defaultMargin, right: defaultMargin, top: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Howdy,\n${state.user.name}',
                            style: blackTextStyle.copyWith(
                                fontSize: 24, fontWeight: semiBold)),
                        SizedBox(height: 6),
                        Text('Where to fly today?',
                            style: greyTextStyle.copyWith(
                                fontSize: 16, fontWeight: light))
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/img_profile.png'),
                      ),
                    ),
                  )
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget popularDestination(List<DestinationModel> destinations) {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: 
              destinations.map((DestinationModel destination) {
                return PopularDestination(destination);
              }).toList()
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('New This Year',
                style: blackTextStyle.copyWith(
                    fontSize: 18, fontWeight: semiBold)),
            NewDestinationItem(
                title: 'Danau Berantan',
                city: 'Singaraja',
                rating: '4.5',
                image: 'assets/img_dest_6.png'),
            NewDestinationItem(
                title: 'Sidney Opera',
                city: 'Australia',
                rating: '4.2',
                image: 'assets/img_dest_7.png'),
            NewDestinationItem(
                title: 'Roma',
                city: 'Italy',
                rating: '4.1',
                image: 'assets/img_dest_8.png'),
            NewDestinationItem(
                title: 'Holy Tree',
                city: 'Singapore',
                rating: '5.0',
                image: 'assets/img_dest_5.png'),
            NewDestinationItem(
                title: 'Hill Hey',
                city: 'Monaco',
                rating: '4.7',
                image: 'assets/img_dest_10.png'),
          ],
        ),
      );
    }

    return BlocConsumer<DestinationCubit, DestinationState>(
      listener: (context, state) {
        if(state is DestinationFailure){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.error),
            backgroundColor: kRedColor,
            ));
        }
      },
      builder: (context, state) {
        if(state is DestinationSucess){
          return ListView(
            children: [
              header(), 
              popularDestination(state.destinations), 
              newDestination()
            ]);
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
