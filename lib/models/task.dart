class Task {
  final int id;
  final String title;
  final String description;
  final String category;
  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.category
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category' : category,
    };
  }
}