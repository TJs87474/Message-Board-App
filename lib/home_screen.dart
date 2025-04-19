import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mbapp/message_board_details_page.dart';
import 'message_board_details_page.dart';  // Import the message board details page

class HomeScreen extends StatelessWidget {
  // Hardcoded list of message boards with names and Cupertino icons
  final List<Map<String, dynamic>> messageBoards = [
    {'name': 'Music Lovers', 'icon': CupertinoIcons.music_note},
    {'name': 'Politics', 'icon': CupertinoIcons.flag},
    {'name': 'Tv and Movies', 'icon': CupertinoIcons.tv},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message Boards'),
      ),
      body: ListView.builder(
        itemCount: messageBoards.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(messageBoards[index]['icon'], size: 40), // Using CupertinoIcon instead of image
            title: Text(messageBoards[index]['name']!), // Display the message board name
            onTap: () {
              // Navigate to the message board's details page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MessageBoardDetailsPage(
                    boardName: messageBoards[index]['name']!,  // Passing the selected board name
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
