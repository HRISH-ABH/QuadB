import 'package:flutter/material.dart';
import 'package:movieapp/model/movie.modal.dart';


class MovieCard extends StatelessWidget {
  final Movie movie;
  final VoidCallback onTap;

  const MovieCard({required this.movie, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: movie.imageUrl!.isNotEmpty ? Image.network(movie.imageUrl!) : SizedBox.shrink(),
      title: Text(movie.title),
      subtitle: Text(movie.summary, maxLines: 2, overflow: TextOverflow.ellipsis),
      onTap: onTap,
    );
  }
}
