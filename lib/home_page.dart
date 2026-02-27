import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateman/counter_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterModel>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: AppBar(title: const Text('Counter Provider')),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('You have pushed the button this many times:'),
                Text(
                  '${value.angka}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: value.increment,
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              const SizedBox(width: 16),
              FloatingActionButton(
                onPressed: value.decrement,
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ],
          ),
        );
      },
    );
  }
}
