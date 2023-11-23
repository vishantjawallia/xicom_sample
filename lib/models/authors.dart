class Authors {
  final int? id;
  final String? name;

  const Authors({
    this.id,
    this.name,
  });

  Authors copyWith({
    int? id,
    String? name,
  }) {
    return Authors(id: id ?? this.id, name: name ?? this.name);
  }

  Map<String, Object?> toJson() {
    return {'id': id, 'name': name};
  }

  static Authors fromJson(Map<String, Object?> json) {
    return Authors(id: json['id'] == null ? null : json['id'] as int, name: json['name'] == null ? null : json['name'] as String);
  }

  static List<Authors> fromJsonList(dynamic json) {
    List<Authors> data = [];
    for (Map<String, dynamic> element in json) {
      data.add(Authors.fromJson(element));
    }

    return data;
  }

  @override
  String toString() {
    return '''Authors(
              id:$id,
              name:$name
              ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Authors && other.runtimeType == runtimeType && other.id == id && other.name == name;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, id, name);
  }
}
