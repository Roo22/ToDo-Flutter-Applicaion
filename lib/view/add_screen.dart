import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_session4/componets/item_list.dart';
class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  bool isChecked = false;
  TextEditingController _listController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          margin: EdgeInsets.all(0.2),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 10,),
                  Checkbox(value: this.isChecked, onChanged: (bool? value){
                    setState(() {
                      this.isChecked= value!;
                    });
                  },),
                  SizedBox(width: 10,),
                  Container(
                     width: 300,
                     child: TextField(
                       controller: _listController,
                      decoration: InputDecoration(
                        hintText: 'Please Write anything...',
                      ),
                       onSubmitted: (value){
                         setState(() {
                           _listController.text = value;
                         });
                       },
                  ),
                   )

                ],
              ),
              SizedBox(height: 50,),
              FloatingActionButton(onPressed: (){
                setState(() {
                NewItem.add(_listController.text.toString());
                });
              },
              child: const Icon(Icons.add) ,)
            ],
          ),
        ),
      ),
    );
  }
}
