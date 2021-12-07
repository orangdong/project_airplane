import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_airplane/cubit/page_cubit.dart';
import 'package:project_airplane/ui/widgets/navigation_item.dart';
import '../../shared/theme.dart';
import 'home_page.dart';
import 'payment_page.dart';
import 'setting_page.dart';
import 'transaction_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPage();
        case 2:
          return PaymentPage();
        case 3:
          return SettingPage();
        default:
          return HomePage();
      }
    }

    Widget bottomNavigation(int currentIndex) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(
              bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
              color: kWhiteColor,
              borderRadius: BorderRadius.circular(defaultRadius)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavigationItem(
                index: 0,
                imageUrl: 'assets/icon_home.png',
              ),
              NavigationItem(
                index: 1,
                imageUrl: 'assets/icon_book.png',
              ),
              NavigationItem(
                index: 2,
                imageUrl: 'assets/icon_card.png',
              ),
              NavigationItem(
                index: 3,
                imageUrl: 'assets/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Stack(
            children: [
              buildContent(currentIndex),
              bottomNavigation(currentIndex),
            ],
          ),
        );
      },
    );
  }
}
