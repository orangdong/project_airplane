import 'package:flutter/material.dart';
import 'package:project_airplane/models/destination_model.dart';
import 'package:project_airplane/ui/pages/detail_page.dart';
import '../../shared/theme.dart';

class PopularDestination extends StatelessWidget {
  final DestinationModel destination;
  
  const PopularDestination(
    this.destination,{ 
    Key? key
     }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(destination)));
      },
      child: Container(
        margin: EdgeInsets.only(
          right: 5,
          left: defaultMargin
        ),
        width: 200,
        height: 323,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              image: DecorationImage(
                image: NetworkImage(destination.imageUrl),
                fit: BoxFit.fill,
                ),
              ),
              child: 
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 55,
                    height: 30,
                    decoration: BoxDecoration(
                      color: kWhiteColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(defaultRadius),
                        topRight: Radius.circular(defaultRadius),
                        ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icon_star.png')
                            ),
                          ),
                        ),
                        Text(destination.rating.toString(), 
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
                left: 10
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(destination.title,
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold
                  ),
                  ),
                  Text(destination.city, 
                  style: greyTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: light
                  ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}