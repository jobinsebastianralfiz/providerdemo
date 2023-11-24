import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/model/todomodel.dart';

class TodoProvider with ChangeNotifier{

  List<TodoModel> _todos=[];
  List<TodoModel>  get todos =>_todos;

  //add

void add(TodoModel todo){

  _todos.add(todo);
  notifyListeners();


}

  //delete





  //update


  //reda

}