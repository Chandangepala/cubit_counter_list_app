import 'package:cubit_counter_app/cubits/count_cubit.dart';
import 'package:cubit_counter_app/counter_app/home_page.dart';
import 'package:cubit_counter_app/cubits/list_cubit.dart';
import 'package:cubit_counter_app/list_app/list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( MultiBlocProvider(providers: [
    BlocProvider(create: (context) => CountCubit()),
    BlocProvider(create: (context) => ListCubit())
  ], child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListPage(),
    );
  }
}
