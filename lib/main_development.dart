import 'package:stock_app/app/app.dart';
import 'package:stock_app/bootstrap.dart';
import 'package:stock_app/core/singletons/baseurl_singleton.dart';

void main() {
  BaseURL.getInstance.setBaseUrl('https://run.mocky.io/v3');
  bootstrap(() => const App());
}
