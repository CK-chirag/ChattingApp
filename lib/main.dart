import 'package:chatting_app/screens/starting_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final kcolorscheme = ColorScheme.fromSeed(seedColor: Colors.black);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: kcolorscheme,
        textTheme: ThemeData().textTheme.copyWith(
          titleLarge: GoogleFonts.dmSans(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          titleMedium: GoogleFonts.dmSans(
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
          titleSmall: GoogleFonts.dmSans(
            fontSize: 12,
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
      ),    
      home: const StartingScreen(),
    )
  );
}