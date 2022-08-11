import 'package:hi_http/hi_http.dart';

abstract class HiBaseAdapter {
  Future<HiHttpResponse> send(HiBaseRequest request);
}

class HiMockAdapter extends HiBaseAdapter {
  @override
  Future<HiHttpResponse> send(HiBaseRequest request) {
    return Future.delayed(const Duration(milliseconds: 1000), () {
      return HiHttpResponse(
        request,
        data: HiBaseResponse(null),
      );
    });
  }
}

class HiDioAdapter extends HiBaseAdapter {
  @override
  Future<HiHttpResponse> send(HiBaseRequest request) async {
    Response? response;
    DioError? error;
    var options = Options(headers: request.header);
    try {
      var method = request.method();
      switch (method) {
        case HiHttpMethod.get:
        response = await Dio().get(request.urlString(), options: options);
          break;
        case HiHttpMethod.post:
        response = await Dio().post(request.urlString(), data: request.parameter, options: options);
          break;
        case HiHttpMethod.delete:
        response = await Dio().delete(request.urlString(), options: options);
          break;
      }
    } on DioError catch (e) {
      error = e;
      response = e.response;
    }

    if (error != null) {
      throw HiHttpError(response?.statusCode ?? -1, error.toString(), data: await buildResponse(request, response));
    }
    return buildResponse(request, response);
  }
  
  Future<HiHttpResponse> buildResponse<T>(HiBaseRequest request, Response? response) {
    return Future.value(
      HiHttpResponse(
        request,
        statusCode: response?.statusCode ?? -1,
        statusMessage: response?.statusMessage ?? '',
        data: response?.data,
        extra: response,
      )
    );
  }
}