import 'package:equatable/equatable.dart';
import 'package:project_airplane/models/destination_model.dart';

class TransactionModel extends Equatable {
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
    this.amount = 0,
    this.selectedSeat = '',
    this.insurance = false,
    this.refundable = false,
    this.vat = 0,
    this.price = 0,
    this.total = 0,
  });

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