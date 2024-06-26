import 'package:cubit_counter_app/cubits/count_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddDataPage extends StatelessWidget {
  const AddDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Data"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          context.read<CountCubit>().increaseCount();
          //BlocProvider.of<CountCubit>(context, listen: false).increaseCount();
          Navigator.pop(context);
        }, child: Text('Increase Count')),
      ),
    );
  }
}
