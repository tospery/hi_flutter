abstract class ModelType {
  final String id;

  ModelType(this.id);

  bool get isValid => true;

  ModelType.fromJson(Map<String, dynamic> json);

  Map<String, dynamic> toJson();
}
