import 'package:flutter/material.dart';
import 'package:project_airplane/ui/widgets/button.dart';
import 'package:project_airplane/ui/widgets/input_field.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title(){
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold
          ),
        ),
      );
    }

    Widget inputSection(){
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30
        ),
        
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius
          ),
        ),
        child: Column(
          children: [
            InputField(label: 'Full Name', hint: 'Input your full name'),
            InputField(label: 'Email', hint: 'Input your email'),
            InputField(label: 'Password', hint: 'Input your password', isHidden: true),
            InputField(label: 'Hobby', hint: 'Whats your hobby?'),
            Button(
              margin: EdgeInsets.only(top: 10),
              title: 'Sign Up', 
              onPressed: () {
              Navigator.pushNamed(context, '/bonus');
              },
            ),
          ],
        ),
      );
    }

    Widget tacButton(){
      return Container(
        margin: EdgeInsets.only(top: 50, bottom: 73),
        alignment: Alignment.center,
        child: Text(
          'Terms and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
            ),
            children: [
              title(),
              inputSection(),
              tacButton()
            ],
        ),
      ),
    );
  }
}