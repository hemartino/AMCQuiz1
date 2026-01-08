import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp( // #1 Root Material App:this iw where it it set the app theme, and title. 
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold( // #2 Scaffold: it Provides the basic pag layout. 
    appBar: AppBar(title: const Text('All Widgets')), // #3 AppBar : The top navigation bar of the app it put the title and contain actions (icons, buttons).
    body: Center( // #7 Center: Simplifies alignment without manual padding.
      child: Container( // #8 Container : A flexible box widget for styling and layout often used to design UI sections. 
        padding: const EdgeInsets.all(20),
        child: Column( // #6 Column : Arranges widgets vertically commonly used for forms and layouts. 
          children: [
            Row(  // #5 Row : Arranges widgets horizontally.
              children: [
                const Icon(Icons.star),
                const Text('Flutter'),  // #4 Text : Displays text on the screen. 
              ],
            ),
          ],
        ),
      ),
    ),
  );
}