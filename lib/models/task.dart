class Task{
  int id;
  String title;
  categories category;

  Task({required this.id, required this.title, required this.category});
}

class Task1 implements Task {
  int id;
  String title;
  categories category;
  Task1(
    this.id,
    this.title,
    this.category
  );
}

enum categories { shopping, sport, university }

enum dayOfWeek { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

class RecurringTask implements Task {
  int id;
  String title;
  categories category;
  dayOfWeek dayOfTheWeek;
  RecurringTask(
      this.id,
      this.title,
      this.category,
      this.dayOfTheWeek,
  );


}