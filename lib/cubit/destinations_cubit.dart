import 'package:airplane_shamo/services/destination_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/destination_models.dart';

part 'destinations_state.dart';

class DestinationsCubit extends Cubit<DestinationsState> {
  DestinationsCubit() : super(DestinationsInitial());

  void fetchDestinations() async {
    try {
      emit(DestinationsLoading());

      List<DestinationModel> destinations =
          await DestinationService().fetchDestinations();

      emit(DestinationsSuccsess(destinations));
    } catch (e) {
      emit(DestinationsFailed(e.toString()));
    }
  }
}
