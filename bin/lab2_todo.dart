import 'dart:io';
import 'package:lab2_todo/todo.dart';

void printMenu() {
  print(' ');
  print('ToDo список');
  print('add - добавить задачу');
  print('list - показать все задачи');
  print('done - отменить выполнение');
  print('delete - удалить задачу');
  print('exit - выйти');
}

void addTodo(List<Todo> todos) {
  stdout.write('Название задачи:');
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print('Ошибка: название не может быть пустым');
    return;
  }
  int newId = todos.isEmpty ? 1 : todos.last.id +1;
  todos.add(Todo(id: newId, title: input.trim()));
  print('Задача добавлена!');
}

void listTodos(List<Todo> todos) {
  if (todos.isEmpty) {
    print('Список задач пуст');
    return;
  }
  print(' ');
  for (var todo in todos) {
    print(todo);
  }
}

void completeTodo(List<Todo> todos) {
  
}



void main(List<String> arguments) {
  stdout.write('Введите что-нибудь');
  String? input = stdin.readLineSync();
  print('Вы ввели: $input');

}

