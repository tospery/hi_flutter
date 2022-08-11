import 'dart:convert';
import 'package:hi_http/src/model.dart';
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

class HiBaseResponse<T> extends ModelType {
  final int code;
  final String message;
  final T? data;

  HiBaseResponse(this.data, {this.code = 0, this.message = ''}) : super(code.toString());

  @override
  String toString() {
    var string = data?.toString() ?? '';
    if (data is Map) {
      string = json.encode(data);
    }
    return '【$code, $message】$string';
  }
  
  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic>? dataJson;
    if (data is ModelType) {
      dataJson = (data as ModelType).toJson();
    }
    return {
      'id': int.parse(id),
      'code': code,
      'message': message,
      'data': dataJson,
    };
  }
  
}

// class HiBaseData<T> 