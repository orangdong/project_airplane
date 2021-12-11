import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project_airplane/models/transaction_model.dart';
import 'package:project_airplane/shared/theme.dart';

import 'booking_detail_item.dart';

class TransactionCard extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionCard(this.transaction, { Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}