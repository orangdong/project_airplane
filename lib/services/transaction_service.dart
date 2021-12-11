import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_airplane/models/transaction_model.dart';

class TransactionService {
  CollectionReference _transactionCollection =
      FirebaseFirestore.instance.collection('transactions');
  
  Future<void> createTransaction(TransactionModel transaction) async {
      try {
        _transactionCollection.add({
          'destination': transaction.destination.toJson(),
          'amount': transaction.amount,
          'selectedSeat': transaction.selectedSeat,
          'insurance': transaction.insurance,
          'refundable': transaction.refundable,
          'vat': transaction.vat,
          'price': transaction.price,
          'total': transaction.total,
        });
      } catch (e) {
        throw e;
      }
  }

  // Future<List<TransactionModel>> getTransactions() async{

  //   try {
  //     QuerySnapshot querySnapshot = await _transactionCollection.get();

  //     List<TransactionModel> destinationList = querySnapshot.docs.map((e){
  //       return TransactionModel.fromJson(e.id, e.data() as Map<String, dynamic>);
  //     }).toList();
      
  //     return destinationList;
  //   } catch (e) {
  //     throw e;
  //   }
  // }
}