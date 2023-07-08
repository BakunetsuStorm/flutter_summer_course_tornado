import 'package:flutter/material.dart';

void main() {
  const text = Text('HelloFlutter');
  const center = Center(
    child: text,
  );
  const materialApp = MaterialApp(home: center); // class material app

  runApp(MaterialApp(
    title: "Text",
    home: Scaffold(
      body: const Center(child: Text('Hello')),
      appBar: AppBar(
          title: const Text('Hello')),
    ),
  ));
}
