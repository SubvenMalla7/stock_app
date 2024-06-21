import 'package:stock_app/core/constants/regex_constants.dart';

extension Validation on String {
  bool get isValidPassword {
    RegExp passwordRegex = RegexConstants.passwordRegEx;
    return passwordRegex.hasMatch(this);
  }

  bool get isValidEmail {
    RegExp emailRegex = RegexConstants.emailRegEx;
    return emailRegex.hasMatch(this);
  }
}
