import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project_airplane/cubit/auth_cubit.dart';
import 'package:project_airplane/cubit/transaction_cubit.dart';
import 'package:project_airplane/models/transaction_model.dart';
import 'package:project_airplane/shared/theme.dart';
import 'package:project_airplane/ui/pages/success_page.dart';
import 'package:project_airplane/ui/widgets/booking_detail_item.dart';
import 'package:project_airplane/ui/widgets/button.dart';

class CheckoutPage extends StatelessWidget {
  final TransactionModel transaction;
  const CheckoutPage(this.transaction, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_destination.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('CGK',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold)),
                  Text('Tangerang',
                      style: greyTextStyle.copyWith(fontWeight: light))
                ]),
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                  Text('TLC',
                      style: blackTextStyle.copyWith(
                          fontSize: 24, fontWeight: semiBold)),
                  Text('Ciliwung',
                      style: greyTextStyle.copyWith(fontWeight: light))
                ]),
              ],
            )
          ],
        ),
      );
    }

    Widget bookingDetail() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultRadius),
                  image: DecorationImage(
                    image: NetworkImage(transaction.destination.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.destination.title,
                      style: blackTextStyle.copyWith(
                          fontSize: 18, fontWeight: semiBold),
                    ),
                    Text(
                      transaction.destination.city,
                      style: greyTextStyle.copyWith(
                          fontSize: 14, fontWeight: light),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_star.png')),
                    ),
                  ),
                  Text(
                    transaction.destination.rating.toString(),
                    style: blackTextStyle.copyWith(fontWeight: semiBold),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Text('Booking Details',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold)),
          SizedBox(height: 10),
          BookingDetailItem(
            title: 'Traveller',
            value: Text(
              '${transaction.amount} person',
              style: blackTextStyle.copyWith(fontWeight: semiBold),
            ),
          ),
          BookingDetailItem(
            title: 'Seat',
            value: Text(
              transaction.selectedSeat,
              style: blackTextStyle.copyWith(fontWeight: semiBold),
            ),
          ),
          BookingDetailItem(
            title: 'Insurace',
            value: Text(
              transaction.insurance ? 'YES' : 'NO',
              style: transaction.insurance
                  ? greenTextStyle.copyWith(fontWeight: semiBold)
                  : redTextStyle.copyWith(fontWeight: semiBold),
            ),
          ),
          BookingDetailItem(
            title: 'Refundable',
            value: Text(
              transaction.refundable ? 'YES' : 'NO',
              style: transaction.refundable
                  ? greenTextStyle.copyWith(fontWeight: semiBold)
                  : redTextStyle.copyWith(fontWeight: semiBold),
            ),
          ),
          BookingDetailItem(
            title: 'VAT',
            value: Text(
              '${(transaction.vat * 100).toStringAsFixed(0)}%',
              style: blackTextStyle.copyWith(fontWeight: semiBold),
            ),
          ),
          BookingDetailItem(
            title: 'Price',
            value: Text(
              NumberFormat.currency(
                locale: 'id',
                symbol: 'IDR ',
                decimalDigits: 0,
              ).format(transaction.price),
              style: blackTextStyle.copyWith(fontWeight: semiBold),
            ),
          ),
          BookingDetailItem(
            title: 'Grand Total',
            value: Text(
              NumberFormat.currency(
                locale: 'id',
                symbol: 'IDR ',
                decimalDigits: 0,
              ).format(transaction.total),
              style: purpleTextStyle.copyWith(fontWeight: semiBold),
            ),
          ),
        ]),
      );
    }

    Widget paymentDetail() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if(state is AuthSuccess){
            return Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(defaultRadius),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Payment Details',
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: semiBold)),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 16),
                              height: 70,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/img_card.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius:
                                    BorderRadius.circular(defaultRadius),
                              ),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 24,
                                      width: 24,
                                      margin: EdgeInsets.only(right: 6),
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image:
                                              AssetImage('assets/icon_plane.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Pay',
                                      style: whiteTextStyle.copyWith(
                                          fontSize: 16, fontWeight: semiBold),
                                    ),
                                  ]),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  NumberFormat.currency(
                                    locale: 'id',
                                    symbol: 'IDR ',
                                    decimalDigits: 0,
                                  ).format(state.user.balance),
                                  style: blackTextStyle.copyWith(
                                      fontSize: 18, fontWeight: semiBold),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Current Balance',
                                  style:
                                      greyTextStyle.copyWith(fontWeight: regular),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ]
                )
            );
          }else{
            return SizedBox();
          }
        },
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: [
              route(),
              bookingDetail(),
              paymentDetail(),
              BlocConsumer<TransactionCubit, TransactionState>(
                builder: (context, state){
                  if(state is TransactionLoading){
                    return Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(top: 30),
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Button(
                    title: 'Pay Now',
                    margin: EdgeInsets.only(top: 30, bottom: 30),
                    onPressed: () {
                      context.read<TransactionCubit>().createTransaction(transaction);
                    },
                  );
                },
                 listener: (context, state){
                   if(state is TransactionSuccess) {
                      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SuccessPage()), (route) => false);
                    }else if(state is TransactionFailure){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(state.error),
                        backgroundColor: kRedColor,
                        ));
                    }
                 }
                 ),
              Text(
                'Terms and Conditions',
                style: greyTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: light,
                    decoration: TextDecoration.underline),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30),
            ]));
  }
}
