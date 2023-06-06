import 'package:clonetaxi/src/app.dart';
import 'package:clonetaxi/src/blocs/auth_bloc.dart';
import 'package:clonetaxi/src/resources/widget/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() {
  runApp(Myapp(
      new AuthBloc(),
      MaterialApp(
        home: LoginPage(),
      )));
}




// class Myapp extends StatelessWidget {
//   const Myapp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home :LoginPage(),
//     );
//   }
//   static Myapp of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<Myapp>();
//   }
// }