class Tags {
  final int? id;
  final String? name;

  const Tags({
    this.id,
    this.name,
  });

  Tags copyWith({int? id, String? name}) {
    return Tags(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, Object?> toJson() {
    return {'id': id, 'name': name};
  }

  static Tags fromJson(Map<String, Object?> json) {
    return Tags(id: json['id'] == null ? null : json['id'] as int, name: json['name'] == null ? null : json['name'] as String);
  }

  static List<Tags> fromJsonList(dynamic json) {
    List<Tags> data = [];
    for (Map<String, dynamic> element in json) {
      data.add(Tags.fromJson(element));
    }

    return data;
  }

  @override
  String toString() {
    return '''Tags(
              id:$id,
              name:$name
              ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Tags && other.runtimeType == runtimeType && other.id == id && other.name == name;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, name);
  }
}
