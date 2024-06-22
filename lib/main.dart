import 'package:expense_manager/category_screen.dart';
import 'package:expense_manager/home_screen.dart';
import 'package:expense_manager/login_screen.dart';
import 'package:expense_manager/menu.dart';
import 'package:expense_manager/register_screen.dart';
import 'package:expense_manager/graph_screen.dart';
import 'package:expense_manager/splash_screen.dart';
import 'package:expense_manager/trash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:TrashScreen(),
    );
  }
}
     