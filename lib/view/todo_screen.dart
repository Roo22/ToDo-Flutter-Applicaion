import 'package:flutter/material.dart';
import 'package:task_session4/componets/item_list.dart';
class TodoScreen extends StatefulWidget {
  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<bool> isChecked = List<bool>.filled(NewItem.length, false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: NewItem.length ,
          itemBuilder: (BuildContext context, int index){
        return CheckboxListTile(
            title: Text(NewItem[index],style: TextStyle(color: Colors.redAccent,fontSize: 30,fontWeight: FontWeight.bold),),
            activeColor: Colors.redAccent,
            value: isChecked[index], onChanged: (val){
          setState(() {
            isChecked[index]= val!;
          });
        });
      }

      ),
    );
  }
}
/*  Row(
          children: [
            SizedBox(width: 10,),
            Checkbox(value: this.isChecked, onChanged: (bool? value){
              setState(() {
                this.isChecked= value!;
              });
            },),
            SizedBox(width: 10,),
            Text('${NewItem[index]}',style: TextStyle(color: Colors.redAccent,fontSize: 30,fontWeight: FontWeight.bold),)
          ],
        ) */