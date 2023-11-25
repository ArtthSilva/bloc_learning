import 'package:bloc_learning/page_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBlocPage extends StatelessWidget {
  const CounterBlocPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter bloc',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  'Contador ${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrement());
                  },
                  icon: const Icon(
                    Icons.add,
                  ),
                  label: const Text(
                    'adicionar',
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                   context.read<CounterBloc>().add(CounterDecrement());
                  },
                  icon: const Icon(
                    Icons.remove,
                  ),
                  label: const Text(
                    'remover',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
