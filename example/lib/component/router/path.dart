import 'package:example/component/core/object.dart';

enum HiRouterPath {
  home,
  profile,
  setting,
  about,
  login,
  signin;

  static const String root = '/';

  String get value => '/$instanceName';

  // home(value: '/home'),
  // profile(value: '/profile'),
  // setting(value: '/setting'),
  // about(value: '/about'),
  // login(value: '/login'),
  // signin(value: '/signin');

  // final String value;

  // const HiRouterPath({required this.value});
}
