import "package:flutter/material.dart";
import 'package:moor_sqlite/data/moor_database.dart';
import 'package:moor_sqlite/ui/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      builder: (_) => AppDatabase(),
      child: MaterialApp(
        title: "Material App",
        home: HomePage(),
      ),
    );
  }
}
