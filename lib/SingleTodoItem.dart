import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SingleTodoItem extends StatelessWidget {
  final int index;
  final String id;
  final String title;
  final DateTime dateTime;
  final Function(String) deleteTodo;

  SingleTodoItem({
    required this.index,
    required this.id,
    required this.title,
    required this.dateTime,
    required this.deleteTodo,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        title: Text(title),
        subtitle: Text(DateFormat('dd-MM-yyyy HH:mm').format(dateTime)),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () => deleteTodo(id),
          color: Colors.red,
        ),
      ),
    );
  }
}
