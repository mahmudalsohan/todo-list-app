import 'package:flutter/foundation.dart';
import 'package:todo_flutter/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> tasks = [];

  void addTask(String newTaskTitle) {
    final newTask = Task(name: newTaskTitle);
    tasks.add(newTask);
    notifyListeners();
  }

  void toggleCheckbox(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
