import 'package:equatable/equatable.dart';
import 'package:project_airplane/models/destination_model.dart';

class TransactionModel extends Equatable {
  final String id;
  final DestinationModel destination;
  final int amount;
  final String selectedSeat;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int total;

  TransactionModel({
    required this.destination,
    this.id = '',
    this.amount = 0,
    this.selectedSeat = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.total = 0,
  });

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) {
    return TransactionModel(
      destination: DestinationModel.fromJson(json['destination']['id'], json['destination']),
      amount: json['amount'],
      selectedSeat: json['selectedSeat'],
      insurance: json['insurance'],
      refundable: json['refundable'],
      vat: json['vat'],
      price: json['price'],
      total: json['total'],
    );
  }
  @override
  // TODO: implement props
  List<Object?> get props => [
        destination,
        amount,
        selectedSeat,
        insurance,
        refundable,
        vat,
        price,
        total,
      ];
}