import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/model/todomodel.dart';
import 'package:providerdemo/provider/todoprovider.dart';


class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController _titleController=TextEditingController();
    TextEditingController _contentController=TextEditingController();
    return Consumer<TodoProvider>(builder:(context,todoProvider,child){


      return Scaffold(

        floatingActionButton: FloatingActionButton(

          onPressed: (){

            showDialog(context: context,

                builder:(context){

              return AlertDialog(

                actions: [

                  ElevatedButton(onPressed: (){

                    TodoModel todo=TodoModel(

                        title: _titleController.text,
                        content: _contentController.text
                    );

                    todoProvider.add(todo);

                    Navigator.pop(context);



                  }, child: Text("add"))
                ],
                content: Container(
                  child: Column(
                    children: [

                      TextField(
                        controller: _titleController,
                      ),
                      TextField(
                        controller: _contentController,
                      ),


                    ],
                  ),
                ),
              );
                }

            );




          },
          child: Icon(Icons.add),
        ),

        body: ListView.builder(
            itemCount: todoProvider.todos.length,
            itemBuilder: (context,index){

          return ListTile(
            title: Text(todoProvider.todos[index].title.toString()),
          );
        }),
      );
    });
  }
}
