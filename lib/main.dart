import 'package:flutter/material.dart';

void main() {
  runApp(Todo());
}

class Todo extends StatefulWidget {
  const Todo({ Key? key }) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "todo"
          ),
        ),
        body: ListView.builder(
          itemCount: taskdata.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(taskdata[index]),
              trailing: Checkbox(value: false,
              onChanged: (value){},
              ),
            );
          }),
      ),
      
    );
  }
}
List taskdata = ["talha","talha","talha","todo"," app ","flutter," ,"in hindi"];