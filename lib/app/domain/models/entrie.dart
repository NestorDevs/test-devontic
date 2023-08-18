class Entry {
  final String title;
  final String description;
  final String programType;
  final String imageUrl;
  final int releaseYear;

  Entry({
    required this.title,
    required this.description,
    required this.programType,
    required this.imageUrl,
    required this.releaseYear,
  });

  factory Entry.fromJson(Map<String, dynamic> json) {
    return Entry(
      title: json['title'],
      description: json['description'],
      programType: json['programType'],
      imageUrl: json['images']['posterArt']['url'],
      releaseYear: json['releaseYear'],
    );
  }
}
