import 'package:d_bloc/default_function/d_builder.dart';
import 'package:d_bloc/default_function/d_listener.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc/example/feature/test/test_cubit.dart';

import 'feature/test/widget/detail_screen.dart';
import 'feature/test/widget/lorem_item.dart';
import 'model/exception.dart';
import 'model/lorem.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
        listener: dListener(),
        bloc: context.read<TestCubit>(),
        builder: dBuilder<List<Lorem>, MyException>(
          onLoading: () {
            return Container();
          },
          onSuccess: (data) {
            return ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailPage(lorem: data[index]),
                        ));
                  },
                  child: LoremItem(lorem: data[index]),
                );
              },
              itemCount: data.length,
            );
          },
          onError: (error) {
            return Center(child: Text(error.message));
          },
        ));
  }
}
