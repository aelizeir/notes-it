const String tableTodo = 'todos';

class TodoFields {
  static final List<String> values = [
    /// Add all fields
    id, userid, isImportant, title, description, time
  ];

  static const String id = '_id';
  static const String userid = '_userid';
  static const String isImportant = 'isImportant';
  static const String title = 'title';
  static const String description = 'description';
  static const String time = 'time';
}

class Todo {
  final int? id;
  final int? userid;
  final bool isImportant;
  final String title;
  final String description;
  final DateTime createdTime;

  const Todo({
    this.id,
    this.userid,
    required this.isImportant,
    required this.title,
    required this.description,
    required this.createdTime,
  });

  Todo copy({
    int? id,
    int? userid,
    bool? isImportant,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      Todo(
        id: id ?? this.id,
        userid: userid ?? this.userid,
        isImportant: isImportant ?? this.isImportant,
        title: title ?? this.title,
        description: description ?? this.description,
        createdTime: createdTime ?? this.createdTime,
      );

  static Todo fromJson(Map<String, Object?> json) => Todo(
    id: json[TodoFields.id] as int?,
    userid: json[TodoFields.userid] as int?,
    isImportant: json[TodoFields.isImportant] == 1,
    title: json[TodoFields.title] as String,
    description: json[TodoFields.description] as String,
    createdTime: DateTime.parse(json[TodoFields.time] as String),
  );

  Map<String, Object?> toJson() => {
    TodoFields.id: id,
    TodoFields.userid: userid,
    TodoFields.title: title,
    TodoFields.isImportant: isImportant ? 1 : 0,
    TodoFields.description: description,
    TodoFields.time: createdTime.toIso8601String(),
  };
}