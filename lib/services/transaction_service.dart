import 'package:airplane_shamo/models/transaction_models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class TransanctionService {
  final CollectionReference _transactionReference =
      FirebaseFirestore.instance.collection('transactions');

  Future<void> createTransaction(TransactionModel transaction) async {
    try {
      _transactionReference.add({
        'destination': transaction.destination.toJson(),
        'amountOfTraveller': transaction.amountOfTraveller,
        'selectedSeat': transaction.selectedSeat,
        'insurance': transaction.insurance,
        'refundable': transaction.refundable,
        'vat': transaction.vat,
        'price': transaction.price,
        'grandTotal': transaction.grandTotal,
      });
    } catch (e) {
      rethrow;
    }
  }

  Future<List<TransactionModel>> fetchTransactions() async {
    try {
      QuerySnapshot result = await _transactionReference.get();

      List<TransactionModel> transaction = result.docs.map(
        (e) {
          return TransactionModel.fromJson(
              e.id, e.data() as Map<String, dynamic>);
        },
      ).toList();

      print('---------------- ${transaction}');

      return transaction;
    } catch (e) {
      rethrow;
    }
  }
}
