import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lesson_20_flutter/components/text_input_field.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: SignUpScreen(),
  ));
}
