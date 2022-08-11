

import 'package:logger/logger.dart';

enum HiLogLevel { verbose, debug, info, warning, error }

class HiLogger {
  final _logger = Logger(printer: SimplePrinter(printTime: true));

  static HiLogger? _instance;
  static HiLogger sharedInstance() {
    _instance ??= HiLogger._();
    return _instance!;
  }

  HiLogger._();

  void log(dynamic message, {HiLogLevel level = HiLogLevel.debug}) {
    _logger.log(_convertLevel(level), message);
  }

  Level _convertLevel(HiLogLevel level) {
    switch (level) {
      case HiLogLevel.verbose:
        return Level.verbose;
      case HiLogLevel.debug:
        return Level.debug;
      case HiLogLevel.info:
        return Level.info;
      case HiLogLevel.warning:
        return Level.warning;
      case HiLogLevel.error:
        return Level.error;
      default:
        return Level.debug;
    }
  }
}

void log(dynamic message, {HiLogLevel level = HiLogLevel.debug}) {
  HiLogger.sharedInstance().log(message, level: level);
}
