import 'dart:developer';

import 'package:dart_3_features/experiments.dart';
import 'package:dart_3_features/home_state.dart';
import 'package:dart_3_features/user.dart';
import 'package:flutter/material.dart';

void main() {
  //
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              // final experiments = Experimants();
              // final isMatching = experiments.isMatching(['a']);
              // print(isMatching.toString());

              // print(experiments.validate(56).toString());

              // final user = MyUser(
              //   email: 'llll.ggggh@hh.kk',
              //   password: '11111111',
              //   age: '12',
              //   name: 'Clown',
              // );

              // if(user case MyUser(email: '88')){
              //   print('This is user');
              // }else{
              //   print('This is NOT user');
              // }
              HomeState currentState = HomeStateLoading();
              print(currentState.map(
                loading: (loading) => 'Loading',
                loaded: (loaded) => 'Loaded',
                error: (error) => 'Error',
              ));
              currentState = HomeStateLoaded(data: 'CLOWN');
              print(currentState.map(
                loading: (loading) => 'Loading',
                loaded: (loaded) => 'Loaded ${loaded.data}',
                error: (error) => 'Error',
              ));
              currentState = HomeStateError(message: 'THERE WAS CLOWN');
              currentState.map(
                loading: (loading) => print('Loading'),
                loaded: (loaded) => print('Loaded'),
                error: (error) => print('Error ${error.message}'),
              );
            },
            child: const Text(''),
          ),
        ),
      ),
    );
  }
}
