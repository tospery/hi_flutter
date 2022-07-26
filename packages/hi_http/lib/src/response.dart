import 'dart:convert';
import 'package:hi_http/src/request.dart';

class HiHttpResponse {
  final int statusCode;
  final String statusMessage;
  final HiBaseResponse? data;
  final dynamic extra;
  final HiBaseRequest request;

  HiHttpResponse(
    this.request, {
    this.statusCode = 200,
    this.statusMessage = '成功',
    this.data,
    this.extra,
  });

  @override
  String toString() {
    return '【$statusCode, $statusMessage】${data.toString()}';
  }
}

class HiBaseResponse<T> {
  final int code;
  final String message;
  final T? data;

  HiBaseResponse(this.data, {this.code = 200, this.message = ''});

  @override
  String toString() {
    var string = data?.toString() ?? '';
    if (data is Map) {
      string = json.encode(data);
    }
    return '【$code, $message】$string';
  }
}
