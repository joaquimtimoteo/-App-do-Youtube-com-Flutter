import 'package:flutter/material.dart';

class subscricoes extends StatefulWidget {
  const subscricoes({super.key});

  @override
  State<subscricoes> createState() => _subscricoesState();
}

class _subscricoesState extends State<subscricoes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Subscrições",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
