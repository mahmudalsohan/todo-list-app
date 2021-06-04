import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    return Container(
        color: Color(0xff757575),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: TextField(
                  onChanged: (value) {
                    newTaskTitle = value;
                  },
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Enter your task',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                ),
              ),
            ],
          ),
        ));
  }
}
