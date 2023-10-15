import 'package:flutter/material.dart';
import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: Colors.deepPurple);

void main() {
  runApp(
    MaterialApp(
      // theme: ThemeData(useMaterial3: true),
      theme: ThemeData().copyWith(
        useMaterial3: true,
        // scaffoldBackgroundColor: Color.fromARGB(255, 185, 205, 210)),
        colorScheme: kColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kColorScheme.onPrimaryContainer,
          foregroundColor: kColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.normal,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 14,
              ),
            ),
      ),
      home: const Expenses(),
    ),
  );
}
