import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc/example/zdt_cubit.dart';
import 'package:d_bloc/default_function/d_builder.dart';

void main() {
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
          create: (context) => ZDTCubit(),
          child: const MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final watch = context.read<ZDTCubit>();
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: switch (watch.state) {
      //   InitialState() => Container(),
      //   LoadingState() => const Center(
      //       child: Text("Loading"),
      //     ),
      //   SuccessState successState => Center(
      //       child: Text(successState.data as String),
      //     ),
      //   ErrorState() => Container(),
      // },
      body: BlocBuilder(
          bloc: watch,
          builder: dBuilder<String, Object>(
            onSuccess: (data) {
              return Container();
            },
            onError: (error) {
              return Center(child: Text(error.toString()));
            },
          )),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          watch.changeMapStyle();
        },
      ),
    );
  }
}
