// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bloc_and_cubit/page_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitPage extends StatelessWidget {
  const CounterCubitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Cubit"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, CounterCubitState>(
                builder: (context, state) {
              return Text(
                "Counter ${state.contador}",
                style: Theme.of(context).textTheme.headlineMedium,
              );
            }),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () {
                    context.read<CounterCubit>().Incrementar();
                  },
                  icon: Icon(Icons.add),
                  label: Text("1"),
                ),
                SizedBox(width: 20),
                TextButton.icon(
                  onPressed: () {
                    context.read<CounterCubit>().Decrementar();
                  },
                  icon: Icon(Icons.remove),
                  label: Text("1"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
