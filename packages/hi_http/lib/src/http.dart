import 'package:hi_core/hi_core.dart';
import 'package:hi_http/hi_http.dart';

class HiHttp {

  static HiHttp? _instance;
  static HiHttp shared() {
    _instance ??= HiHttp._();
    return _instance!;
  }

  HiHttp._();

  Future fire(HiBaseRequest request) async {
    HiHttpResponse? response;
    Object? error;
    try {
      response = await _send(request);
    } on HiHttpError catch (e) {
      error = e;
      response = e.data;
    } catch(e) {
      error = e;
    }

    // if (response == null) {
    //   log('【HiHttp】response error: $error');
    // }
    log('【HiHttp】response: $response, error: $error');

    var base = response?.data;
    var statusCode = response?.statusCode;
    switch (statusCode) {
      case 200:
        return base;
      case 401:
        throw HiHttpUnloginError();
      case 403:
        throw HiHttpNeedAuthError();
      default:
        throw HiHttpError(statusCode ?? -1, response?.statusMessage ?? '', data: response);
    }

  }
  
  Future<dynamic> _send(HiBaseRequest request) async {
    log('【HiHttp】request: ${request.urlString()}');
    HiDioAdapter adapter = HiDioAdapter();
    return adapter.send(request);
  }

}
