import 'package:flutter/material.dart';
import 'package:covid_19_job/pages/login_register/login.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      '/': (context)=>Login(),
    },
  ));
}