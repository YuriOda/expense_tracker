import "package:uuid/uuid.dart";

const uuid = Uuid();

enum Category { food, travel, leisure, work }

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

  final String id;
  final String title;
  // double ... floating-point number 小数点以下の数値を正確にあらわす
  final double amount;
  final DateTime date;
  final Category category;
}
