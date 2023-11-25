import 'package:bloc_learning/page_bloc/bloc/counter_bloc.dart';
import 'package:bloc_learning/page_bloc/counter_bloc_page.dart';
import 'package:bloc_learning/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(
    home: const HomePage(),
    routes: {
      '/bloc': (_) => BlocProvider(
            create: (_) => CounterBloc(),
            child: const CounterBlocPage(),
          ),
    },
  ));
}
