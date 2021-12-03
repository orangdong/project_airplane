import 'package:flutter/material.dart';
import 'package:project_airplane/ui/widgets/navigation_item.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget bottomNavigation(){
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavigationItem(
                imageUrl: 'assets/icon_home.png',
                isSelected: true,
               ),
              NavigationItem(
                imageUrl: 'assets/icon_book.png',
              ),
              NavigationItem(
                imageUrl: 'assets/icon_card.png',
              ),
              NavigationItem(
                imageUrl: 'assets/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [
          Text('Main page'),
          bottomNavigation(),
        ],
      ),
    );
  }
}