class Movie {
  final int id;
  final String title;
  final String? imageUrl;
  final String summary;
  final double? rating;
  final String? officialSite;

  Movie({
    required this.id,
    required this.title,
    this.imageUrl,
    required this.summary,
    this.rating,
    this.officialSite,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    final show = json['show'];
    return Movie(
      id: show['id'] ?? 0,
      title: show['name'] ?? 'No Title',
      imageUrl: show['image']?['medium'],
      summary: show['summary'] != null
          ? show['summary'].replaceAll(RegExp(r'<[^>]*>|&[^;]+;'), '') 
          : 'No Summary',
      rating: show['rating']?['average']?.toDouble(),
      officialSite: show['officialSite'],
    );
  }
}
