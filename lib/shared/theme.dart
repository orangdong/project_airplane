import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 17.0;

Color kPrimaryColor = Color(0xff5C40CC);
Color kBlackColor = Color(0xff1F1449);
Color kWhiteColor = Color(0xffFFFFFF);
Color kGreyColor = Color(0xff9698A9);
Color kGreenColor = Color(0xff0EC3AE);
Color kRedColor = Color(0xffEB70A5);
Color kBackgroundColor = Color(0xffFAFAFA);
Color kInactiveColor = Color(0xffDBD7EC);
Color kTransparentColor = Colors.transparent;
Color kUnavailableColor = Color(0xffEBECF1);
Color kAvailableColor = Color(0xffE0D9FF);

TextStyle blackTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kBlackColor,
  ),
);

TextStyle whiteTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kWhiteColor,
  ),
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kGreyColor,
  ),
);

TextStyle greenTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kGreenColor,
  ),
);

TextStyle redTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kRedColor,
  ),
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  textStyle: TextStyle(
    color: kPrimaryColor,
  ),
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight veryBold = FontWeight.w900;