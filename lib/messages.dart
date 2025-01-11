import 'package:flutter/material.dart';

class Messages {
  final String sender;
  final String text;
  final String time;
  final bool isSentbyMe;

  Messages({
    required this.sender,
    required this.text,
    required this.time,
    required this.isSentbyMe,
  });
}
