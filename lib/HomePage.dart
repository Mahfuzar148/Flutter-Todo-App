import 'package:flutter/material.dart';

import 'Todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Todo> todoData = [
    Todo(
      id: "todo_1",
      title: "Sample To-Do Item",
      time: DateTime.now(),
    ),
    // Add more todos as needed
  ];

  final textController = TextEditingController();

  void _addTodo() {
    if (textController.text.isEmpty) return;

    setState(() {
      Todo todo = Todo(
        id: DateTime.now().toString(),
        title: textController.text,
        time: DateTime.now(),
      );
      todoData.add(todo);
      textController.clear();
    });
  }

  void deleteTodo(String id) {
    setState(() {
      todoData.removeWhere((element) => element.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ToDo App",
          style: TextStyle(
            fontFamily: 'Roboto', // Custom font
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple, // Vibrant color
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: textController,
              decoration: InputDecoration(
                hintText: "Add a new task...",
                suffixIcon: IconButton(
                  onPressed: _addTodo,
                  icon: Icon(Icons.add_circle_outline),
                  color: Colors.deepPurple, // Matching color
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: todoData.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(
                        todoData[index].title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        "Added on ${todoData[index].time}",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () => deleteTodo(todoData[index].id),
                        icon: Icon(
                          Icons.delete,
                          color: Colors.red, // Danger color
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
