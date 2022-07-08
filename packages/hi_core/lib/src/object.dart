extension HiCoreObjectEx on Object {
  String get rawValue => toString().split('.').last;
}
