class Quotes {
  final int? id;
  final String? name;
  final int? authorId;
  final int? tagId;
  final int? color;
  const Quotes({
    this.id,
    this.name,
    this.authorId,
    this.tagId,
    this.color,
  });

  Quotes copyWith({
    int? id,
    String? name,
    int? authorId,
    int? tagId,
    int? color,
  }) {
    return Quotes(
      id: id ?? this.id,
      name: name ?? this.name,
      authorId: authorId ?? this.authorId,
      tagId: tagId ?? this.tagId,
      color: color ?? this.color,
    );
  }

  Map<String, Object?> toJson() {
    return {'id': id, 'name': name, 'author_id': authorId, 'tag_id': tagId, 'color': color};
  }

  static Quotes fromJson(Map<String, Object?> json) {
    return Quotes(
        id: json['id'] == null ? null : json['id'] as int,
        name: json['name'] == null ? null : json['name'] as String,
        authorId: json['author_id'] == null ? null : json['author_id'] as int,
        tagId: json['tag_id'] == null ? null : json['tag_id'] as int,
        color: json['color'] == null ? null : json['color'] as int);
  }

  static List<Quotes> fromJsonList(dynamic json) {
    List<Quotes> data = [];
    for (Map<String, dynamic> element in json) {
      data.add(Quotes.fromJson(element));
    }

    return data;
  }

  @override
  String toString() {
    return '''Quotes(
              id:$id,
              name:$name,
              authorId:$authorId,
              tagId:$tagId,
              color:$color
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Quotes && other.runtimeType == runtimeType && other.id == id && other.name == name && other.authorId == authorId && other.tagId == tagId && other.color == color;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, name, authorId, tagId, color);
  }
}
