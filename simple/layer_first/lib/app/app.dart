import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:layer_first/theme/theme.dart';


class App extends StatelessWidget {
  const App({super.key});


  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: String,
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: LayerFirstTheme.light,
      darkTheme: LayerFirstTheme.dark,
      home: Container(),
    );
  }
}

