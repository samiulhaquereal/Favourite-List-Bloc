import 'package:favouriteapp/bloc/favourite_app/favourite_app_bloc.dart';
import 'package:favouriteapp/repository/favourite_repository.dart';
import 'package:favouriteapp/screen/favourite_app_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>FavouriteAppBloc(FavouriteRepository()))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: true,
        ),
        home: const FavouriteAppScreen(),
      ),
    );
  }
}