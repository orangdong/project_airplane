import 'package:flutter/material.dart';
import 'package:project_airplane/ui/widgets/button.dart';
import '../../shared/theme.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              height: 150,
              margin: EdgeInsets.only(bottom: 80),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_success.png')
                )
              ),
            ),
            Text('Well Booked 😍',
            style: blackTextStyle.copyWith(
              fontSize: 32,
              fontWeight: extraBold
            ),
            ),
            SizedBox(height: 10,),
            Text('Are you ready to explore the new\nworld of experiences?',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: regular
            ),
            textAlign: TextAlign.center,
            ),
            Button(
              title: 'My Bookings',
              margin: EdgeInsets.only(top: 50, bottom: 50),
              width: 220,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
              },
            )
          ],
        ),
      )
    );
  }
}