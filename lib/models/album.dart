import 'dart:convert';

class Album {
  String title;
  String cover;
  Album({
    required this.title,
    required this.cover,
  });

  Album copyWith({
    String? title,
    String? cover,
  }) {
    return Album(
      title: title ?? this.title,
      cover: cover ?? this.cover,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'cover': cover,
    };
  }

  factory Album.fromMap(Map<String, dynamic> map) {
    return Album(
      title: map['title'],
      cover: map['cover'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Album.fromJson(String source) => Album.fromMap(json.decode(source));

  @override
  String toString() => 'Album(title: $title, cover: $cover)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Album &&
      other.title == title &&
      other.cover == cover;
  }

  @override
  int get hashCode => title.hashCode ^ cover.hashCode;
}
