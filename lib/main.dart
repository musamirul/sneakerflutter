import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakerflutter/models/cart.dart';
import 'package:sneakerflutter/pages/intro_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //     home: IntroPage(),
    // );
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        home: IntroPage(),
      ),
    );
  }
}
