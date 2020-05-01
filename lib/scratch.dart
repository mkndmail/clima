import 'dart:io';

void main() {
//  performTasks();
}

void performTasks() async {
  task1();
  print(task2());
//  String task2Result = await task2();
//  task3(task2Result);
}

Future<String> task2() async {
  Duration threeSeconds = Duration(seconds: 5);
  String result;
  await Future.delayed(threeSeconds, () {
    result = "Task 2 data";
    print('Task 2 complete');
  });
  return result;
}

void task3(String inputFromTask2) {
  String result = 'task 3 data';
  print('Task 3 complete with $inputFromTask2');
}

void task1() {
  String result = 'Task1 data';
  print("Task 1 complete");
}
