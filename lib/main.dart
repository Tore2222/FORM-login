import 'package:clonetaxi/src/app.dart';
import 'package:clonetaxi/src/blocs/auth_bloc.dart';
import 'package:clonetaxi/src/resources/widget/homepage.dart';
import 'package:clonetaxi/src/resources/widget/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Myapp(
      // new AuthBloc(),
      MaterialApp(
    home: HomePage(),
  )));
}
