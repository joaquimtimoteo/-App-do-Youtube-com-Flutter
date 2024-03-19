import 'package:appyoutube/Api.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    Api api = Api();
    api.pesquisar("");
    return Container(
      child: Center(
        child: Text(
          "Inicio",
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
