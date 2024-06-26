import 'package:cubit_counter_app/list_app/ListState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListCubit extends Cubit<ListState>{
  ListCubit() : super(ListState(mList: []));

  //events
  void addData(Map<String, dynamic> newData){
    List<Map<String, dynamic>> currentStateValue = state.mList;
    currentStateValue.add(newData);
    emit(ListState(mList: currentStateValue));
  }

  void updateData(Map<String, dynamic> updatedData, int index){
      List<Map<String, dynamic>> currentStateValue = state.mList;
      currentStateValue[index] = updatedData;
      emit(ListState(mList: currentStateValue));
  }

  void deleteData(int index){
    List<Map<String, dynamic>> currentStateValue = state.mList;
    currentStateValue.removeAt(index);
    emit(ListState(mList: currentStateValue));
  }
}