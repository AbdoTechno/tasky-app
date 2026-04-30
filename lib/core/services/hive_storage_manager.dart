import 'package:hive_ce/hive.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:tasky/core/constants/storage_key.dart';
import 'package:tasky/models/task_model.dart';

class HiveStorageManager {
  static final HiveStorageManager _instance =
      HiveStorageManager._internal();

  // Factory constructor to return singleton instance
  factory HiveStorageManager() {
    return _instance;
  }

  // private constructor
  HiveStorageManager._internal();

  late Box<TaskModel> _taskBox;

  init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(TaskModelAdapter());
    _taskBox = await Hive.openBox<TaskModel>(StorageKey.tasks);
  }

  saveTasks(List<TaskModel> tasks) async {
    await _taskBox.clear();
    await _taskBox.addAll(tasks);
  }

  Future<List<TaskModel>> getTasks() async {
    return _taskBox.values.toList();
  }

  Future<void> deleteTask(int index) async {
    await _taskBox.deleteAt(index);
  }

  Future<void> updateTask(int index, TaskModel task) async {
    await _taskBox.putAt(index, task);
  }

  Future<void> clearTasks() async {
    await _taskBox.clear();
  }
}
