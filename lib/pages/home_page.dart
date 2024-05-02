import 'package:flutter/material.dart';
import 'package:flutter_state_mgt_app/counter_model.dart';
import 'package:flutter_state_mgt_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: Theme.of(context).colorScheme.background,
              appBar: AppBar(
                centerTitle: true,
                title: const Text(
                  'Counter App',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                backgroundColor: Colors.deepPurple[300],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  final counter = context.read<Counter>();
                  counter.increment();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //text
                    const Text('You have pushed the button this many times'),
                    //number
                    Text(
                      value.count.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 28),
                    )
                  ],
                ),
              ),
            ));
  }
}
