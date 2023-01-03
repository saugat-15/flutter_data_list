import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  // const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    'Be yourself, everyone else is already taken',
    'I have nothing to declare except my genius',
    'the truth is rarely pure and never simple',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      child: Text(quote),
                      // color: Colors.redAccent,
                    ),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
