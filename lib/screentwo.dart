import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/listview_provider.dart';
import 'package:providerdemo/screentwo.dart';


class ScreenTwo extends StatefulWidget {

  final List? numbers;
  const ScreenTwo({super.key,this.numbers});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {


  @override
  Widget build(BuildContext context) {
    return Consumer<ListViewProvider>(
      builder: (context,listViewProvider,child){

        return  Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: (){


              listViewProvider.add();

            },
            child: Icon(Icons.add),
          ),
          appBar: AppBar(


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
