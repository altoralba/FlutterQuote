import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(
    MaterialApp(
      home: QuoteList(),
      debugShowCheckedModeBanner: false,
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'Emiya Shirou', text: 'People die if they are killed.'),
    Quote(author: 'Cu Chulainn', text: 'So, you have dodged my undodgeable spear?'),
    Quote(author: 'Tohsaka Rin', text: 'Archers really are made up of archers.'),
    Quote(author: 'Semiramis', text: 'Why does Berserker goes berserk?'),
    Quote(author: 'Emiya Shirou', text: 'When you have a birthday, you celebrate being born.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Fate Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes.map((q) => QuoteCard(
            quote: q,
            delete: () {
              setState(() {
                quotes.remove(q);
              });
            }
          )).toList(),
        ),
      ),
    );
  }
}

