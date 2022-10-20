part of 'destinations_cubit.dart';

abstract class DestinationsState extends Equatable {
  const DestinationsState();

  @override
  List<Object> get props => [];
}

class DestinationsInitial extends DestinationsState {}

class DestinationsLoading extends DestinationsState {}

class DestinationsSuccsess extends DestinationsState {
  final List<DestinationModel> destinations;

  const DestinationsSuccsess(this.destinations);

  @override
  List<Object> get props => [destinations];
}

class DestinationsFailed extends DestinationsState {
  final String err;

  const DestinationsFailed(this.err);

  @override
  List<Object> get props => [err];
}
