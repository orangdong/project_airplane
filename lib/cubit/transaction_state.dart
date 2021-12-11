part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransactionInitial extends TransactionState {}

class TransactionLoading extends TransactionState {}

class TransactionSuccess extends TransactionState {
  // final List<TransactionModel> transactions;

  // TransactionSuccess(this.transactions);

  // @override
  // List<Object> get props => [transactions];
}

class TransactionFailure extends TransactionState {
  final String error;

  TransactionFailure(this.error);

  @override
  List<Object> get props => [error];
}