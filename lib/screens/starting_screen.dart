import 'package:chatting_app/screens/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255,37, 150, 190),
              Color.fromARGB(255, 0, 187, 255),
            ]
          )
        ),
        child: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Homescreen()),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image-removebg-preview.png',
                  width: 30,
                  height: 30,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  'Chatting App',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
