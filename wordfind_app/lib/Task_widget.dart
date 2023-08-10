import 'dart:math';
import 'package:flutter/material.dart';
import 'package:wordfind_app/model/char_model.dart';
import 'package:wordfind_app/model/task_model.dart';
import 'package:word_search_safety/word_search_safety.dart';

class TaskWidget extends StatefulWidget {
  const TaskWidget(this.size,this.listQuestions,{super.key});
  final Size size;
  final List<TaskModel>listQuestions;


  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
