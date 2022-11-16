//31342f1e401f0d2cfff5dd0eb73b9e70737ca3f509020fe18a278ddb2debcb83

import 'package:app_jwt/cubit/my_cubit.dart';
import 'package:app_jwt/screen/homesreen.dart';
import 'package:app_jwt/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: ((context) => getIt<MyCubit>()),
        child: const HomeScreen()),
    );
  }
}
