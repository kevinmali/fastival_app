import 'package:fastival_app/detils_page.dart';
import 'package:fastival_app/ganeshji.dart';
import 'package:fastival_app/home.dart';
import 'package:fastival_app/janmasthami.dart';
import 'package:fastival_app/mkar.dart';
import 'package:fastival_app/navaratri.dart';
import 'package:fastival_app/republic.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (ctx) => Homepage(),
        'ganeshji': (ctx) => ganeshji(),
        'detils_page': (ctx) => detiles(),
        'navaratri': (ctx) => navaratri(),
        'janmasthami': (ctx) => janmasthami(),
        'repulic': (ctx) => republic(),
        'mkar': (ctx) => mkar(),
      },
    ),
  );
}
