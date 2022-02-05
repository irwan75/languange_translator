import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:languanges_translator/page1.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'model/person.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  // Hive.registerAdapter(PersonAdapter());
  await Hive.openBox('myBox');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
    );
  }
}
