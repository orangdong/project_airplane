import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project_airplane/models/destination_model.dart';
import 'package:project_airplane/services/destination_service.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());

  void getDestination() async {
    try {
      emit(DestinationLoading());
      List<DestinationModel> destinations = await DestinationService().getDestinations();

      emit(DestinationSucess(destinations));
    } catch (e) {
      emit(DestinationFailure(e.toString()));
    }
  }
}
