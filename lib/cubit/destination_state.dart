part of 'destination_cubit.dart';

abstract class DestinationState extends Equatable {
  const DestinationState();

  @override
  List<Object> get props => [];
}

class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {}

class DestinationSucess extends DestinationState {
  final List<DestinationModel> destinations;

  DestinationSucess(this.destinations);

  @override
  List<Object> get props => [destinations];
}

class DestinationFailure extends DestinationState {
  final String error;

  DestinationFailure(this.error);

  @override
  List<Object> get props => [error];
}
