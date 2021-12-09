import 'package:bloc/bloc.dart';

class SeatCubit extends Cubit<List<String>> {
  SeatCubit() : super([]);

  void addSeat(String id) {
    if(!isSelected(id)){
      state.add(id);
    }else{
      state.remove(id);
    }
    emit(List.from(state));
  }

  int totalSeat(){
    return state.length;
  }

  bool isSelected(String id){
    int index = state.indexOf(id);
    if(index == -1){
      return false;
    }else{
      return true;
    }
  }
}
