import 'package:expense_tracker/expenses_list.dart';
import 'package:flutter/material.dart';
import "package:expense_tracker/models/expense.dart";

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  // ショートカット：createState
  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Flutter Course",
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "Cinema",
        amount: 15.89,
        date: DateTime.now(),
        category: Category.leisure)
  ];
  // ショートカット：build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Text("The chart"),
        Expanded(child: ExpensesList(expenses: _registeredExpenses)),
      ],
    ));
  }
}
