import 'package:flutter/material.dart';
import 'package:project_airplane/ui/widgets/new_destination_item.dart';
import 'package:project_airplane/ui/widgets/popular_destination.dart';
import '../../shared/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget header(){
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30
        ),
        child: Row(
          children: [
            Expanded(
              child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text('Howdy,\nLee Jieun', style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold)),
                    SizedBox(height: 6),
                    Text('Where to fly today?', style: greyTextStyle.copyWith(fontSize: 16, fontWeight: light))
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
    }

    Widget popularDestination(){
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              PopularDestination(
                image: 'assets/img_dest_1.png',
                rating: '4.5',
                title: 'Lake Ciliwung',
                city: 'Tangerang'
              ),
              PopularDestination(
                image: 'assets/img_dest_2.png',
                rating: '4.5',
                title: 'White House',
                city: 'America'
              ),
              PopularDestination(
                image: 'assets/img_dest_3.png',
                rating: '4.7',
                title: 'Hill Heyo',
                city: 'Monaco'
              ),
              PopularDestination(
                image: 'assets/img_dest_4.png',
                rating: '4.1',
                title: 'Menarra',
                city: 'Japan'
              ),
              PopularDestination(
                image: 'assets/img_dest_5.png',
                rating: '5.0',
                title: 'Holy Tree',
                city: 'Singapore'
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination(){
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('New This Year',
            style: blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold)
            ),
            NewDestinationItem(
              title: 'Danau Berantan',
              city: 'Singaraja',
              rating: '4.5',
              image: 'assets/img_dest_6.png'
            ),
            NewDestinationItem(
              title: 'Sidney Opera',
              city: 'Australia',
              rating: '4.2',
              image: 'assets/img_dest_7.png'
            ),
            NewDestinationItem(
              title: 'Roma',
              city: 'Italy',
              rating: '4.1',
              image: 'assets/img_dest_8.png'
            ),
            NewDestinationItem(
              title: 'Holy Tree',
              city: 'Singapore',
              rating: '5.0',
              image: 'assets/img_dest_5.png'
            ),
            NewDestinationItem(
              title: 'Hill Hey',
              city: 'Monaco',
              rating: '4.7',
              image: 'assets/img_dest_10.png'
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination()
      ]
    );
  }
}