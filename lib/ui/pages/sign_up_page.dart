import 'package:flutter/material.dart';
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
      Widget nameInput(){
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Full Name'),
              SizedBox(height: 6),
              TextFormField(
                cursorColor: kBlackColor,
                autocorrect: false,
                enableSuggestions: false,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  hintText: 'Input your full name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(defaultRadius)
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget emailInput(){
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email'),
              SizedBox(height: 6),
              TextFormField(
                cursorColor: kBlackColor,
                autocorrect: false,
                enableSuggestions: false,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  hintText: 'Input your Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(defaultRadius)
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget passwordInput(){
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Password'),
              SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                cursorColor: kBlackColor,
                autocorrect: false,
                enableSuggestions: false,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  hintText: 'Input your password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(defaultRadius)
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget hobbyInput(){
        return Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hobby'),
              SizedBox(height: 6),
              TextFormField(
                cursorColor: kBlackColor,
                autocorrect: false,
                enableSuggestions: false,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  hintText: 'Whats your hobby?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: kPrimaryColor),
                    borderRadius: BorderRadius.circular(defaultRadius)
                  ),
                ),
              ),
            ],
          ),
        );
      }

      Widget submitBtn(){
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: (){
              Navigator.pushNamed(context, '/bonus');
            },
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(defaultRadius),
              ),
            ),
            child: Text(
              'Get Started',
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: medium
              ),
            ),
          ),
        );
      }

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
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitBtn()
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