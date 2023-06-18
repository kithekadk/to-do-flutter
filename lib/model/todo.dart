class ToDo {
  String? id;
  String? description;
  bool isDone;

  ToDo({
    required this.id,
    required this.description,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', description: 'Morning Run', isDone: true),
      ToDo(id: '02', description: 'Buy Breakfast', ),
      ToDo(id: '03', description: 'Check Emails', isDone: true),
      ToDo(id: '04', description: 'Team Meeting', isDone: true),
      ToDo(id: '05', description: 'Code',),
      ToDo(id: '06', description: 'Eat',),
    ];
  }
}
