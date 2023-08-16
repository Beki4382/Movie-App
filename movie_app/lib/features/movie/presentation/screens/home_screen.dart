import 'package:flutter/material.dart';
import 'package:movie_app/features/movie/presentation/widgets/movie_card.dart';
import 'package:movie_app/features/movie/presentation/widgets/trending_movies.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(253, 25, 11, 50),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(252, 77, 75, 95),
          title: const Text("Flutter Movie App"),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => movieCard(),
                      separatorBuilder: (context, _) => const SizedBox(
                        width: 10,
                      ),
                      itemCount: 6,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Trending Movies",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 130,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => TrendingMoviesCards(),
                        separatorBuilder: (context, _) => const SizedBox(
                              width: 10,
                            ),
                        itemCount: 7),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Top Rated Movies",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 130,
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => TrendingMoviesCards(),
                        separatorBuilder: (context, _) => const SizedBox(
                              width: 10,
                            ),
                        itemCount: 7),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
