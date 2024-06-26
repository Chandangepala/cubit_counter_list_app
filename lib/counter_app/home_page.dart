import 'package:cubit_counter_app/counter_app/add_data_page.dart';
import 'package:cubit_counter_app/cubits/count_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Using Cubit"),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<CountCubit, int>(
          builder: (context, state){
            return Text('$state', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),);
          },
        )
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => AddDataPage()));
      }, child: Icon(Icons.add),),
    );
  }
}
