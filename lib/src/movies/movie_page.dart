import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'movie_cubit.dart';
import 'movie_state.dart';

class MoviesPage extends StatefulWidget {
  @override
  _MoviesPageState createState() => _MoviesPageState();
}

class _MoviesPageState extends State<MoviesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portsmouth Centerboard DPN'),
      ),
      body: BlocBuilder<MoviesCubit, MoviesState>(
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ErrorState) {
            return Center(
              child: Icon(Icons.close),
            );
          } else if (state is LoadedState) {
            final movies = state.movies;

            return ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  isThreeLine: false,
                  title: Text(
                    movies[index].title,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  subtitle: Text(
                    movies[index].dpn,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: Container(
                    width: 100.0,
                    height: 50.0,
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'Name:',
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Text(
                            'DPN:',
                            style: TextStyle(fontSize: 20.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Image.asset(
                  //   'lib/images/boat_name.png',
                  //   scale: 1,
                  //   height: 50.0,
                  //   width: 50.0,
                  // ),
                  // CircleAvatar(
                  //     // backgroundImage: NetworkImage(movies[index].urlImage),
                  //     ),
                  // ),
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
