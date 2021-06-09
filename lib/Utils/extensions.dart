import 'package:flt_expense/Utils/ui_config.dart';

extension UIConfigAspect on double {
  double? toWidth() {
    return UIConfig.getWidth(this);
  }

  double? toHeight() {
    return UIConfig.getHeight(this);
  }
}

extension UIConfigAspectInt on int {
  int toWidth() {
    return UIConfig.getWidth(this.toDouble())!.toInt();
  }

  int toHeight() {
    return UIConfig.getHeight(this.toDouble())!.toInt();
  }
}
