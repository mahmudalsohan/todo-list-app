import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';
import 'package:todo_flutter/widgets/task_tile.dart';

class TaskLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              taskName: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                taskData.toggleCheckbox(task);
              },
              onLongPressCallback: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.tasks.length,
        );
      },
    );
  }
}
