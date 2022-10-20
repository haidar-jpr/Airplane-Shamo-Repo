import 'package:airplane_shamo/cubit/transaction_cubit.dart';
import 'package:airplane_shamo/themes.dart';
import 'package:airplane_shamo/widgets/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  void initState() {
    context.read<TransactionCubit>().fetchTransactions();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        if (state is TransactionLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is TransactionSuccess) {
          if (state.transaction.isEmpty) {
            return const Center(
              child: Text('Kamu belum memiliki transaksi'),
            );
          } else {
            return ListView.builder(
              itemCount: state.transaction.length,
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 30,
              ),
              itemBuilder: (context, index) {
                return TransactionCard(
                  state.transaction[index],
                );
              },
            );
          }
        }

        return Center(
          child: Text(
            'Transaction Screen',
            style: blackTextStyle,
          ),
        );
      },
    );
  }
}
