import 'package:flutter/material.dart';
import 'package:project_airplane/ui/pages/sign_in_page.dart';
import 'package:project_airplane/ui/widgets/button.dart';
import '../../shared/theme.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 0),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/img_get_started.png',
              ),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Fly Like a Bird',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 10
                ),
                Text('Explore new world with us and let\nyourself get an amazing experiences', 
                  style: whiteTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                  ),
                  textAlign: TextAlign.center,
                ),
                Button(
                  margin: EdgeInsets.only(top: 50, bottom: 80),
                  title: 'Get Started', 
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  width: 220,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}