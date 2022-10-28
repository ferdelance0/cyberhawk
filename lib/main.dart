import 'package:cyberhawk/LoginPage.dart';
import 'package:cyberhawk/bloc/blocfile.dart';
import 'package:cyberhawk/bloc/regbloc.dart';
import 'package:cyberhawk/crimeReport.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MultiBlocProvider(
        providers: [BlocProvider<LoginBloc>(create: (context) => LoginBloc(),
        ),
         BlocProvider<SigupBloc>(create: (context) => SigupBloc())],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Cyber Hawk',
          theme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: "IBM",

            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the3.
            
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          home: const LoginPage(),
        ),
      ),
    );
  }
}
