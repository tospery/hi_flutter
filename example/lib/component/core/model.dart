abstract class ModelType {
  final String id;

  ModelType(this.id);

  bool get isValid => true;

  factory ModelType.fromJson(Map<String, dynamic> json) {
    throw UnimplementedError();
  }

  Map<String, dynamic> toJson();
}
