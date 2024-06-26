import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountCubit extends Cubit<int>{
  CountCubit() : super(0); //initial state

  //event
  void increaseCount(){
    int newValue = state + 1;
    emit(newValue);
  }

}