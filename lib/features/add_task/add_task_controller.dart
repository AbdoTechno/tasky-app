import 'package:flutter/material.dart';
import 'package:tasky/core/services/hive_storage_manager.dart';
import 'package:tasky/models/task_model.dart';

class AddTaskController extends ChangeNotifier {
  final GlobalKey<FormState> key = GlobalKey<FormState>();

  final TextEditingController taskNameController = TextEditingController();

  final TextEditingController taskDescriptionController =
      TextEditingController();

  bool isHighPriority = true;

  void addTask(BuildContext context) async {
    if (key.currentState?.validate() ?? false) {
      final tasks = await HiveStorageManager().getTasks();

      TaskModel model = TaskModel(
        id: tasks.length + 1,
        taskName: taskNameController.text,
        taskDescription: taskDescriptionController.text,
        isHighPriority: isHighPriority,
      );

      tasks.add(model);

      await HiveStorageManager().saveTasks(tasks);

      Navigator.of(context).pop(true);
    }
  }

  void toggle(bool value) {
    isHighPriority = value;
    notifyListeners();
  }
}
