import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:covid_19_job/pages/login_register/login.dart';
import 'package:covid_19_job/pages/login_register/verify_otp.dart';
import 'package:covid_19_job/pages/login_register/login_using_password.dart';
import 'package:covid_19_job/pages/login_register/forgot_password.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    runApp(MaterialApp(
      routes: {
        '/': (context)=>Login(),
        '/verify-otp': (context)=> VerifyOtp(),
        '/login-password': (context)=> LoginUsingPassword(),
        '/forgot-password': (context)=> ForgotPassword(),
      },
    ));
}