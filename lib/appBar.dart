import 'package:flutter/material.dart';
import '../funcoes.dart';

class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        ),
        color: const Color.fromARGB(255, 0, 0, 0),
      ),
      child: AppBar(
        title: Text(
          'Black Jack',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(0, 134, 88, 88),
        actions: [
          IconButton(
            icon: Icon(
              Icons.star,
              color: Colors.grey,
            ),
            onPressed: () {
              segredo(context);
            },
          ),
        ],
      ),
    );
  }
}
