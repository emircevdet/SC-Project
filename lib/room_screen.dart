import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(ChatApp());
}

// Main chat application widget.
class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Setting UI mode and overlays for the app.
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);

    return MaterialApp(
      title: 'Chat UI',
      debugShowCheckedModeBanner: false, // Disabling the debug banner for cleaner UI.
      theme: ThemeData(
        primarySwatch: Colors.red, // Setting the primary color theme.
      ),
      home: ChatScreen(), // Starting screen of the app.
    );
  }
}

// Chat screen widget of the app.
class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true; // Handling back button pressed action.
      },
      child: Scaffold(
        backgroundColor: Colors.red.shade200, // Setting background color of the chat screen.
        appBar: AppBar(
          backgroundColor:Colors.red.shade300, // AppBar background color.
          elevation: 1,
          centerTitle: true,
          title: Chip(
            backgroundColor: Colors.white,
            label: Text(
              'KOTLIN', // Chat screen title.
              style: TextStyle(
                color: Colors.red.shade200,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(), // Handling AppBar back button action.
          ),
        ),
        body: ChatBody(), // Body of the chat screen containing messages and input field.
      ),
    );
  }
}

// Body widget of the chat screen.
class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Scrollbar(
            thickness: 6.0, // Scrollbar thickness.
            radius: Radius.circular(5.0), // Scrollbar corner radius.
            child: ListView.builder(
              itemCount: 50, // Increased number of messages for demonstration.
              itemBuilder: (context, index) {
                bool isOwnMessage = index % 2 == 0; // Alternating message ownership for demonstration.
                return ChatMessageTile(
                  isOwnMessage: isOwnMessage,
                  messageContent: "Message content ${index + 1}", // Unique content for each message.
                  messageTimestamp: "10 minutes ago",
                  username: "@user${index + 1}", // Unique username for each message.
                );
              },
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          color: Colors.white, // Container color for input area.
          child: SafeArea(
            child: Row(
              children: <Widget>[
                Expanded(
                  // TextField for typing messages.
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.red.shade200),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Colors.red.shade400),
                  onPressed: () {}, // Functionality for send button.
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Widget to display a single chat message.
class ChatMessageTile extends StatelessWidget {
  final bool isOwnMessage;
  final String messageContent;
  final String messageTimestamp;
  final String username;

  const ChatMessageTile({
    Key? key,
    required this.isOwnMessage,
    required this.messageContent,
    required this.messageTimestamp,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Aligning the message tile to the left or right based on the sender.
    return Align(
      alignment: isOwnMessage ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.white, // Background color of the message tile.
          borderRadius: BorderRadius.circular(20), // Border radius for rounded corners.
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundColor: Colors.red.shade200, // Background color of avatar.
              child: Text(username.substring(0, 1).toUpperCase()), // Displaying first letter of username in avatar.
            ),
            SizedBox(width: 8), // Space between avatar and message content.
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    username,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red.shade400,
                    ),
                  ),
                  Text(
                    messageContent,
                    style: TextStyle(
                      color: Colors.red.shade400,
                    ),
                  ),
                  Text(
                    messageTimestamp,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
