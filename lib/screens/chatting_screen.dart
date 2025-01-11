import 'package:chatting_app/messages.dart';
import 'package:chatting_app/screens/tabs.dart';
import 'package:flutter/material.dart';

class ChattingScreen extends StatefulWidget {
  @override
  _ChattingScreenState createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  final List<Messages> messages = [];

  final TextEditingController _messageController = TextEditingController();

  void _sendMessage() {
    if (_messageController.text.isEmpty) {
      return;
    }

    setState(() {
      messages.add(
        Messages(
            sender: 'You',
            text: _messageController.text.trim(),
            time: _formatCurrentTime(),
            isSentbyMe: true),
      );
    });
    _messageController.clear();
    // FocusScope.of(context).unfocus();
    // _messageController.clear();
  }

  String _formatCurrentTime() {
    final DateTime now = DateTime.now();
    final String formattedTime = '${now.hour}:${now.minute}';
    return formattedTime;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: TabsScreen(),
      ),
      backgroundColor: const Color.fromARGB(255, 46, 47, 56),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        backgroundColor: const Color.fromARGB(255, 46, 47, 56),
        title: const Text(
          'You are chatting with <name>',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final Messages message = messages[index];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: message.isSentbyMe
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    if (!message.isSentbyMe)
                      const Icon(
                        Icons.person,
                        size: 20,
                      ),
                      Text(
                        message.sender,
                        style: const TextStyle(color: Colors.white),
                      ),
                    if (!message.isSentbyMe)
                      const SizedBox(
                        width: 10,
                      ),
                      Flexible(
                        child: Column(
                          crossAxisAlignment: message.isSentbyMe
                              ? CrossAxisAlignment.end
                              : CrossAxisAlignment.start,
                          children: [
                            Text(
                              message.sender,
                              style: TextStyle(
                                color: message.isSentbyMe
                                    ? Colors.blue
                                    : Colors.green,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: message.isSentbyMe
                                    ? Colors.blue.withOpacity(0.2)
                                    : Colors.green.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                message.text,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              message.time,
                              style: const TextStyle(
                                color: Colors.white70,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      )
                  ],
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            color: const Color.fromARGB(255, 0, 0, 0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: const InputDecoration(
                      hintText: 'Type a message...',
                      hintStyle: TextStyle(color: Colors.white70),
                      border: InputBorder.none,
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  color: Colors.greenAccent,
                  onPressed: _sendMessage,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
