import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Text('Payment Page'),
      ),
    );
  }
}