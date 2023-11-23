class ImagesModel {
  final String? status;
  final List<Images>? images;
  const ImagesModel({this.status, this.images});
  ImagesModel copyWith({String? status, List<Images>? images}) {
    return ImagesModel(
        status: status ?? this.status, images: images ?? this.images);
  }

  Map<String, Object?> toJson() {
    return {
      'status': status,
      'images':
          images?.map<Map<String, dynamic>>((data) => data.toJson()).toList()
    };
  }

  static ImagesModel fromJson(Map<String, Object?> json) {
    return ImagesModel(
        status: json['status'] == null ? null : json['status'] as String,
        images: json['images'] == null
            ? null
            : (json['images'] as List)
                .map<Images>(
                    (data) => Images.fromJson(data as Map<String, Object?>))
                .toList());
  }

  @override
  String toString() {
    return '''ImagesModel(
                status:$status,
images:${images.toString()}
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is ImagesModel &&
        other.runtimeType == runtimeType &&
        other.status == status &&
        other.images == images;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, status, images);
  }
}

class Images {
  final String? xtImage;
  final String? id;
  const Images({this.xtImage, this.id});
  Images copyWith({String? xtImage, String? id}) {
    return Images(xtImage: xtImage ?? this.xtImage, id: id ?? this.id);
  }

  Map<String, Object?> toJson() {
    return {'xt_image': xtImage, 'id': id};
  }

  static Images fromJson(Map<String, Object?> json) {
    return Images(
        xtImage: json['xt_image'] == null ? null : json['xt_image'] as String,
        id: json['id'] == null ? null : json['id'] as String);
  }

  @override
  String toString() {
    return '''Images(
                xtImage:$xtImage,
id:$id
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Images &&
        other.runtimeType == runtimeType &&
        other.xtImage == xtImage &&
        other.id == id;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, xtImage, id);
  }
}
