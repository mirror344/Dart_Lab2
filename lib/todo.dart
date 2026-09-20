class Todo{
  int id;
  String title;
  bool isDone;
  
  String get status => isDone ? 'выполнено' : 'в процессе';

  static int _counter = 0;
  Todo({required this.title}) : id = ++_counter, isDone = false;

  @override
  String toString() {
  String mark = isDone ? '[x]' : '[ ]';
  return '$mark $id. $title ($status)';
  }

  void complete() {
    isDone = true;
    
  }
}


