import 'package:cubit_counter_app/cubits/list_cubit.dart';
import 'package:cubit_counter_app/list_app/ListState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Page With Cubit'),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent.shade100,
      ),
      body: BlocBuilder<ListCubit, ListState>(
        builder: (context, state){
          return state.mList.isEmpty? Center(child: Text("Not Data Found", style:  TextStyle(fontSize: 28),),)
              : ListView.builder(itemCount: state.mList.length, itemBuilder: (context, index) {
            return ListTile(
              title:  Text("${state.mList[index]['title']}"),
              subtitle: Text("${state.mList[index]['desc']}"),
              trailing: IconButton(onPressed: (){
                context.read<ListCubit>().deleteData(index);
              }, icon: Icon(Icons.delete)),
              onLongPress: (){
                context.read<ListCubit>().updateData({'title': "Updated Title", 'desc': "This is updated description"}, index);
              },
            );
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .read<ListCubit>()
              .addData({'title': 'New Title', 'desc': 'This is description'});
        },
        child: Icon(Icons.add_sharp),
      ),
    );
  }
}
