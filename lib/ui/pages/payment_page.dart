import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project_airplane/cubit/auth_cubit.dart';
import '../../shared/theme.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        if(state is AuthSuccess){
          return Scaffold(
            backgroundColor: kBackgroundColor,
            body: Center(
              child:
              Container(
                height: 211,
                width: 300,
                padding: EdgeInsets.all(defaultMargin),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img_card.png'),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: kPrimaryColor.withOpacity(0.5),
                      blurRadius: 50,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name',
                                style: whiteTextStyle.copyWith(fontWeight: light),
                              ),
                              Text(
                                state.user.name,
                                style: whiteTextStyle.copyWith(
                                    fontSize: 20, fontWeight: medium),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.only(right: 6),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/icon_plane.png'),
                            ),
                          ),
                        ),
                        Text(
                          'Pay',
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: medium),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Balance',
                              style: whiteTextStyle.copyWith(
                                fontWeight: light,
                              ),
                            ),
                            Text(
                              NumberFormat.currency(
                                locale: 'id',
                                symbol: 'IDR ',
                                decimalDigits: 0,
                              ).format(state.user.balance),
                              style: whiteTextStyle.copyWith(
                                fontWeight: medium,
                                fontSize: 26,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
              ),
            );
          }else{
            return Scaffold(
            backgroundColor: kBackgroundColor,
            body: Center(
              child: Text('Payment Page')
              ),
            );
          }
      },
    );
  }
}
