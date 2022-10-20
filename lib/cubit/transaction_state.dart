part of 'transaction_cubit.dart';

abstract class TransactionState extends Equatable {
  const TransactionState();

  @override
  List<Object> get props => [];
}

class TransactionInitial extends TransactionState {}

class TransactionLoading extends TransactionState {}

class TransactionSuccess extends TransactionState {
  final List<TransactionModel> transaction;

  const TransactionSuccess(this.transaction);
}

class TransactionFailed extends TransactionState {
  final String err;

  const TransactionFailed(this.err);

  @override
  List<Object> get props => [err];
}
