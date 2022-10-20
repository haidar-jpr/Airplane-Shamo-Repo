import 'package:airplane_shamo/cubit/seat_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../themes.dart';

class SeatItems extends StatelessWidget {
  const SeatItems({
    Key? key,
    required this.id,
    this.isAvailable = true,
  }) : super(key: key);

  // NOTE: 0.Available 1.Selected 3.Unavailable

  final String id;
  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);

    backgroundColor() {
      if (!isAvailable) {
        return kUnavailable;
      } else {
        if (isSelected) {
          return kPrimaryColor;
        } else {
          return kAvailable;
        }
      }
    }

    borderColor() {
      if (!isAvailable) {
        return kUnavailable;
      } else {
        return kPrimaryColor;
      }
    }

    child() {
      if (isSelected) {
        return Center(
          child: Text(
            'YOU',
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
        );
      } else {
        return const SizedBox();
      }
    }

    return GestureDetector(
      onTap: () {
        if (isAvailable) {
          context.read<SeatCubit>().selectSeat(id);
        }
      },
      child: Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: backgroundColor(),
          borderRadius: BorderRadius.circular(14),
          border: Border.all(color: borderColor()),
        ),
        child: child(),
      ),
    );
  }
}
