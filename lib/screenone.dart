import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/listview_provider.dart';
import 'package:providerdemo/screentwo.dart';


class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {


  @override
  Widget build(BuildContext context) {
    return Consumer<ListViewProvider>(
     builder: (context,listViewProvider,child){

       return  Scaffold(
         floatingActionButton: Row(
           mainAxisAlignment: MainAxisAlignment.end,
           children: [
             FloatingActionButton(
               onPressed: (){


                 // listViewProvider.minus();



               },
               child: Icon(Icons.minimize),
             ),
             SizedBox(width: 10,),
             FloatingActionButton(
               onPressed: (){


                 listViewProvider.add();

               },
               child: Icon(Icons.add),
             ),
           ],
         ),
         appBar: AppBar(

           actions: [
             IconButton(onPressed: (){

               Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenTwo()));

             }, icon: Icon(Icons.arrow_forward_ios,color: Colors.white,))
           ],
           // backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
         ),

         body: Container(
           padding: EdgeInsets.all(20),
           height: double.infinity,
           width: double.infinity,
           child: Column(
             children: [

               listViewProvider.numbers.isNotEmpty?Text("Total Count: ${ listViewProvider.numbers.last.toString()}",style: Theme.of(context).textTheme.titleLarge):SizedBox(),
               listViewProvider.numbers.isNotEmpty?

               Expanded(child: ListView.builder(
                   itemCount: listViewProvider.numbers.length,
                   itemBuilder: (context,index){
                     return ListTile(title: Text( listViewProvider.numbers[index].toString(),style: Theme.of(context).textTheme.titleLarge),);
                   })):SizedBox()

             ],
           ),
         ),
       );
     },
    );
  }
}
