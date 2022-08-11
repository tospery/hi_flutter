extension HiCoreObjectEx on Object {
  String get instanceName => toString().split('.').last;
  // static String get className => toString().split('.').last;
}
