import 'package:flutter/material.dart';
import 'package:login_project/login.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': ((context) => Login()),
      },
    ));
