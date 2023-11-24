import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerdemo/listview_provider.dart';
import 'package:providerdemo/screenone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ListViewProvider(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.red,
                iconTheme: IconThemeData(color: Colors.white)),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const ScreenOne()),
    );
  }
}
