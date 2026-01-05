import 'package:flutter/widgets.dart';

class DeviceTypeUtil {
  DeviceTypeUtil._();

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width > 600 &&
        MediaQuery.of(context).size.width < 900;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width > 900;
  }
}
