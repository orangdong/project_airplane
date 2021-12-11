import 'package:flutter/material.dart';
import 'package:project_airplane/cubit/transaction_cubit.dart';
import 'package:project_airplane/ui/widgets/transaction_card.dart';
import '../../shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({ Key? key }) : super(key: key);

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {

  @override
  void initState() {
    context.read<TransactionCubit>().getTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {     
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if(state is TransactionLoading){
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        else if(state is TransactionSuccess){
          if(state.transactions.length == 0){
            return Center(
              child: Text("No transactions yet"),
            );
          }else{
            return ListView.builder(
              padding: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                bottom: 100,
              ),
              itemCount: state.transactions.length,
              itemBuilder: (context, index) {
                return TransactionCard(state.transactions[index]);
              },
            );
          }
        }
        return Scaffold(
          backgroundColor: kBackgroundColor,
          body: Center(
          child: Text('Transaction Page'),
          ),
        );
      }
    );
    
  }
}