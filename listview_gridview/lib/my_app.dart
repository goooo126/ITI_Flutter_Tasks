import 'package:flutter/material.dart';
import 'package:listview_gridview/main_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(colorScheme:const ColorScheme.light(primary:  Colors.blue)),
      home:  const MainScreen(),
    );
  }
}