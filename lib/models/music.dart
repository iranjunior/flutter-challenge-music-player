import 'dart:convert';


class Music {
  String title;
  String artist;
  String image;
  Music({
    required this.title,
    required this.artist,
    required this.image,
  });

  Music copyWith({
    String? title,
    String? artist,
    String? image,
  }) {
    return Music(
      title: title ?? this.title,
      artist: artist ?? this.artist,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'artist': artist,
      'image': image,
    };
  }

  factory Music.fromMap(Map<String, dynamic> map) {
    return Music(
      title: map['title'],
      artist: map['artist'],
      image: map['image'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Music.fromJson(String source) => Music.fromMap(json.decode(source));

  @override
  String toString() => 'Music(title: $title, artist: $artist, image: $image)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Music &&
      other.title == title &&
      other.artist == artist &&
      other.image == image;
  }

  @override
  int get hashCode => title.hashCode ^ artist.hashCode ^ image.hashCode;
}
