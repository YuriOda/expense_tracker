import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  // ショートカット：createState
  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  // ショートカット：build
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
      children: [Text("The chart"), Text("Expense list")],
    ));
  }
}
