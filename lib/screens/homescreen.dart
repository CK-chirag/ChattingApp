import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 37, 150, 190),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 37, 150, 190),
        title: Text(
          'Choose your chatting type',
          style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.black) ??
              const TextStyle(color: Colors.black),
        ),
      ),
      body: const DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 37, 150, 190),
              Color.fromARGB(255, 37, 150, 190),
              // Color.fromARGB(255, 0, 187, 255),
            ],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('Text Chat'),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: null,
                child: Text('Video Chat'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
