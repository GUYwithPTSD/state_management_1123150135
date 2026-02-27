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
    return Builder(
      builder: (context) {
        final counter = Provider.of<CounterModel>(context);
        return Scaffold(appBar: AppBar(title: const Text('Counter Provider')));
      },
    );
  }
}
