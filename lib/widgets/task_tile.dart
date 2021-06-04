import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskName;
  final bool isChecked;
  final Function checkboxCallback;
  final Function onLongPressCallback;
  TaskTile(
      {required this.taskName,
      required this.isChecked,
      required this.checkboxCallback,
      required this.onLongPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: () {
        onLongPressCallback();
      },
      title: Text(
        taskName,
        style: TextStyle(
          color: Colors.blueGrey.shade900,
          fontSize: 30,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.blueGrey.shade900,
        value: isChecked,
        onChanged: (checkboxState) {
          checkboxCallback(checkboxState);
        },
      ),
    );
  }
}
