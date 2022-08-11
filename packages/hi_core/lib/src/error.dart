class HiError implements Exception {
  final int code;
  final String message;
  final dynamic data;

  HiError(this.code, this.message, {this.data});
}