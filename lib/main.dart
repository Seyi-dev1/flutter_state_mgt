import 'package:flutter/material.dart';
import 'package:flutter_state_mgt_app/counter_model.dart';
import 'package:flutter_state_mgt_app/pages/home_page.dart';
import 'package:flutter_state_mgt_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Counter(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
