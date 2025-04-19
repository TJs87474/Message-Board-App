import 'package:flutter/material.dart';

class MessageBoardDetailsPage extends StatelessWidget {
  final String boardName;

  MessageBoardDetailsPage({required this.boardName});

  @override
  Widget build(BuildContext context) {
    // Hardcoded messages for demo purposes
    final List<Map<String, String>> messages = [
      {'username': 'Abby', 'message': 'Testing the board!', 'date': '2025-04-18 10:00'},
      {'username': 'Ross', 'message': 'Hello!', 'date': '2025-02-18 11:00'},
      {'username': 'Sarah', 'message': 'Whats up!', 'date': '2025-01-18 12:00'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(boardName),  // The title will be the name of the selected board
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(messages[index]['message']!),
            subtitle: Text('${messages[index]['username']} - ${messages[index]['date']}'),
          );
        },
      ),
    );
  }
}
