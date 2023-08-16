import 'package:flutter/material.dart';

class MovieDetailCard extends StatelessWidget {
  const MovieDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.amber),
          ),
          const Text("Name of movie"),
          const Text("detail of the movie")
        ],
      )),
    );
  }
}
