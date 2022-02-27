class Todo {
  final int id;
  final String name;
  final bool isDone;

  const Todo({
    required this.id,
    required this.name,
    this.isDone = false,
  });
}
