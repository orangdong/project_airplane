import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project_airplane/cubit/seat_cubit.dart';
import 'package:project_airplane/models/destination_model.dart';
import 'package:project_airplane/ui/pages/checkout_page.dart';
import 'package:project_airplane/ui/widgets/button.dart';
import 'package:project_airplane/ui/widgets/seat.dart';
import '../../shared/theme.dart';

class ChooseSeatPage extends StatelessWidget {

  final DestinationModel destination;
  const ChooseSeatPage(this.destination, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose Your\nFavorite Seat',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/icon_available.png'),
                  )),
                ),
                Text('Available', style: blackTextStyle),
                Container(
                  height: 16,
                  width: 16,
                  margin: EdgeInsets.only(right: 6, left: 10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/icon_selected.png'),
                  )),
                ),
                Text('Selected', style: blackTextStyle),
                Container(
                  height: 16,
                  width: 16,
                  margin: EdgeInsets.only(right: 6, left: 10),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/icon_unavailable.png'),
                  )),
                ),
                Text('Unavailable', style: blackTextStyle),
              ],
            )
          ],
        ),
      );
    }

    Widget seatContainer() {
      return Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultRadius),
              color: kWhiteColor),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: 48,
                      width: 48,
                      child: Center(
                        child: Text(
                          'A',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      )),
                  Container(
                      height: 48,
                      width: 48,
                      child: Center(
                        child: Text(
                          'B',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      )),
                  Container(
                      height: 48,
                      width: 48,
                      child: Center(
                        child: Text(
                          '',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      )),
                  Container(
                      height: 48,
                      width: 48,
                      child: Center(
                        child: Text(
                          'C',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      )),
                  Container(
                      height: 48,
                      width: 48,
                      child: Center(
                        child: Text(
                          'D',
                          style: greyTextStyle.copyWith(fontSize: 16),
                        ),
                      )),
                ],
              ),

              //SEAT 1
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Seat(isAvailable: false, id: 'A1'),
                    Seat(isAvailable: false, id: 'B1'),
                    Container(
                        height: 48,
                        width: 48,
                        child: Center(
                          child: Text(
                            '1',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        )),
                    Seat(id: 'C1'),
                    Seat(isAvailable: false, id: 'D1'),
                  ],
                ),
              ),
              //SEAT 2
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Seat(id: 'A2'),
                    Seat(id: 'B2'),
                    Container(
                        height: 48,
                        width: 48,
                        child: Center(
                          child: Text(
                            '2',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        )),
                    Seat(id: 'C2'),
                    Seat(isAvailable: false, id: 'D2'),
                  ],
                ),
              ),
              //SEAT 3
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Seat(id: 'A3'),
                    Seat(id: 'B3'),
                    Container(
                        height: 48,
                        width: 48,
                        child: Center(
                          child: Text(
                            '3',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        )),
                    Seat(id: 'C3'),
                    Seat(id: 'D3'),
                  ],
                ),
              ),
              //SEAT 4
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Seat(id: 'A4'),
                    Seat(isAvailable: false, id: 'B4'),
                    Container(
                        height: 48,
                        width: 48,
                        child: Center(
                          child: Text(
                            '4',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        )),
                    Seat(id: 'C4'),
                    Seat(id: 'D4'),
                  ],
                ),
              ),
              //SEAT 5
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Seat(id: 'A5'),
                    Seat(id: 'B5'),
                    Container(
                        height: 48,
                        width: 48,
                        child: Center(
                          child: Text(
                            '5',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          ),
                        )),
                    Seat(isAvailable: false, id: 'C5'),
                    Seat(id: 'D5'),
                  ],
                ),
              ),
              // Your Seat
              BlocBuilder<SeatCubit, List<String>>(
                builder: (context, state) {
                  return Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            'Your Seat',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          )),
                          Text(
                            state.join(', '),
                            style: blackTextStyle.copyWith(
                                fontSize: 16, fontWeight: semiBold),
                          )
                        ],
                      ));
                },
              ),
              BlocBuilder<SeatCubit, List<String>>(
                builder: (context, state) {
                  return Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(
                            'Total',
                            style: greyTextStyle.copyWith(fontSize: 16),
                          )),
                          Text(
                            NumberFormat.currency(
                              locale: 'id',
                              symbol: 'IDR ',
                              decimalDigits: 0,
                            ).format(state.length * destination.price),
                            style: purpleTextStyle.copyWith(
                                fontSize: 16, fontWeight: semiBold),
                          )
                        ],
                      ));
                },
              ),
            ],
          ));
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            title(),
            seatContainer(),
            Button(
              title: 'Continue To Checkout',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckoutPage()));
              },
              margin: EdgeInsets.only(
                top: 30,
                bottom: 46,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
