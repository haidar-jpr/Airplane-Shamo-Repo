import 'package:airplane_shamo/models/transaction_models.dart';
import 'package:airplane_shamo/services/transaction_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  void createTransaction(TransactionModel transaction) async {
    try {
      emit(TransactionLoading());
      await TransanctionService().createTransaction(transaction);
      emit(const TransactionSuccess([]));
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }

  void fetchTransactions() async {
    try {
      emit(TransactionLoading());

      List<TransactionModel> transaction =
          await TransanctionService().fetchTransactions();

      emit(TransactionSuccess(transaction));
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }
}
