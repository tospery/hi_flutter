enum HiHttpMethod { get, post, delete }

abstract class HiBaseRequest {
  var useHttps = true;
  var pathExtra = '';
  var parameter = <String, String>{};
  var header = <String, dynamic>{};

  String host();
  String? path();
  HiHttpMethod method();
  bool needLogin();

  String urlString() {
    Uri uri;
    var fullpath = path() ?? '';

    if (pathExtra.isNotEmpty) {
      if (!fullpath.endsWith('/')) {
        fullpath += '/';
      }
      fullpath += pathExtra;
    }

    if (useHttps) {
      uri = Uri.https(host(), fullpath, parameter);
    } else {
      uri = Uri.http(host(), fullpath, parameter);
    }

    if (needLogin()) {
      // 保存token
    }

    return uri.toString();
  }

  HiBaseRequest add(String k, Object? v) {
    parameter[k] = v.toString();
    return this;
  }

  HiBaseRequest set(String k, Object? v) {
    header[k] = v.toString();
    return this;
  }
}
